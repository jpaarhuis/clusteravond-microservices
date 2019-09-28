using MediatR;
using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Abstractions;
using Microsoft.eShopOnContainers.Services.Ordering.API.Application.Commands;
using Ordering.API.Application.IntegrationEvents.Events;
using System.Threading.Tasks;
using System;

namespace Ordering.API.Application.IntegrationEvents.EventHandling
{
    public class UserCheckoutAcceptedIntegrationEventHandler : IIntegrationEventHandler<UserCheckoutAcceptedIntegrationEvent>
    {
        private readonly IMediator _mediator;

        public UserCheckoutAcceptedIntegrationEventHandler(IMediator mediator)
        {
            _mediator = mediator ?? throw new ArgumentNullException(nameof(mediator));
        }

        /// <summary>
        /// Integration event handler which starts the create order process
        /// </summary>
        /// <param name="@event">
        /// Integration event message which is sent by the
        /// basket.api once it has successfully process the 
        /// order items.
        /// </param>
        /// <returns></returns>
        public async Task Handle(UserCheckoutAcceptedIntegrationEvent @event)
        {
            if (@event.RequestId != Guid.Empty)
            {
                var createOrderCommand = new CreateOrderCommand(@event.Basket.Items, @event.UserId, @event.UserName, @event.City, @event.Street,
                        @event.State, @event.Country, @event.ZipCode,
                        @event.CardNumber, @event.CardHolderName, @event.CardExpiration,
                        @event.CardSecurityNumber, @event.CardTypeId);

                await _mediator.Send(createOrderCommand);
            }
        }
    }
}