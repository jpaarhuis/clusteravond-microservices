using EventStore.ClientAPI;
using Microsoft.Extensions.Caching.Memory;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Microsoft.eShopOnContainers.Services.Basket.API.Model
{
    public class EventStoreBasketRepository : IBasketRepository
    {
        private IEventStoreConnection connection;

        public EventStoreBasketRepository()
        {
            connection = EventStoreConnection.Create(new IPEndPoint(IPAddress.Loopback, 1113));

            // Don't forget to tell the connection to connect!
            connection.ConnectAsync().Wait();
        }

        public async Task<bool> DeleteBasketAsync(string id)
        {
            // TODO: clean/remove stream
            return true;
        }

        public IEnumerable<string> GetUsers()
        {
            // TODO: return stream id's because these are the customer id's
            return new List<string>();
        }

        public async Task<CustomerBasket> GetBasketAsync(string customerId)
        {
            var basket = new CustomerBasket(customerId);
            
            foreach (var @event in await ReadEvents(customerId))
            {
                // TODO: deserialize @event.Event.Data and apply to basket
            }
            return basket;

        }

        public async Task<CustomerBasket> UpdateBasketAsync(CustomerBasket basket)
        {
            // TODO: Add event

            return basket;
        }

        private async Task<List<ResolvedEvent>> ReadEvents(string id)
        {
            var ret = new List<ResolvedEvent>();
            StreamEventsSlice currentSlice;
            long nextSliceStart = StreamPosition.Start;

            do
            {
                currentSlice = await connection.ReadStreamEventsForwardAsync(id, nextSliceStart, 200, false);
                nextSliceStart = currentSlice.NextEventNumber;
                ret.AddRange(currentSlice.Events);
            } while (!currentSlice.IsEndOfStream);

            return ret;
        }
    }
}
