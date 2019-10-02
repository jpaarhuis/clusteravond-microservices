namespace Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.EventHandling
{
    using BuildingBlocks.EventBus.Abstractions;
    using System.Threading.Tasks;
    using Infrastructure;
    using Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events;

    public class OrderStatusChangedToPaidIntegrationEventHandler :
        IIntegrationEventHandler<OrderStatusChangedToPaidIntegrationEvent>
    {
        private readonly CatalogContext _catalogContext;

        public OrderStatusChangedToPaidIntegrationEventHandler(
            CatalogContext catalogContext)
        {
            _catalogContext = catalogContext;
        }

        public async Task Handle(OrderStatusChangedToPaidIntegrationEvent @event)
        {
            // TODO: Remove Stock from the catalog using @event.OrderStockItems and _catalogContext.CatalogItems

            await _catalogContext.SaveChangesAsync();
        }
    }
}