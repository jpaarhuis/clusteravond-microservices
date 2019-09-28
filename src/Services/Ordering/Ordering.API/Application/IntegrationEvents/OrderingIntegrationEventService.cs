using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Abstractions;
using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Events;
using Microsoft.eShopOnContainers.Services.Ordering.API;
using Microsoft.eShopOnContainers.Services.Ordering.Infrastructure;
using Microsoft.Extensions.Logging;
using System;
using System.Data.Common;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Ordering.API.Application.IntegrationEvents
{
    public class OrderingIntegrationEventService : IOrderingIntegrationEventService
    {
        private readonly IEventBus _eventBus;

        public OrderingIntegrationEventService(IEventBus eventBus)
        {
            _eventBus = eventBus ?? throw new ArgumentNullException(nameof(eventBus));
        }

        public async Task PublishEventAsync(IntegrationEvent evt)
        {
            _eventBus.Publish(evt);
        }
    }
}
