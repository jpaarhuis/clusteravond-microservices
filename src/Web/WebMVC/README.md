# eShop - Web Mvc
Solution based on Microsoft Microservices reference application: eShop On Containers (https://github.com/dotnet-architecture/eShopOnContainers)

#### Overview
This sample runs a microservices oriented application and a .net core Mvc application that consumes this services.

#### Deploy
- Create new SQL server with a SQL admin user, either locally or in Azure. In the deploy directory you will find the scripts needed to install the databases. 
- Create a new Azure Service bus with Topic and a Topic Subscriber: https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-quickstart-topics-subscriptions-portal
- Configure the appsettings.json of the following projects to connect to your configured services:
  - Basket.API
  - Catalog.API
  - Identity.API
  - Ordering.API
  - Payment.API
- Use the following projects as the StartUp projects (right click on the solution): Basket API, Catalog API, Identity API, Ordering API, Payment API, WebMVC

#### Run

Once you succesfully run the solution, you will be able to access the services with these urls:
- Web: http://localhost:5100
- Catalog service: http://localhost:5101
- Orders service: http://localhost:5102
- Basket service: http://localhost:5103
- Identity service: http://localhost:5105
- Orders data (SQL Server): Server=tcp:yourdb.database.windows.net,1433;Database;User ID=dbadmin;Password=Cluster3okt;
- Catalog data (SQL Server): Server=tcp:yourdb.database.windows.net,1433;Database=CatalogDB;User ID=dbadmin;Password=Cluster3okt;
- Identity data (SQL Server): Server=tcp:yourdb.database.windows.net,1433;Database=aspnet-Microsoft.eShopOnContainers;User ID=dbadmin;Password=Cluster3okt;


# Assignment instructions
- Pull https://github.com/jpaarhuis/clusteravond-microservices and create your own branch.
- The end of every assignment is the start of the next one
  - You can complete all assignments solely from the master branch
  - If you're stuck, you can take a look at the corresponding completed assignment branches

# Assignment 1
Build the functionality to remove an item from the basket.

# Assignment 2
As of now, products in the basket don't get a price update when a price is updated in the catalog. Make sure that products in the basket also get an updated price when the price in the catalog is updated.

##### Test
- Add product to the basket
- Update the price in the catalog
- Check if product price is changed in the basket as well

##### Tools
- Use Postman (or something similar) to do a REST call to the catalog to update the price

# Assignment 3
Fix the checkout process so that an order is correctly processed and eventually ends up in the Paid status on the orders overview screen.

Reference model:
![Assignment reference model](https://i.imgur.com/CwU1ESH.png)

# Assignment Bonus
For this assignement, check out the opdracht-bonus branch.

Implement Event Sourcing for the Basket using a custom implementation of the IBasketRepository and using Event Store.

- Run Event Store server locally: https://eventstore.org/downloads/win/EventStore-OSS-Win-v5.0.2.zip
- Quick-start Event Store https://eventstore.org/docs/dotnet-api/index.html