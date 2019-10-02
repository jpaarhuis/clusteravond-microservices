using MediatR;
using Microsoft.eShopOnContainers.BuildingBlocks.EventBus.Abstractions;
using Microsoft.eShopOnContainers.Services.Ordering.Domain.AggregatesModel.BuyerAggregate;
using Ordering.API.Application.IntegrationEvents;
using Ordering.API.Application.IntegrationEvents.Events;
using Ordering.Domain.Events;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Ordering.API.Application.DomainEventHandlers.OrderStartedEvent
{
    public class ValidateOrAddBuyerAggregateWhenOrderStartedDomainEventHandler 
                        : INotificationHandler<OrderStartedDomainEvent>
    {
        private readonly IBuyerRepository _buyerRepository;
        private readonly IEventBus _eventBus;

        public ValidateOrAddBuyerAggregateWhenOrderStartedDomainEventHandler(
            IBuyerRepository buyerRepository, 
            IEventBus eventBus)
        {
            _buyerRepository = buyerRepository ?? throw new ArgumentNullException(nameof(buyerRepository));
            _eventBus = eventBus ?? throw new ArgumentNullException(nameof(eventBus));
        }

        public async Task Handle(OrderStartedDomainEvent orderStartedEvent, CancellationToken cancellationToken)
        {            
            var cardTypeId = (orderStartedEvent.CardTypeId != 0) ? orderStartedEvent.CardTypeId : 1; // we'll give you this one

            // TODO: check if buyer exists based on userId using _buyerRepository
            // TODO: if buyer exists use that buyer, otherwise create new Buyer object with user id and user name

            // TODO: Verify payment method using VerifyOrAddPaymentMethod on Buyer object and using event parameters

            // TODO: using _buyerRepository, if user did exist "update", otherwise "add" the user.
            
            await _buyerRepository.UnitOfWork
                .SaveEntitiesAsync();

            // TODO: Publish new Order Accepted Integration Event
            
        }
    }
}
