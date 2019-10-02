namespace Ordering.API.Application.IntegrationEvents.EventHandling
{
    using MediatR;
    using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Abstractions;
    using Ordering.API.Application.Commands;
    using Ordering.API.Application.IntegrationEvents.Events;
    using System;
    using System.Threading.Tasks;

    public class OrderPaymentSuccededIntegrationEventHandler :
        IIntegrationEventHandler<OrderPaymentSuccededIntegrationEvent>
    {
        private readonly IMediator _mediator;

        public OrderPaymentSuccededIntegrationEventHandler(IMediator mediator)
        {
            _mediator = mediator ?? throw new ArgumentNullException(nameof(mediator));
        }

        public async Task Handle(OrderPaymentSuccededIntegrationEvent @event)
        {
            // TODO: Send corresponding command
        }
    }
}