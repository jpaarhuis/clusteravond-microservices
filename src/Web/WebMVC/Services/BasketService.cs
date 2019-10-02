using Microsoft.eShopOnContainers.WebMVC.ViewModels;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using WebMVC.Services.ModelDTOs;

namespace Microsoft.eShopOnContainers.WebMVC.Services
{
    public class BasketService : IBasketService
    {
        private readonly IOptions<AppSettings> _settings;
        private readonly HttpClient _apiClient;

        public BasketService(HttpClient httpClient, IOptions<AppSettings> settings)
        {
            _apiClient = httpClient;
            _settings = settings;
        }

        public async Task<Basket> GetBasket(ApplicationUser user)
        {
            return await getBasketAsync(user.Id);
        }

        private async Task<Basket> getBasketAsync(string basketId)
        {
            var responseString = await _apiClient.GetStringAsync($"{_settings.Value.BasketUrl}/api/v1/basket/{basketId}");

            return string.IsNullOrEmpty(responseString) ?
                new Basket() { BuyerId = basketId } :
                JsonConvert.DeserializeObject<Basket>(responseString);
        }

        private async Task<CatalogItem> getCatalogItemAsync(int catalogItemId)
        {
            var responseString = await _apiClient.GetStringAsync($"{_settings.Value.CatalogUrl}/api/v1/catalog/items/{catalogItemId}");

            return JsonConvert.DeserializeObject<CatalogItem>(responseString);
        }

        public async Task<Basket> UpdateBasket(Basket basket)
        {
            var basketContent = new StringContent(JsonConvert.SerializeObject(basket), System.Text.Encoding.UTF8, "application/json");

            var response = await _apiClient.PostAsync($"{_settings.Value.BasketUrl}/api/v1/basket", basketContent);

            response.EnsureSuccessStatusCode();

            return basket;
        }

        public async Task Checkout(BasketDTO basket)
        {
            var uri = $"{_settings.Value.BasketUrl}/api/v1/basket/checkout";

            var basketContent = new StringContent(JsonConvert.SerializeObject(basket), System.Text.Encoding.UTF8, "application/json");

            var response = await _apiClient.PostAsync(uri, basketContent);

            response.EnsureSuccessStatusCode();
        }

        public async Task<Basket> SetQuantities(ApplicationUser user, Dictionary<string, int> quantities)
        {
            // Retrieve the current basket
            var currentBasket = await getBasketAsync(user.Id);

            // Update with new quantities
            var updates = quantities.Select(kvp => new
            {
                BasketItemId = kvp.Key,
                NewQty = kvp.Value
            });

            foreach (var update in updates)
            {
                var basketItem = currentBasket.Items.SingleOrDefault(bitem => bitem.Id == update.BasketItemId);
                if (basketItem == null)
                {
                    return currentBasket;
                }
                basketItem.Quantity = update.NewQty;
            }

            var basketContent = new StringContent(JsonConvert.SerializeObject(currentBasket), System.Text.Encoding.UTF8, "application/json");

            var response = await _apiClient.PostAsync($"{_settings.Value.BasketUrl}/api/v1/basket", basketContent);

            response.EnsureSuccessStatusCode();

            var jsonResponse = await response.Content.ReadAsStringAsync();

            return JsonConvert.DeserializeObject<Basket>(jsonResponse);
        }

        public async Task<Order> GetOrderDraft(string basketId)
        {
            var basket = await getBasketAsync(basketId);

            var content = new StringContent(JsonConvert.SerializeObject(basket), System.Text.Encoding.UTF8, "application/json");
            var response = await _apiClient.PostAsync($"{_settings.Value.OrderingUrl}/api/v1/orders/draft", content);

            response.EnsureSuccessStatusCode();

            var ordersDraftResponse = await response.Content.ReadAsStringAsync();

            return JsonConvert.DeserializeObject<Order>(ordersDraftResponse);
        }

        public async Task AddItemToBasket(ApplicationUser user, int productId)
        {
            // Step 1: Get the item from catalog
            var item = await getCatalogItemAsync(productId);

            // Step 2: Get current basket status
            var currentBasket = await getBasketAsync(user.Id);

            // Step 3: Merge current status with new product
            currentBasket.Items.Add(new BasketItem()
            {
                UnitPrice = item.Price,
                PictureUrl = item.PictureUri,
                ProductId = item.Id.ToString(),
                ProductName = item.Name,
                Quantity = 1,
                Id = System.Guid.NewGuid().ToString()
            });

            // Step 4: Update basket
            await UpdateBasket(currentBasket);
        }

        public async Task RemoveItemFromBasket(ApplicationUser user, string itemId)
        {
            // Step 1: Get current basket
            var currentBasket = await getBasketAsync(user.Id);

            // Step 2: Get correct item from the basket
            var item = currentBasket.Items.Where(x => x.Id == itemId).FirstOrDefault();

            // Step 3: If item exists, remove it from the basket
            if (item != null)
            {
                currentBasket.Items.Remove(item);

                // Step 4: Update basket
                await UpdateBasket(currentBasket);
            }
        }
    }
}
