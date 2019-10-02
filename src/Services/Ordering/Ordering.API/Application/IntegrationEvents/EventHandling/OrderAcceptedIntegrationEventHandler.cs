using MediatR;
using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Abstractions;
using Ordering.API.Application.Commands;
using Ordering.API.Application.IntegrationEvents.Events;
using System.Threading.Tasks;

namespace Ordering.API.Application.IntegrationEvents.EventHandling
{
    public class OrderAcceptedIntegrationEventHandler : IIntegrationEventHandler<OrderAcceptedIntegrationEvent>
    {
        private readonly IMediator _mediator;

        public OrderAcceptedIntegrationEventHandler(IMediator mediator)
        {
            _mediator = mediator;
        }

        /// <summary>
        /// Event handler which confirms that the grace period
        /// has been completed and order will not initially be cancelled.
        /// Therefore, the order process continues for validation. 
        /// </summary>
        /// <param name="event">       
        /// </param>
        /// <returns></returns>
        public async Task Handle(OrderAcceptedIntegrationEvent @event)
        {
            // TODO: Send a Set Awaiting Validation Order Status Command
        }
    }
}
