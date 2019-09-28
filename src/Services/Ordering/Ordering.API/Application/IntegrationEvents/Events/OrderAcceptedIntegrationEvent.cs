namespace Ordering.API.Application.IntegrationEvents.Events
{
    using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Events;

    public class OrderAcceptedIntegrationEvent : IntegrationEvent
    {
        public int OrderId { get; }

        public OrderAcceptedIntegrationEvent(int orderId) =>
            OrderId = orderId;
    }
}
