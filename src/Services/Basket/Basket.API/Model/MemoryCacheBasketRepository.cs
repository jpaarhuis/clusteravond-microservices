using Microsoft.Extensions.Caching.Memory;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Microsoft.eShopOnContainers.Services.Basket.API.Model
{
    public class MemoryCacheBasketRepository : IBasketRepository
    {
        private readonly IMemoryCache _cache;

        public MemoryCacheBasketRepository(IMemoryCache memoryCache)
        {
            _cache = memoryCache;
            if (_cache.Get(0) == null)
            {
                _cache.Set(0, new Dictionary<string, string>());
            }
        }

        public Dictionary<string, string> Cache => _cache.Get<Dictionary<string, string>>(0);

        public async Task<bool> DeleteBasketAsync(string id)
        {
            return await Task.Run(() =>
            {
                try
                {
                    Cache.Remove(id);
                }
                catch (System.Exception)
                {
                    return false;
                }
                return true;
            });
        }

        public IEnumerable<string> GetUsers()
        {
            return Cache.Select(a => a.Key).ToList();
        }

        public async Task<CustomerBasket> GetBasketAsync(string customerId)
        {
            var data = await Task.Run(() => Cache.Any(c => c.Key == customerId) ? Cache[customerId] : null);

            if (string.IsNullOrEmpty(data))
            {
                return null;
            }

            return JsonConvert.DeserializeObject<CustomerBasket>(data);
        }

        public async Task<CustomerBasket> UpdateBasketAsync(CustomerBasket basket)
        {
            var created = Cache.Any(c => c.Key == basket.BuyerId);

            if (!created)
            {
                Cache.Add(basket.BuyerId, null);
            }

            Cache[basket.BuyerId] = JsonConvert.SerializeObject(basket);

            return await GetBasketAsync(basket.BuyerId);
        }
    }
}
