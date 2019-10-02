namespace Payment.API.IntegrationEvents.EventHandling
{
    using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Abstractions;
    using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Events;
    using Microsoft.Extensions.Options;
    using Payment.API.IntegrationEvents.Events;
    using System.Threading.Tasks;

    public class OrderStatusChangedToStockConfirmedIntegrationEventHandler :
        IIntegrationEventHandler<OrderStatusChangedToStockConfirmedIntegrationEvent>
    {
        private readonly IEventBus _eventBus;
        private readonly PaymentSettings _settings;

        public OrderStatusChangedToStockConfirmedIntegrationEventHandler(
            IEventBus eventBus,
            IOptionsSnapshot<PaymentSettings> settings)
        {
            _eventBus = eventBus;
            _settings = settings.Value;
        }

        public async Task Handle(OrderStatusChangedToStockConfirmedIntegrationEvent @event)
        {
            IntegrationEvent orderPaymentIntegrationEvent;

            // We fake a payment succeded, this value is true by default
            if (_settings.PaymentSucceded)
            {
                // TODO: new Payment Succeded Integration Event
            }
            else
            {
                // TODO: new Payment Failed Integration Event
            }

            // TODO: Publish integration event

            await Task.CompletedTask;
        }
    }
}