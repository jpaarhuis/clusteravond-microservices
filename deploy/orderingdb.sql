ALTER TABLE [ordering].[paymentmethods] DROP CONSTRAINT [FK_paymentmethods_cardtypes_CardTypeId]
GO
ALTER TABLE [ordering].[paymentmethods] DROP CONSTRAINT [FK_paymentmethods_buyers_BuyerId]
GO
ALTER TABLE [ordering].[orders] DROP CONSTRAINT [FK_orders_orderstatus_OrderStatusId]
GO
ALTER TABLE [ordering].[orders] DROP CONSTRAINT [FK_orders_buyers_BuyerId]
GO
ALTER TABLE [ordering].[orderItems] DROP CONSTRAINT [FK_orderItems_orders_OrderId]
GO
ALTER TABLE [ordering].[orderstatus] DROP CONSTRAINT [DF__orderstatus__Id__5629CD9C]
GO
ALTER TABLE [ordering].[cardtypes] DROP CONSTRAINT [DF__cardtypes__Id__5165187F]
GO
/****** Object:  Index [IX_paymentmethods_CardTypeId]    Script Date: 3-10-2019 09:03:55 ******/
DROP INDEX [IX_paymentmethods_CardTypeId] ON [ordering].[paymentmethods]
GO
/****** Object:  Index [IX_paymentmethods_BuyerId]    Script Date: 3-10-2019 09:03:55 ******/
DROP INDEX [IX_paymentmethods_BuyerId] ON [ordering].[paymentmethods]
GO
/****** Object:  Index [IX_orders_PaymentMethodId]    Script Date: 3-10-2019 09:03:55 ******/
DROP INDEX [IX_orders_PaymentMethodId] ON [ordering].[orders]
GO
/****** Object:  Index [IX_orders_OrderStatusId]    Script Date: 3-10-2019 09:03:55 ******/
DROP INDEX [IX_orders_OrderStatusId] ON [ordering].[orders]
GO
/****** Object:  Index [IX_orders_BuyerId]    Script Date: 3-10-2019 09:03:55 ******/
DROP INDEX [IX_orders_BuyerId] ON [ordering].[orders]
GO
/****** Object:  Index [IX_orderItems_OrderId]    Script Date: 3-10-2019 09:03:55 ******/
DROP INDEX [IX_orderItems_OrderId] ON [ordering].[orderItems]
GO
/****** Object:  Index [IX_buyers_IdentityGuid]    Script Date: 3-10-2019 09:03:55 ******/
DROP INDEX [IX_buyers_IdentityGuid] ON [ordering].[buyers]
GO
/****** Object:  Table [ordering].[requests]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [ordering].[requests]
GO
/****** Object:  Table [ordering].[paymentmethods]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [ordering].[paymentmethods]
GO
/****** Object:  Table [ordering].[orderstatus]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [ordering].[orderstatus]
GO
/****** Object:  Table [ordering].[orders]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [ordering].[orders]
GO
/****** Object:  Table [ordering].[orderItems]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [ordering].[orderItems]
GO
/****** Object:  Table [ordering].[cardtypes]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [ordering].[cardtypes]
GO
/****** Object:  Table [ordering].[buyers]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [ordering].[buyers]
GO
/****** Object:  Table [dbo].[IntegrationEventLog]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [dbo].[IntegrationEventLog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3-10-2019 09:03:55 ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Sequence [ordering].[paymentseq]    Script Date: 3-10-2019 09:03:55 ******/
DROP SEQUENCE [ordering].[paymentseq]
GO
/****** Object:  Sequence [ordering].[orderseq]    Script Date: 3-10-2019 09:03:55 ******/
DROP SEQUENCE [ordering].[orderseq]
GO
/****** Object:  Sequence [ordering].[buyerseq]    Script Date: 3-10-2019 09:03:55 ******/
DROP SEQUENCE [ordering].[buyerseq]
GO
/****** Object:  Sequence [dbo].[orderitemseq]    Script Date: 3-10-2019 09:03:55 ******/
DROP SEQUENCE [dbo].[orderitemseq]
GO
/****** Object:  Schema [ordering]    Script Date: 3-10-2019 09:03:55 ******/
DROP SCHEMA [ordering]
GO
/****** Object:  Database [orderingdb]    Script Date: 3-10-2019 09:03:55 ******/
DROP DATABASE [orderingdb]
GO
/****** Object:  Database [orderingdb]    Script Date: 3-10-2019 09:03:55 ******/
CREATE DATABASE [orderingdb]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 1 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [orderingdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [orderingdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [orderingdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [orderingdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [orderingdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [orderingdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [orderingdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [orderingdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [orderingdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [orderingdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [orderingdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [orderingdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [orderingdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [orderingdb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [orderingdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [orderingdb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [orderingdb] SET  MULTI_USER 
GO
ALTER DATABASE [orderingdb] SET ENCRYPTION ON
GO
ALTER DATABASE [orderingdb] SET QUERY_STORE = ON
GO
ALTER DATABASE [orderingdb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
/****** Object:  Schema [ordering]    Script Date: 3-10-2019 09:03:55 ******/
CREATE SCHEMA [ordering]
GO
/****** Object:  Sequence [dbo].[orderitemseq]    Script Date: 3-10-2019 09:03:55 ******/
CREATE SEQUENCE [dbo].[orderitemseq] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Sequence [ordering].[buyerseq]    Script Date: 3-10-2019 09:03:55 ******/
CREATE SEQUENCE [ordering].[buyerseq] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Sequence [ordering].[orderseq]    Script Date: 3-10-2019 09:03:55 ******/
CREATE SEQUENCE [ordering].[orderseq] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Sequence [ordering].[paymentseq]    Script Date: 3-10-2019 09:03:55 ******/
CREATE SEQUENCE [ordering].[paymentseq] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3-10-2019 09:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntegrationEventLog]    Script Date: 3-10-2019 09:03:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntegrationEventLog](
	[EventId] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[EventTypeName] [nvarchar](max) NOT NULL,
	[State] [int] NOT NULL,
	[TimesSent] [int] NOT NULL,
 CONSTRAINT [PK_IntegrationEventLog] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ordering].[buyers]    Script Date: 3-10-2019 09:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[buyers](
	[Id] [int] NOT NULL,
	[IdentityGuid] [nvarchar](200) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_buyers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ordering].[cardtypes]    Script Date: 3-10-2019 09:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[cardtypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_cardtypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ordering].[orderItems]    Script Date: 3-10-2019 09:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[orderItems](
	[Id] [int] NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PictureUrl] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Units] [int] NOT NULL,
 CONSTRAINT [PK_orderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ordering].[orders]    Script Date: 3-10-2019 09:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[orders](
	[Id] [int] NOT NULL,
	[BuyerId] [int] NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderStatusId] [int] NOT NULL,
	[PaymentMethodId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Address_City] [nvarchar](max) NULL,
	[Address_Country] [nvarchar](max) NULL,
	[Address_State] [nvarchar](max) NULL,
	[Address_Street] [nvarchar](max) NULL,
	[Address_ZipCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ordering].[orderstatus]    Script Date: 3-10-2019 09:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[orderstatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_orderstatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ordering].[paymentmethods]    Script Date: 3-10-2019 09:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[paymentmethods](
	[Id] [int] NOT NULL,
	[Alias] [nvarchar](200) NOT NULL,
	[BuyerId] [int] NOT NULL,
	[CardHolderName] [nvarchar](200) NOT NULL,
	[CardNumber] [nvarchar](25) NOT NULL,
	[CardTypeId] [int] NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_paymentmethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ordering].[requests]    Script Date: 3-10-2019 09:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[requests](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_requests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170208181933_Initial', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170303085729_RequestsTable', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170313100034_Domain_events', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170330131634_IntegrationEventInitial', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170403082405_NoBuyerPropertyInOrder', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170405110939_NoPaymentMethodPropertyInOrder', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170511112333_AddOrderDescription', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170713111342_AdressAsValueObject', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180412143935_NamePropertyInBuyer', N'2.2.6-servicing-10079')
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'ca23c4b2-4fdd-45d9-98c5-001bb3fe7ad2', N'{"OrderId":41,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":10,"Units":1}],"Id":"ca23c4b2-4fdd-45d9-98c5-001bb3fe7ad2","CreationDate":"2019-09-26T14:56:38.7059015Z"}', CAST(N'2019-09-26T14:56:38.7059015' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1103fa70-edf4-42c2-af26-04d42ec26c20', N'{"OrderId":11,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":7,"Units":1}],"Id":"1103fa70-edf4-42c2-af26-04d42ec26c20","CreationDate":"2019-09-25T11:56:10.3559781Z"}', CAST(N'2019-09-25T11:56:10.3559781' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd546b68e-db37-4f1e-88a3-0a3257d08cdb', N'{"OrderId":151,"Id":"d546b68e-db37-4f1e-88a3-0a3257d08cdb","CreationDate":"2019-09-28T10:07:36.2101708Z"}', CAST(N'2019-09-28T10:07:36.2101708' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.GracePeriodConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'dcce08db-6491-4bc3-9aae-0f82a62967b6', N'{"OrderId":81,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":12,"Units":1}],"Id":"dcce08db-6491-4bc3-9aae-0f82a62967b6","CreationDate":"2019-09-27T17:08:05.4349901Z"}', CAST(N'2019-09-27T17:08:05.4349901' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 4)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'0d1e0316-6612-4daf-90c3-0fbf9af3443a', N'{"OrderId":91,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"0d1e0316-6612-4daf-90c3-0fbf9af3443a","CreationDate":"2019-09-27T17:09:01.1405332Z"}', CAST(N'2019-09-27T17:09:01.1405332' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'7412073b-3906-4389-924b-102ba5cfa3bc', N'{"OrderId":151,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"7412073b-3906-4389-924b-102ba5cfa3bc","CreationDate":"2019-09-28T10:07:47.2996049Z"}', CAST(N'2019-09-28T10:07:47.2996049' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4d7b2f8e-7b64-4b09-8ee2-10489bedb967', N'{"OrderId":91,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"4d7b2f8e-7b64-4b09-8ee2-10489bedb967","CreationDate":"2019-09-27T17:09:00.9911091Z"}', CAST(N'2019-09-27T17:09:00.9911091' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'de90546a-71cf-4435-97a2-13c09dc4dfe8', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"de90546a-71cf-4435-97a2-13c09dc4dfe8","CreationDate":"2019-09-28T09:36:46.9639341Z"}', CAST(N'2019-09-28T09:36:46.9639341' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'455dbd40-e7b9-4d37-8784-152259faf6d7', N'{"OrderId":11,"OrderStatus":"submitted","BuyerName":"demouser@microsoft.com","Id":"455dbd40-e7b9-4d37-8784-152259faf6d7","CreationDate":"2019-09-25T11:24:18.6065146Z"}', CAST(N'2019-09-25T11:24:18.6065146' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd519d4b6-c7fc-41da-9b97-1614d0a25db8', N'{"OrderId":111,"Id":"d519d4b6-c7fc-41da-9b97-1614d0a25db8","CreationDate":"2019-09-27T17:24:50.5546223Z"}', CAST(N'2019-09-27T17:24:50.5546223' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.GracePeriodConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b206b280-f0df-45b4-bd11-1b0bc1ea8624', N'{"OrderId":81,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"b206b280-f0df-45b4-bd11-1b0bc1ea8624","CreationDate":"2019-09-27T17:09:00.5864219Z"}', CAST(N'2019-09-27T17:09:00.5864219' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'80d5e198-d891-44fd-b040-1fd214f458b9', N'{"OrderId":11,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":7,"Units":1}],"Id":"80d5e198-d891-44fd-b040-1fd214f458b9","CreationDate":"2019-09-25T11:56:10.3405326Z"}', CAST(N'2019-09-25T11:56:10.3405326' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c84b9402-a89c-439a-81e9-2166d84325c9', N'{"OrderId":121,"Id":"c84b9402-a89c-439a-81e9-2166d84325c9","CreationDate":"2019-09-27T18:17:26.6539317Z"}', CAST(N'2019-09-27T18:17:26.6539317' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.GracePeriodConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'61766d2d-553e-47f1-b9b1-25071ed85d42', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"61766d2d-553e-47f1-b9b1-25071ed85d42","CreationDate":"2019-09-26T11:17:09.5139356Z"}', CAST(N'2019-09-26T11:17:09.5139356' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e7ef972d-5b8b-460d-ab0c-266ac05537f5', N'{"OrderId":71,"OrderStatus":"submitted","BuyerName":"w.vanschaijk@rubicon.nl","Id":"e7ef972d-5b8b-460d-ab0c-266ac05537f5","CreationDate":"2019-09-26T14:00:57.8776148Z"}', CAST(N'2019-09-26T14:00:57.8776148' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'2578a170-2648-4548-ab49-278d9e8a7c1e', N'{"OrderId":101,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":2,"Units":1}],"Id":"2578a170-2648-4548-ab49-278d9e8a7c1e","CreationDate":"2019-09-27T17:08:05.4763418Z"}', CAST(N'2019-09-27T17:08:05.4763418' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 4)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'18b89ac0-2e5b-49fc-80bb-29b33bda3cc8', N'{"OrderId":31,"OrderStatus":"submitted","BuyerName":"w.vanschaijk@rubicon.nl","Id":"18b89ac0-2e5b-49fc-80bb-29b33bda3cc8","CreationDate":"2019-09-26T09:41:41.8213033Z"}', CAST(N'2019-09-26T09:41:41.8213033' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'686bc49b-7efe-4684-8c6e-2cc42bc7aded', N'{"OrderId":141,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"686bc49b-7efe-4684-8c6e-2cc42bc7aded","CreationDate":"2019-09-28T09:36:58.7322852Z"}', CAST(N'2019-09-28T09:36:58.7322852' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4f5d1a6f-2aea-44f0-842b-346321680ffd', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"4f5d1a6f-2aea-44f0-842b-346321680ffd","CreationDate":"2019-09-28T09:26:18.9023193Z"}', CAST(N'2019-09-28T09:26:18.9023193' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'32b7d368-8955-4657-820f-3529aba608db', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"32b7d368-8955-4657-820f-3529aba608db","CreationDate":"2019-09-25T15:14:28.0510352Z"}', CAST(N'2019-09-25T15:14:28.0510352' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fed89c55-cac3-49e0-a4c7-39664d12e244', N'{"OrderId":91,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":6,"Units":2}],"Id":"fed89c55-cac3-49e0-a4c7-39664d12e244","CreationDate":"2019-09-27T17:08:05.6044298Z"}', CAST(N'2019-09-27T17:08:05.6044298' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 7)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'11059a44-e885-43b5-b5ea-3b1de70816cc', N'{"OrderId":61,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"11059a44-e885-43b5-b5ea-3b1de70816cc","CreationDate":"2019-09-26T14:57:03.4527552Z"}', CAST(N'2019-09-26T14:57:03.4527552' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'05404374-8338-4c23-bf2e-40897703d088', N'{"OrderId":32,"OrderStatus":"submitted","BuyerName":"demouser@microsoft.com","Id":"05404374-8338-4c23-bf2e-40897703d088","CreationDate":"2019-09-26T10:03:30.8628046Z"}', CAST(N'2019-09-26T10:03:30.8628046' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'60f27e19-5ad1-401a-925f-42c4dd83920c', N'{"OrderId":111,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":1,"Units":1}],"Id":"60f27e19-5ad1-401a-925f-42c4dd83920c","CreationDate":"2019-09-27T17:24:51.2101422Z"}', CAST(N'2019-09-27T17:24:51.2101422' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'524cf805-b98e-4c64-b91c-43b7f0452ee4', N'{"OrderId":121,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":1,"Units":1}],"Id":"524cf805-b98e-4c64-b91c-43b7f0452ee4","CreationDate":"2019-09-27T18:17:27.306982Z"}', CAST(N'2019-09-27T18:17:27.3069820' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b8ef148e-7c67-4c74-bfef-4451a972ed71', N'{"OrderId":131,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":2,"Units":1}],"Id":"b8ef148e-7c67-4c74-bfef-4451a972ed71","CreationDate":"2019-09-28T09:26:20.2097775Z"}', CAST(N'2019-09-28T09:26:20.2097775' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'95d10e08-60c6-4608-a8e2-461ac1d973e0', N'{"OrderId":141,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":2,"Units":1}],"Id":"95d10e08-60c6-4608-a8e2-461ac1d973e0","CreationDate":"2019-09-28T09:36:48.0425779Z"}', CAST(N'2019-09-28T09:36:48.0425779' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b3032d13-dcb2-4f3f-a9f7-473ab7badd44', N'{"OrderId":11,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"b3032d13-dcb2-4f3f-a9f7-473ab7badd44","CreationDate":"2019-09-25T11:56:21.7070376Z"}', CAST(N'2019-09-25T11:56:21.7070376' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'92dc1c21-5239-412b-95b6-47dfb97c88d4', N'{"OrderId":51,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":6,"Units":1}],"Id":"92dc1c21-5239-412b-95b6-47dfb97c88d4","CreationDate":"2019-09-26T14:56:38.7059277Z"}', CAST(N'2019-09-26T14:56:38.7059277' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'f2cd460d-b7b2-457c-8886-4a6ae8cf1a9b', N'{"OrderId":61,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":2,"Units":1}],"Id":"f2cd460d-b7b2-457c-8886-4a6ae8cf1a9b","CreationDate":"2019-09-26T14:56:38.9216611Z"}', CAST(N'2019-09-26T14:56:38.9216611' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4be8f962-100f-43be-9ba9-4ac4e3c4890c', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"4be8f962-100f-43be-9ba9-4ac4e3c4890c","CreationDate":"2019-09-26T10:03:30.7306349Z"}', CAST(N'2019-09-26T10:03:30.7306349' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'224b8557-9b21-4db8-a5ec-4e5f3ca6dec0', N'{"OrderId":1,"OrderStatus":"cancelled","BuyerName":"demouser@microsoft.com","Id":"224b8557-9b21-4db8-a5ec-4e5f3ca6dec0","CreationDate":"2019-09-25T11:12:06.555045Z"}', CAST(N'2019-09-25T11:12:06.5550450' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToCancelledIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'39bdd222-1b13-44d6-8f6e-551331bb8d4d', N'{"OrderId":21,"OrderStatus":"submitted","BuyerName":"demouser@microsoft.com","Id":"39bdd222-1b13-44d6-8f6e-551331bb8d4d","CreationDate":"2019-09-25T15:14:28.6713356Z"}', CAST(N'2019-09-25T15:14:28.6713356' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'271cf3fd-dde1-40ff-acce-56708b563e8b', N'{"OrderId":41,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"271cf3fd-dde1-40ff-acce-56708b563e8b","CreationDate":"2019-09-26T14:56:51.9361328Z"}', CAST(N'2019-09-26T14:56:51.9361328' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'8484c848-ee58-423b-ae2b-59a6f5759f6d', N'{"OrderId":32,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":2,"Units":5},{"ProductId":1,"Units":1}],"Id":"8484c848-ee58-423b-ae2b-59a6f5759f6d","CreationDate":"2019-09-26T14:56:38.8038529Z"}', CAST(N'2019-09-26T14:56:38.8038529' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 5)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'aae36124-1597-4807-95df-5a2724b6c14f', N'{"OrderId":11,"OrderStatus":"shipped","BuyerName":"demouser@microsoft.com","Id":"aae36124-1597-4807-95df-5a2724b6c14f","CreationDate":"2019-09-26T10:02:42.041818Z"}', CAST(N'2019-09-26T10:02:42.0418180' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToShippedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b75c079f-470a-4d35-b705-5e5883e7b269', N'{"OrderId":11,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"b75c079f-470a-4d35-b705-5e5883e7b269","CreationDate":"2019-09-25T11:56:21.5839928Z"}', CAST(N'2019-09-25T11:56:21.5839928' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e0be6853-f105-4185-b8d8-608a954a65a4', N'{"UserId":"ac58a2e5-7880-420c-adef-88de345276bf","Id":"e0be6853-f105-4185-b8d8-608a954a65a4","CreationDate":"2019-09-26T14:00:57.3949272Z"}', CAST(N'2019-09-26T14:00:57.3949272' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd7c89fe8-2351-436e-98c6-6171c866c9ea', N'{"OrderId":101,"OrderStatus":"submitted","BuyerName":"demouser@microsoft.com","Id":"d7c89fe8-2351-436e-98c6-6171c866c9ea","CreationDate":"2019-09-27T16:25:59.9315934Z"}', CAST(N'2019-09-27T16:25:59.9315934' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'59f57e44-92d5-4338-ae16-688528666d7d', N'{"OrderId":1,"OrderStatus":"submitted","BuyerName":"demouser@microsoft.com","Id":"59f57e44-92d5-4338-ae16-688528666d7d","CreationDate":"2019-09-25T11:03:57.4612011Z"}', CAST(N'2019-09-25T11:03:57.4612011' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5daf1ded-997a-40a4-813a-6bd03304821d', N'{"OrderId":71,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"5daf1ded-997a-40a4-813a-6bd03304821d","CreationDate":"2019-09-26T14:57:24.2780289Z"}', CAST(N'2019-09-26T14:57:24.2780289' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'2cd62124-7183-4499-8e85-6fc9bee91a8f', N'{"OrderId":31,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":9,"Units":1},{"ProductId":6,"Units":1}],"Id":"2cd62124-7183-4499-8e85-6fc9bee91a8f","CreationDate":"2019-09-26T14:56:38.710937Z"}', CAST(N'2019-09-26T14:56:38.7109370' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 4)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'3fd67953-c399-4464-9d9a-73be5675601a', N'{"OrderId":11,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"3fd67953-c399-4464-9d9a-73be5675601a","CreationDate":"2019-09-25T11:56:21.5590554Z"}', CAST(N'2019-09-25T11:56:21.5590554' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'6834cb73-b29d-4373-9c01-759011aafa31', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"6834cb73-b29d-4373-9c01-759011aafa31","CreationDate":"2019-09-25T11:03:56.9699784Z"}', CAST(N'2019-09-25T11:03:56.9699784' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b152b387-9ff8-4b03-9c34-7803a939faee', N'{"UserId":"ac58a2e5-7880-420c-adef-88de345276bf","Id":"b152b387-9ff8-4b03-9c34-7803a939faee","CreationDate":"2019-09-26T11:50:38.848969Z"}', CAST(N'2019-09-26T11:50:38.8489690' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'dd916d24-8f68-414f-9234-798bc16adc62', N'{"OrderId":11,"OrderStatus":"paid","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":7,"Units":1}],"Id":"dd916d24-8f68-414f-9234-798bc16adc62","CreationDate":"2019-09-25T15:22:17.9905607Z"}', CAST(N'2019-09-25T15:22:17.9905607' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToPaidIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e2fadd0e-885c-45e4-a637-7a5ef43f519b', N'{"OrderId":141,"Id":"e2fadd0e-885c-45e4-a637-7a5ef43f519b","CreationDate":"2019-09-28T09:36:47.4348473Z"}', CAST(N'2019-09-28T09:36:47.4348473' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.GracePeriodConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1fe03915-73d5-4215-ad8c-7bc8ea02a280', N'{"OrderId":81,"OrderStatus":"submitted","BuyerName":"w.vanschaijk@rubicon.nl","Id":"1fe03915-73d5-4215-ad8c-7bc8ea02a280","CreationDate":"2019-09-26T14:59:14.2557504Z"}', CAST(N'2019-09-26T14:59:14.2557504' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fb8956ba-515f-4120-a307-8105019630ec', N'{"UserId":"ac58a2e5-7880-420c-adef-88de345276bf","Id":"fb8956ba-515f-4120-a307-8105019630ec","CreationDate":"2019-09-26T12:09:59.6355311Z"}', CAST(N'2019-09-26T12:09:59.6355311' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fa08e6dd-34ce-4088-880b-81f39d2586ec', N'{"OrderId":71,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":6,"Units":5},{"ProductId":2,"Units":1}],"Id":"fa08e6dd-34ce-4088-880b-81f39d2586ec","CreationDate":"2019-09-26T14:56:39.1395667Z"}', CAST(N'2019-09-26T14:56:39.1395667' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'f40517f9-dc85-46b4-afb9-831a2ac531a4', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"f40517f9-dc85-46b4-afb9-831a2ac531a4","CreationDate":"2019-09-27T16:04:25.566202Z"}', CAST(N'2019-09-27T16:04:25.5662020' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'838cd8c4-3bcf-4762-832f-85c7e0ab9731', N'{"OrderId":91,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":6,"Units":2}],"Id":"838cd8c4-3bcf-4762-832f-85c7e0ab9731","CreationDate":"2019-09-27T17:08:05.4349848Z"}', CAST(N'2019-09-27T17:08:05.4349848' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 5)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'564deed5-67c5-4ae9-9fa5-86fff6b4dd85', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"564deed5-67c5-4ae9-9fa5-86fff6b4dd85","CreationDate":"2019-09-28T10:07:35.6408325Z"}', CAST(N'2019-09-28T10:07:35.6408325' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'be0d9233-ec4a-4569-9c3b-8aad8d7029aa', N'{"OrderId":21,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":6,"Units":1}],"Id":"be0d9233-ec4a-4569-9c3b-8aad8d7029aa","CreationDate":"2019-09-25T15:56:40.2213526Z"}', CAST(N'2019-09-25T15:56:40.2213526' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'a2193e31-7953-4eb2-90bf-8d28c5f25916', N'{"OrderId":101,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"a2193e31-7953-4eb2-90bf-8d28c5f25916","CreationDate":"2019-09-27T17:09:00.5869379Z"}', CAST(N'2019-09-27T17:09:00.5869379' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'2792e4ad-7c96-4513-8e4a-935ca23f6b1d', N'{"OrderId":101,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":2,"Units":1}],"Id":"2792e4ad-7c96-4513-8e4a-935ca23f6b1d","CreationDate":"2019-09-27T17:08:05.4344398Z"}', CAST(N'2019-09-27T17:08:05.4344398' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'dbabccf1-c2ab-4eb6-ab47-954af839c5c3', N'{"OrderId":81,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":12,"Units":1}],"Id":"dbabccf1-c2ab-4eb6-ab47-954af839c5c3","CreationDate":"2019-09-27T17:08:05.4344448Z"}', CAST(N'2019-09-27T17:08:05.4344448' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'97e57386-eb58-4f2b-924a-9584b6172381', N'{"OrderId":111,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"97e57386-eb58-4f2b-924a-9584b6172381","CreationDate":"2019-09-27T17:25:01.8975653Z"}', CAST(N'2019-09-27T17:25:01.8975653' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'0224b4b1-2d70-4b17-bdaa-9b9f8cc6e3a2', N'{"OrderId":151,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":2,"Units":2}],"Id":"0224b4b1-2d70-4b17-bdaa-9b9f8cc6e3a2","CreationDate":"2019-09-28T10:07:36.7835125Z"}', CAST(N'2019-09-28T10:07:36.7835125' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e584aaa8-ce67-4b32-8c7b-a63148b3d155', N'{"OrderId":61,"OrderStatus":"submitted","BuyerName":"w.vanschaijk@rubicon.nl","Id":"e584aaa8-ce67-4b32-8c7b-a63148b3d155","CreationDate":"2019-09-26T12:10:00.0290526Z"}', CAST(N'2019-09-26T12:10:00.0290526' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'6937162c-e9d2-485b-abd7-a84bedbe4083', N'{"OrderId":91,"OrderStatus":"submitted","BuyerName":"demouser@microsoft.com","Id":"6937162c-e9d2-485b-abd7-a84bedbe4083","CreationDate":"2019-09-27T16:04:26.4605195Z"}', CAST(N'2019-09-27T16:04:26.4605195' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'7b0cd6ac-7d4e-4f7a-bd74-aaf3133ec36d', N'{"OrderId":31,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"7b0cd6ac-7d4e-4f7a-bd74-aaf3133ec36d","CreationDate":"2019-09-26T14:56:52.0375298Z"}', CAST(N'2019-09-26T14:56:52.0375298' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'346872a4-5268-41fe-a68d-ad65812a80c5', N'{"OrderId":91,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":6,"Units":2}],"Id":"346872a4-5268-41fe-a68d-ad65812a80c5","CreationDate":"2019-09-27T17:08:05.4349829Z"}', CAST(N'2019-09-27T17:08:05.4349829' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b98faf9c-c2cb-4aac-913c-af7930d3f9e1', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"b98faf9c-c2cb-4aac-913c-af7930d3f9e1","CreationDate":"2019-09-25T11:24:18.223485Z"}', CAST(N'2019-09-25T11:24:18.2234850' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4abcd192-7aac-4483-b61a-b0ec1c8340ff', N'{"OrderId":31,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"4abcd192-7aac-4483-b61a-b0ec1c8340ff","CreationDate":"2019-09-26T14:56:51.9345151Z"}', CAST(N'2019-09-26T14:56:51.9345151' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b0b47745-3f80-4c5e-add3-b3aad0e9bab6', N'{"OrderId":61,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":2,"Units":1}],"Id":"b0b47745-3f80-4c5e-add3-b3aad0e9bab6","CreationDate":"2019-09-26T14:56:39.0223162Z"}', CAST(N'2019-09-26T14:56:39.0223162' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'97378f80-e50b-42dd-8077-b42aca2dd31a', N'{"OrderId":11,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"97378f80-e50b-42dd-8077-b42aca2dd31a","CreationDate":"2019-09-25T11:56:21.6232007Z"}', CAST(N'2019-09-25T11:56:21.6232007' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'222563ad-c789-41cb-8aa7-b4d1dc63ab04', N'{"OrderId":91,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":6,"Units":2}],"Id":"222563ad-c789-41cb-8aa7-b4d1dc63ab04","CreationDate":"2019-09-27T17:08:05.5476724Z"}', CAST(N'2019-09-27T17:08:05.5476724' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 4)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'855b4d42-1d05-4ed7-8664-be8e87821bd9', N'{"OrderId":41,"OrderStatus":"submitted","BuyerName":"demouser@microsoft.com","Id":"855b4d42-1d05-4ed7-8664-be8e87821bd9","CreationDate":"2019-09-26T11:17:10.8368404Z"}', CAST(N'2019-09-26T11:17:10.8368404' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'a120ff9f-c85d-41d5-8b7d-c4bb4c560273', N'{"OrderId":101,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"a120ff9f-c85d-41d5-8b7d-c4bb4c560273","CreationDate":"2019-09-27T17:09:00.6017268Z"}', CAST(N'2019-09-27T17:09:00.6017268' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fd1b0e8a-75eb-42da-89ce-c6260e955dc3', N'{"OrderId":81,"OrderStatus":"awaitingvalidation","BuyerName":"w.vanschaijk@rubicon.nl","OrderStockItems":[{"ProductId":12,"Units":1}],"Id":"fd1b0e8a-75eb-42da-89ce-c6260e955dc3","CreationDate":"2019-09-27T17:08:05.7049648Z"}', CAST(N'2019-09-27T17:08:05.7049648' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 7)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'2d972637-dc82-45ad-9169-c69a00c027af', N'{"UserId":"ac58a2e5-7880-420c-adef-88de345276bf","Id":"2d972637-dc82-45ad-9169-c69a00c027af","CreationDate":"2019-09-26T09:41:41.2211143Z"}', CAST(N'2019-09-26T09:41:41.2211143' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'333ed7ad-8ac8-4e4f-b4ea-c75953cd751e', N'{"UserId":"ac58a2e5-7880-420c-adef-88de345276bf","Id":"333ed7ad-8ac8-4e4f-b4ea-c75953cd751e","CreationDate":"2019-09-26T14:59:13.8386344Z"}', CAST(N'2019-09-26T14:59:13.8386344' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'07e85ee2-7a01-464c-b031-c85cd67795b6', N'{"OrderId":21,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"07e85ee2-7a01-464c-b031-c85cd67795b6","CreationDate":"2019-09-25T15:56:51.3724642Z"}', CAST(N'2019-09-25T15:56:51.3724642' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'f5d66eb2-9549-4832-8623-ca93c4e8a8e5', N'{"OrderId":101,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":2,"Units":1}],"Id":"f5d66eb2-9549-4832-8623-ca93c4e8a8e5","CreationDate":"2019-09-27T17:08:05.4349806Z"}', CAST(N'2019-09-27T17:08:05.4349806' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'7e645de8-2685-4614-841e-cb3c8f0d2c44', N'{"OrderId":11,"OrderStatus":"paid","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":7,"Units":1}],"Id":"7e645de8-2685-4614-841e-cb3c8f0d2c44","CreationDate":"2019-09-25T15:22:17.9198305Z"}', CAST(N'2019-09-25T15:22:17.9198305' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToPaidIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cad6e751-35c2-4cc6-ace7-ce66b4278084', N'{"OrderId":51,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"cad6e751-35c2-4cc6-ace7-ce66b4278084","CreationDate":"2019-09-26T14:56:52.0615771Z"}', CAST(N'2019-09-26T14:56:52.0615771' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c08ef8ea-50a3-446f-a918-ceb7695a9cc5', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"c08ef8ea-50a3-446f-a918-ceb7695a9cc5","CreationDate":"2019-09-27T16:25:20.9603863Z"}', CAST(N'2019-09-27T16:25:20.9603863' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e9b8e5f2-0b53-4d92-8549-d099ca1dacb9', N'{"OrderId":11,"OrderStatus":"awaitingvalidation","BuyerName":"demouser@microsoft.com","OrderStockItems":[{"ProductId":7,"Units":1}],"Id":"e9b8e5f2-0b53-4d92-8549-d099ca1dacb9","CreationDate":"2019-09-25T11:56:10.4101995Z"}', CAST(N'2019-09-25T11:56:10.4101995' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToAwaitingValidationIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'a355f53e-fb75-448c-a114-d1f53deef68e', N'{"OrderId":32,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"a355f53e-fb75-448c-a114-d1f53deef68e","CreationDate":"2019-09-26T14:56:52.0418804Z"}', CAST(N'2019-09-26T14:56:52.0418804' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 4)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c48b7c4f-fdc9-42ef-8fd4-dc2809bd8abe', N'{"OrderId":131,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"c48b7c4f-fdc9-42ef-8fd4-dc2809bd8abe","CreationDate":"2019-09-28T09:26:33.625372Z"}', CAST(N'2019-09-28T09:26:33.6253720' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd4d355cb-04a8-4875-86cf-dca9054cfe6d', N'{"OrderId":91,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"d4d355cb-04a8-4875-86cf-dca9054cfe6d","CreationDate":"2019-09-27T17:09:00.9286305Z"}', CAST(N'2019-09-27T17:09:00.9286305' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b2a0ad5f-899c-48d0-97c9-e0a64671c459', N'{"OrderId":41,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"b2a0ad5f-899c-48d0-97c9-e0a64671c459","CreationDate":"2019-09-26T14:56:52.0296259Z"}', CAST(N'2019-09-26T14:56:52.0296259' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 4)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cb9c8458-9f78-4b01-bf04-e0b5d5e26013', N'{"OrderId":131,"Id":"cb9c8458-9f78-4b01-bf04-e0b5d5e26013","CreationDate":"2019-09-28T09:26:19.6489911Z"}', CAST(N'2019-09-28T09:26:19.6489911' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.GracePeriodConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'f8bdcf33-7584-4bbe-9d0b-e28a3f1d0231', N'{"OrderId":32,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"f8bdcf33-7584-4bbe-9d0b-e28a3f1d0231","CreationDate":"2019-09-26T14:56:51.972507Z"}', CAST(N'2019-09-26T14:56:51.9725070' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'8b4159a0-8057-4e52-acb0-e46859a7e7e5', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"8b4159a0-8057-4e52-acb0-e46859a7e7e5","CreationDate":"2019-09-27T17:24:49.798635Z"}', CAST(N'2019-09-27T17:24:49.7986350' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cf3d3c25-2e2a-4c8f-96db-e8dd1e8856a8', N'{"UserId":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","Id":"cf3d3c25-2e2a-4c8f-96db-e8dd1e8856a8","CreationDate":"2019-09-27T18:17:26.2896239Z"}', CAST(N'2019-09-27T18:17:26.2896239' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStartedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fe5ead61-ab07-402c-85e1-e98244060118', N'{"OrderId":51,"OrderStatus":"submitted","BuyerName":"w.vanschaijk@rubicon.nl","Id":"fe5ead61-ab07-402c-85e1-e98244060118","CreationDate":"2019-09-26T11:50:39.2725702Z"}', CAST(N'2019-09-26T11:50:39.2725702' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToSubmittedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5c3a93fe-d6fe-4de4-abef-eb7c96438525', N'{"OrderId":51,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"5c3a93fe-d6fe-4de4-abef-eb7c96438525","CreationDate":"2019-09-26T14:56:51.9330284Z"}', CAST(N'2019-09-26T14:56:51.9330284' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 2)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'7adf3338-1b70-47e8-b593-ece524e70a33', N'{"OrderId":31,"OrderStatus":"stockconfirmed","BuyerName":"w.vanschaijk@rubicon.nl","Id":"7adf3338-1b70-47e8-b593-ece524e70a33","CreationDate":"2019-09-26T14:56:52.0028245Z"}', CAST(N'2019-09-26T14:56:52.0028245' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 3)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fe80a79e-b52c-46ce-8709-f59d48a4b131', N'{"OrderId":121,"OrderStatus":"stockconfirmed","BuyerName":"demouser@microsoft.com","Id":"fe80a79e-b52c-46ce-8709-f59d48a4b131","CreationDate":"2019-09-27T18:17:37.989288Z"}', CAST(N'2019-09-27T18:17:37.9892880' AS DateTime2), N'Ordering.API.Application.IntegrationEvents.Events.OrderStatusChangedToStockConfirmedIntegrationEvent', 2, 1)
INSERT [ordering].[buyers] ([Id], [IdentityGuid], [Name]) VALUES (1, N'0eb332c7-4eab-4d62-b442-6a87eca9c5c6', N'demouser@microsoft.com')
INSERT [ordering].[buyers] ([Id], [IdentityGuid], [Name]) VALUES (11, N'ac58a2e5-7880-420c-adef-88de345276bf', N'w.vanschaijk@rubicon.nl')
INSERT [ordering].[cardtypes] ([Id], [Name]) VALUES (1, N'Amex')
INSERT [ordering].[cardtypes] ([Id], [Name]) VALUES (2, N'Visa')
INSERT [ordering].[cardtypes] ([Id], [Name]) VALUES (3, N'MasterCard')
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (1, CAST(0.00 AS Decimal(18, 2)), 1, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 5)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (2, CAST(0.00 AS Decimal(18, 2)), 1, N'http://localhost:5101/api/v1/catalog/items/6/pic/', 6, N'.NET Blue Hoodie', CAST(12.00 AS Decimal(18, 2)), 10)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (3, CAST(0.00 AS Decimal(18, 2)), 1, N'http://localhost:5101/api/v1/catalog/items/5/pic/', 5, N'Roslyn Red Sheet', CAST(8.50 AS Decimal(18, 2)), 10)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (11, CAST(0.00 AS Decimal(18, 2)), 11, N'http://localhost:5101/api/v1/catalog/items/7/pic/', 7, N'Roslyn Red T-Shirt', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (21, CAST(0.00 AS Decimal(18, 2)), 21, N'http://localhost:5101/api/v1/catalog/items/6/pic/', 6, N'.NET Blue Hoodie', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (31, CAST(0.00 AS Decimal(18, 2)), 31, N'http://localhost:5101/api/v1/catalog/items/9/pic/', 9, N'Cup<T> White Mug', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (32, CAST(0.00 AS Decimal(18, 2)), 31, N'http://localhost:5101/api/v1/catalog/items/6/pic/', 6, N'.NET Blue Hoodie', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (33, CAST(0.00 AS Decimal(18, 2)), 32, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 5)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (34, CAST(0.00 AS Decimal(18, 2)), 32, N'http://localhost:5101/api/v1/catalog/items/1/pic/', 1, N'.NET Bot Black Hoodie', CAST(19.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (41, CAST(0.00 AS Decimal(18, 2)), 41, N'http://localhost:5101/api/v1/catalog/items/10/pic/', 10, N'.NET Foundation Sheet', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (51, CAST(0.00 AS Decimal(18, 2)), 51, N'http://localhost:5101/api/v1/catalog/items/6/pic/', 6, N'.NET Blue Hoodie', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (61, CAST(0.00 AS Decimal(18, 2)), 61, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (71, CAST(0.00 AS Decimal(18, 2)), 71, N'http://localhost:5101/api/v1/catalog/items/6/pic/', 6, N'.NET Blue Hoodie', CAST(12.00 AS Decimal(18, 2)), 5)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (72, CAST(0.00 AS Decimal(18, 2)), 71, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (81, CAST(0.00 AS Decimal(18, 2)), 81, N'http://localhost:5101/api/v1/catalog/items/12/pic/', 12, N'Prism White TShirt', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (91, CAST(0.00 AS Decimal(18, 2)), 91, N'http://localhost:5101/api/v1/catalog/items/6/pic/', 6, N'.NET Blue Hoodie', CAST(12.00 AS Decimal(18, 2)), 2)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (101, CAST(0.00 AS Decimal(18, 2)), 101, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (111, CAST(0.00 AS Decimal(18, 2)), 111, N'http://localhost:5101/api/v1/catalog/items/1/pic/', 1, N'.NET Bot Black Hoodie', CAST(19.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (121, CAST(0.00 AS Decimal(18, 2)), 121, N'http://localhost:5101/api/v1/catalog/items/1/pic/', 1, N'.NET Bot Black Hoodie', CAST(19.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (131, CAST(0.00 AS Decimal(18, 2)), 131, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (141, CAST(0.00 AS Decimal(18, 2)), 141, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (151, CAST(0.00 AS Decimal(18, 2)), 151, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 2)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (161, CAST(0.00 AS Decimal(18, 2)), 161, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (171, CAST(0.00 AS Decimal(18, 2)), 171, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (181, CAST(0.00 AS Decimal(18, 2)), 181, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (191, CAST(0.00 AS Decimal(18, 2)), 191, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (201, CAST(0.00 AS Decimal(18, 2)), 201, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orderItems] ([Id], [Discount], [OrderId], [PictureUrl], [ProductId], [ProductName], [UnitPrice], [Units]) VALUES (202, CAST(0.00 AS Decimal(18, 2)), 202, N'http://localhost:5101/api/v1/catalog/items/2/pic/', 2, N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), 1)
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (1, 1, CAST(N'2019-09-25T11:03:57.0210356' AS DateTime2), 6, 1, N'The order was cancelled.', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (11, 1, CAST(N'2019-09-25T11:24:18.2660109' AS DateTime2), 5, 1, N'The order was shipped.', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (21, 1, CAST(N'2019-09-25T15:14:28.0892284' AS DateTime2), 3, 1, N'All the items were confirmed with available stock.', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (31, 11, CAST(N'2019-09-26T09:41:41.2745070' AS DateTime2), 3, 11, N'All the items were confirmed with available stock.', N'VIanen', N'Nederland', N'Utrecht', N'Lage Biezenweg 5', N'1234AA')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (32, 1, CAST(N'2019-09-26T10:03:30.7425037' AS DateTime2), 3, 1, N'All the items were confirmed with available stock.', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (41, 1, CAST(N'2019-09-26T11:17:09.6347085' AS DateTime2), 3, 1, N'All the items were confirmed with available stock.', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (51, 11, CAST(N'2019-09-26T11:50:38.8982356' AS DateTime2), 3, 21, N'All the items were confirmed with available stock.', N'VIanen', N'Nederland', N'Utrecht', N'Lage Biezenweg 5', N'1234AA')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (61, 11, CAST(N'2019-09-26T12:09:59.6792512' AS DateTime2), 3, 21, N'All the items were confirmed with available stock.', N'VIanen', N'Nederland', N'Utrecht', N'Lage Biezenweg 5', N'1234AA')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (71, 11, CAST(N'2019-09-26T14:00:57.4555327' AS DateTime2), 3, 21, N'All the items were confirmed with available stock.', N'VIanen', N'Nederland', N'Utrecht', N'Lage Biezenweg 5', N'1234AA')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (81, 11, CAST(N'2019-09-26T14:59:13.9065270' AS DateTime2), 4, 21, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'VIanen', N'Nederland', N'Utrecht', N'Lage Biezenweg 5', N'1234AA')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (91, 1, CAST(N'2019-09-27T16:04:25.6035984' AS DateTime2), 5, 1, N'The order was shipped.', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (101, 1, CAST(N'2019-09-27T16:25:21.0101496' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (111, 1, CAST(N'2019-09-27T17:24:49.8556673' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (121, 1, CAST(N'2019-09-27T18:17:26.3382190' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (131, 1, CAST(N'2019-09-28T09:26:18.9860683' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (141, 1, CAST(N'2019-09-28T09:36:47.0837224' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (151, 1, CAST(N'2019-09-28T10:07:35.7356840' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (161, 1, CAST(N'2019-09-28T10:31:53.2037178' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (171, 1, CAST(N'2019-09-28T10:47:48.1883755' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (181, 1, CAST(N'2019-09-28T14:02:22.8157315' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (191, 1, CAST(N'2019-09-28T14:33:57.0579818' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (201, 1, CAST(N'2019-09-28T15:22:17.7568142' AS DateTime2), 3, 1, N'All the items were confirmed with available stock.', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orders] ([Id], [BuyerId], [OrderDate], [OrderStatusId], [PaymentMethodId], [Description], [Address_City], [Address_Country], [Address_State], [Address_Street], [Address_ZipCode]) VALUES (202, 1, CAST(N'2019-09-28T15:24:28.5823621' AS DateTime2), 4, 1, N'The payment was performed at a simulated "American Bank checking bank account endinf on XX35071"', N'Redmond', N'U.S.', N'WA', N'15703 NE 61st Ct', N'98052')
INSERT [ordering].[orderstatus] ([Id], [Name]) VALUES (1, N'submitted')
INSERT [ordering].[orderstatus] ([Id], [Name]) VALUES (2, N'awaitingvalidation')
INSERT [ordering].[orderstatus] ([Id], [Name]) VALUES (3, N'stockconfirmed')
INSERT [ordering].[orderstatus] ([Id], [Name]) VALUES (4, N'paid')
INSERT [ordering].[orderstatus] ([Id], [Name]) VALUES (5, N'shipped')
INSERT [ordering].[orderstatus] ([Id], [Name]) VALUES (6, N'cancelled')
INSERT [ordering].[paymentmethods] ([Id], [Alias], [BuyerId], [CardHolderName], [CardNumber], [CardTypeId], [Expiration]) VALUES (1, N'Payment Method on 25/09/2019 11:03:57', 1, N'DemoUser', N'4012888888881881', 1, CAST(N'2020-12-01T00:00:00.0000000' AS DateTime2))
INSERT [ordering].[paymentmethods] ([Id], [Alias], [BuyerId], [CardHolderName], [CardNumber], [CardTypeId], [Expiration]) VALUES (11, N'Payment Method on 26/09/2019 09:41:41', 11, N'RUBIRUBI', N'012345098760', 1, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
INSERT [ordering].[paymentmethods] ([Id], [Alias], [BuyerId], [CardHolderName], [CardNumber], [CardTypeId], [Expiration]) VALUES (21, N'Payment Method on 26/09/2019 11:50:39', 11, N'RUBIRUBI', N'01234509876', 1, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'5b75efbf-4d4f-46d0-a0cf-0933a0806bd3', N'CreateOrderCommand', CAST(N'2019-09-25T15:56:43.5703941' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'9d06a6a8-d22a-46c3-8e40-0b666329206c', N'CreateOrderCommand', CAST(N'2019-09-25T14:53:58.8723976' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'e4844182-f710-47b8-913f-0f6d6bc9a36b', N'CreateOrderCommand', CAST(N'2019-09-25T15:39:02.3051506' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'f824bd22-c1ee-473c-94e2-13f10240f8c0', N'CancelOrderCommand', CAST(N'2019-09-25T11:12:06.3440831' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'ef403614-9834-46eb-a640-16a0d83e27f9', N'CreateOrderCommand', CAST(N'2019-09-26T11:17:09.3088256' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'e2437407-9d95-43ec-8a53-247498313518', N'CreateOrderCommand', CAST(N'2019-09-26T09:40:06.5962613' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'8244d150-1e39-48f2-82c3-2702c1e4d5ee', N'CreateOrderCommand', CAST(N'2019-09-26T10:03:30.7169840' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'bf6ff5d2-3509-429e-9c03-29c6419df84b', N'CreateOrderCommand', CAST(N'2019-09-27T17:24:49.6790977' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'3cc41980-14f6-4976-b420-3c8cc086bc69', N'CreateOrderCommand', CAST(N'2019-09-25T15:39:29.8688752' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'7640e215-b062-4dae-ab80-518594d6497e', N'CreateOrderCommand', CAST(N'2019-09-25T16:11:34.6283682' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'f8380639-468a-41a5-82bc-57381d7ed674', N'CreateOrderCommand', CAST(N'2019-09-26T12:09:59.5434006' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'5d60d58d-02ee-4ba1-9c78-597a04509c53', N'CreateOrderCommand', CAST(N'2019-09-25T15:00:17.2969878' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'46fad799-9b96-4d86-b57a-6077d46ce9df', N'CreateOrderCommand', CAST(N'2019-09-25T16:00:19.4120869' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'747e6b05-86b6-4c94-a8fd-667184c52bef', N'ShipOrderCommand', CAST(N'2019-09-26T10:02:41.8272136' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'3e2477ea-8c2b-4aef-81c7-670cc1d63683', N'CreateOrderCommand', CAST(N'2019-09-27T16:04:25.4825517' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'2bb54de3-67dd-4e37-9d46-802647381efb', N'CreateOrderCommand', CAST(N'2019-09-25T11:24:18.1269278' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'e63519d0-9fc7-4569-a763-86d1ee836a15', N'CreateOrderCommand', CAST(N'2019-09-25T16:11:45.5450297' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'c1a14cf2-2f6b-49bd-9bc8-8b31f3c7cf33', N'CreateOrderCommand', CAST(N'2019-09-26T09:41:41.2025072' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'a3d889ea-e1b7-4764-a31c-8c9e11f0b0aa', N'CreateOrderCommand', CAST(N'2019-09-26T14:59:13.7264186' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'6eeaa5a9-6368-4422-bf4a-9de44d76c3c4', N'CreateOrderCommand', CAST(N'2019-09-27T18:17:26.1740848' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'b803c20c-4871-48f8-9654-ab01d2167b2a', N'CreateOrderCommand', CAST(N'2019-09-25T11:03:56.8727735' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'313f732f-386c-4383-a08e-ac0648d1d616', N'CreateOrderCommand', CAST(N'2019-09-25T14:30:13.3591934' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'441f3723-aed0-4a8e-bcbc-affb55cd9171', N'CreateOrderCommand', CAST(N'2019-09-26T11:50:38.7349301' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'2486bdbb-578b-4200-af86-cc2231f880a1', N'CreateOrderCommand', CAST(N'2019-09-25T15:14:28.0372268' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'5d2c072d-8e98-4173-916a-cc5655359d93', N'CreateOrderCommand', CAST(N'2019-09-25T16:12:10.6845338' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'd1252f42-281c-49b0-9690-cefdddeb4c45', N'CreateOrderCommand', CAST(N'2019-09-27T16:25:20.8300011' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'5d9f1ae5-1776-4c24-9d08-dd4689c4eefa', N'CreateOrderCommand', CAST(N'2019-09-25T16:19:15.8707102' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'408f39f9-8b67-41ab-aeff-deb5bfc5db4e', N'CreateOrderCommand', CAST(N'2019-09-26T14:00:57.2903990' AS DateTime2))
INSERT [ordering].[requests] ([Id], [Name], [Time]) VALUES (N'f8953bfe-7a05-47d8-bd27-f8275a68da10', N'CreateOrderCommand', CAST(N'2019-09-25T12:28:26.3796497' AS DateTime2))
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_buyers_IdentityGuid]    Script Date: 3-10-2019 09:03:57 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_buyers_IdentityGuid] ON [ordering].[buyers]
(
	[IdentityGuid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orderItems_OrderId]    Script Date: 3-10-2019 09:03:57 ******/
CREATE NONCLUSTERED INDEX [IX_orderItems_OrderId] ON [ordering].[orderItems]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_BuyerId]    Script Date: 3-10-2019 09:03:57 ******/
CREATE NONCLUSTERED INDEX [IX_orders_BuyerId] ON [ordering].[orders]
(
	[BuyerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_OrderStatusId]    Script Date: 3-10-2019 09:03:57 ******/
CREATE NONCLUSTERED INDEX [IX_orders_OrderStatusId] ON [ordering].[orders]
(
	[OrderStatusId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_PaymentMethodId]    Script Date: 3-10-2019 09:03:57 ******/
CREATE NONCLUSTERED INDEX [IX_orders_PaymentMethodId] ON [ordering].[orders]
(
	[PaymentMethodId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_paymentmethods_BuyerId]    Script Date: 3-10-2019 09:03:57 ******/
CREATE NONCLUSTERED INDEX [IX_paymentmethods_BuyerId] ON [ordering].[paymentmethods]
(
	[BuyerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_paymentmethods_CardTypeId]    Script Date: 3-10-2019 09:03:57 ******/
CREATE NONCLUSTERED INDEX [IX_paymentmethods_CardTypeId] ON [ordering].[paymentmethods]
(
	[CardTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
ALTER TABLE [ordering].[cardtypes] ADD  DEFAULT ((1)) FOR [Id]
GO
ALTER TABLE [ordering].[orderstatus] ADD  DEFAULT ((1)) FOR [Id]
GO
ALTER TABLE [ordering].[orderItems]  WITH CHECK ADD  CONSTRAINT [FK_orderItems_orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [ordering].[orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ordering].[orderItems] CHECK CONSTRAINT [FK_orderItems_orders_OrderId]
GO
ALTER TABLE [ordering].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_buyers_BuyerId] FOREIGN KEY([BuyerId])
REFERENCES [ordering].[buyers] ([Id])
GO
ALTER TABLE [ordering].[orders] CHECK CONSTRAINT [FK_orders_buyers_BuyerId]
GO
ALTER TABLE [ordering].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_orderstatus_OrderStatusId] FOREIGN KEY([OrderStatusId])
REFERENCES [ordering].[orderstatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ordering].[orders] CHECK CONSTRAINT [FK_orders_orderstatus_OrderStatusId]
GO
ALTER TABLE [ordering].[paymentmethods]  WITH CHECK ADD  CONSTRAINT [FK_paymentmethods_buyers_BuyerId] FOREIGN KEY([BuyerId])
REFERENCES [ordering].[buyers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ordering].[paymentmethods] CHECK CONSTRAINT [FK_paymentmethods_buyers_BuyerId]
GO
ALTER TABLE [ordering].[paymentmethods]  WITH CHECK ADD  CONSTRAINT [FK_paymentmethods_cardtypes_CardTypeId] FOREIGN KEY([CardTypeId])
REFERENCES [ordering].[cardtypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ordering].[paymentmethods] CHECK CONSTRAINT [FK_paymentmethods_cardtypes_CardTypeId]
GO
ALTER DATABASE [orderingdb] SET  READ_WRITE 
GO
