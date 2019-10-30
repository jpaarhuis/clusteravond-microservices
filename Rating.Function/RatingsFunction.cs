using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Rating.Function.Services;
using System.Linq;

namespace Rating.Function
{
    using Models;

    public class RatingsFunction
    {
        private readonly IIpAddressService ipAddressService;
        private readonly IRatingDataTableStorage ratingDataTableStorage;

        public RatingsFunction()
        {
            ipAddressService = new IpAddressService();
            ratingDataTableStorage = new RatingDataTableStorage();
        }

        [FunctionName("average-ratings")]
        public async Task<IActionResult> AverageRatings(
        [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = null)] HttpRequest req,
        ILogger log)
        {
            log.LogInformation("Average ratings function processed a request.");

            await ratingDataTableStorage.Init();
            var ratings = await ratingDataTableStorage.GetRatings();

            if (ratings.Count() == 0)
            {
                return new NotFoundResult();
            }

            var result = ratings.GroupBy(rating => rating.ItemId).Select(group => new Rating()
            {
                ItemId = group.Key,
                RatingValue = group.Average(ratingInGroup => ratingInGroup.RatingValue)
            });

            return new OkObjectResult(result);
        }

        [FunctionName("rating")]
        public async Task<IActionResult> Rating(
        [HttpTrigger(AuthorizationLevel.Anonymous, "post", Route = null)] HttpRequest req,
        ILogger log)
        {
            log.LogInformation("Rating function processed a post.");

            string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
            var rating = JsonConvert.DeserializeObject<Rating>(requestBody);
            if (rating.ItemId == null)
            {
                return new BadRequestObjectResult("Please pass a valid rating object as json body");
            }
            rating.UserIp = this.ipAddressService.GetIpFromRequestHeaders(req);
            if (string.IsNullOrEmpty(rating.UserIp))
            {
                rating.UserIp = "0.0.0.0";
            }
            
            await ratingDataTableStorage.Init();
            await ratingDataTableStorage.AddOrUpdateRating(rating);

            return new OkResult();
        }
    }
}
