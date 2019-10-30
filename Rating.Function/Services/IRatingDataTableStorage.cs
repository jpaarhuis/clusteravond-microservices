using System.Collections.Generic;
using System.Threading.Tasks;
using Rating.Function.Models;

namespace Rating.Function.Services
{
    public interface IRatingDataTableStorage
    {
        Task AddOrUpdateRating(Models.Rating rating);
        Task<IEnumerable<Models.Rating>> GetRatings();
        Task Init();
    }
}