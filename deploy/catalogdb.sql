ALTER TABLE [dbo].[Catalog] DROP CONSTRAINT [FK_Catalog_CatalogType_CatalogTypeId]
GO
ALTER TABLE [dbo].[Catalog] DROP CONSTRAINT [FK_Catalog_CatalogBrand_CatalogBrandId]
GO
ALTER TABLE [dbo].[Catalog] DROP CONSTRAINT [DF__Catalog__Restock__5FB337D6]
GO
ALTER TABLE [dbo].[Catalog] DROP CONSTRAINT [DF__Catalog__OnReord__5EBF139D]
GO
ALTER TABLE [dbo].[Catalog] DROP CONSTRAINT [DF__Catalog__MaxStoc__5DCAEF64]
GO
ALTER TABLE [dbo].[Catalog] DROP CONSTRAINT [DF__Catalog__Availab__5CD6CB2B]
GO
/****** Object:  Index [IX_Catalog_CatalogTypeId]    Script Date: 3-10-2019 08:59:06 ******/
DROP INDEX [IX_Catalog_CatalogTypeId] ON [dbo].[Catalog]
GO
/****** Object:  Index [IX_Catalog_CatalogBrandId]    Script Date: 3-10-2019 08:59:06 ******/
DROP INDEX [IX_Catalog_CatalogBrandId] ON [dbo].[Catalog]
GO
/****** Object:  Table [dbo].[IntegrationEventLog]    Script Date: 3-10-2019 08:59:06 ******/
DROP TABLE [dbo].[IntegrationEventLog]
GO
/****** Object:  Table [dbo].[CatalogType]    Script Date: 3-10-2019 08:59:06 ******/
DROP TABLE [dbo].[CatalogType]
GO
/****** Object:  Table [dbo].[CatalogBrand]    Script Date: 3-10-2019 08:59:06 ******/
DROP TABLE [dbo].[CatalogBrand]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 3-10-2019 08:59:06 ******/
DROP TABLE [dbo].[Catalog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3-10-2019 08:59:06 ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Sequence [dbo].[catalog_type_hilo]    Script Date: 3-10-2019 08:59:06 ******/
DROP SEQUENCE [dbo].[catalog_type_hilo]
GO
/****** Object:  Sequence [dbo].[catalog_hilo]    Script Date: 3-10-2019 08:59:06 ******/
DROP SEQUENCE [dbo].[catalog_hilo]
GO
/****** Object:  Sequence [dbo].[catalog_brand_hilo]    Script Date: 3-10-2019 08:59:06 ******/
DROP SEQUENCE [dbo].[catalog_brand_hilo]
GO
/****** Object:  Database [catalogdb]    Script Date: 3-10-2019 08:59:06 ******/
DROP DATABASE [catalogdb]
GO
/****** Object:  Database [catalogdb]    Script Date: 3-10-2019 08:59:06 ******/
CREATE DATABASE [catalogdb]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 1 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [catalogdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [catalogdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [catalogdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [catalogdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [catalogdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [catalogdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [catalogdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [catalogdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [catalogdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [catalogdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [catalogdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [catalogdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [catalogdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [catalogdb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [catalogdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [catalogdb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [catalogdb] SET  MULTI_USER 
GO
ALTER DATABASE [catalogdb] SET ENCRYPTION ON
GO
ALTER DATABASE [catalogdb] SET QUERY_STORE = ON
GO
ALTER DATABASE [catalogdb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
/****** Object:  Sequence [dbo].[catalog_brand_hilo]    Script Date: 3-10-2019 08:59:07 ******/
CREATE SEQUENCE [dbo].[catalog_brand_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Sequence [dbo].[catalog_hilo]    Script Date: 3-10-2019 08:59:07 ******/
CREATE SEQUENCE [dbo].[catalog_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Sequence [dbo].[catalog_type_hilo]    Script Date: 3-10-2019 08:59:07 ******/
CREATE SEQUENCE [dbo].[catalog_type_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3-10-2019 08:59:07 ******/
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
/****** Object:  Table [dbo].[Catalog]    Script Date: 3-10-2019 08:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[Id] [int] NOT NULL,
	[CatalogBrandId] [int] NOT NULL,
	[CatalogTypeId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PictureFileName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[AvailableStock] [int] NOT NULL,
	[MaxStockThreshold] [int] NOT NULL,
	[OnReorder] [bit] NOT NULL,
	[RestockThreshold] [int] NOT NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogBrand]    Script Date: 3-10-2019 08:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogBrand](
	[Id] [int] NOT NULL,
	[Brand] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CatalogBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogType]    Script Date: 3-10-2019 08:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogType](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CatalogType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntegrationEventLog]    Script Date: 3-10-2019 08:59:07 ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161103152832_Initial', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161103153420_UpdateTableNames', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170314083211_AddEventTable', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170316012921_RefactoringToIntegrationEventLog', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170316120022_RefactoringEventBusNamespaces', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170322124244_RemoveIntegrationEventLogs', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170322145434_IntegrationEventInitial', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170509130025_AddStockProductItem', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170530133114_AddPictureFile', N'2.2.6-servicing-10079')
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (1, 2, 2, N'.NET Bot Black Hoodie', N'.NET Bot Black Hoodie', N'1.png', CAST(19.50 AS Decimal(18, 2)), 99, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (2, 2, 1, N'.NET Black & White Mug', N'.NET Black & White Mug', N'2.png', CAST(8.50 AS Decimal(18, 2)), 92, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (3, 5, 2, N'Prism White T-Shirt', N'Prism White T-Shirt', N'3.png', CAST(12.00 AS Decimal(18, 2)), 100, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (4, 2, 2, N'.NET Foundation T-shirt', N'.NET Foundation T-shirt', N'4.png', CAST(12.00 AS Decimal(18, 2)), 100, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (5, 5, 3, N'Roslyn Red Sheet', N'Roslyn Red Sheet', N'5.png', CAST(8.50 AS Decimal(18, 2)), 100, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (6, 2, 2, N'.NET Blue Hoodie', N'.NET Blue Hoodie', N'6.png', CAST(12.00 AS Decimal(18, 2)), 98, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (7, 5, 2, N'Roslyn Red T-Shirt', N'Roslyn Red T-Shirt', N'7.png', CAST(12.00 AS Decimal(18, 2)), 99, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (8, 5, 2, N'Kudu Purple Hoodie', N'Kudu Purple Hoodie', N'8.png', CAST(8.50 AS Decimal(18, 2)), 100, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (9, 5, 1, N'Cup<T> White Mug', N'Cup<T> White Mug', N'9.png', CAST(12.00 AS Decimal(18, 2)), 100, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (10, 2, 3, N'.NET Foundation Sheet', N'.NET Foundation Sheet', N'10.png', CAST(12.00 AS Decimal(18, 2)), 100, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (11, 2, 3, N'Cup<T> Sheet', N'Cup<T> Sheet', N'11.png', CAST(8.50 AS Decimal(18, 2)), 100, 0, 0, 0)
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureFileName], [Price], [AvailableStock], [MaxStockThreshold], [OnReorder], [RestockThreshold]) VALUES (12, 5, 2, N'Prism White TShirt', N'Prism White TShirt', N'12.png', CAST(12.00 AS Decimal(18, 2)), 99, 0, 0, 0)
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (1, N'Azure')
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (2, N'.NET')
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (3, N'Visual Studio')
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (4, N'SQL Server')
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (5, N'Other')
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (1, N'Mug')
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (2, N'T-Shirt')
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (3, N'Sheet')
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (4, N'USB Memory Stick')
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'05516459-e096-4845-94c5-01f85fdd1f95', N'{"OrderId":81,"Id":"05516459-e096-4845-94c5-01f85fdd1f95","CreationDate":"2019-09-27T17:08:09.7682146Z"}', CAST(N'2019-09-27T17:08:09.7682146' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b5d9297e-c3a5-48cf-a7ef-020e18075165', N'{"OrderId":91,"Id":"b5d9297e-c3a5-48cf-a7ef-020e18075165","CreationDate":"2019-09-27T17:08:09.0797666Z"}', CAST(N'2019-09-27T17:08:09.0797666' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'0e04451f-9446-484c-a4d9-03a8f10c3872', N'{"OrderId":11,"Id":"0e04451f-9446-484c-a4d9-03a8f10c3872","CreationDate":"2019-09-25T11:56:11.1546546Z"}', CAST(N'2019-09-25T11:56:11.1546546' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'40088549-1dca-424f-84c3-063fc22df3fd', N'{"OrderId":101,"Id":"40088549-1dca-424f-84c3-063fc22df3fd","CreationDate":"2019-09-27T17:08:07.3987888Z"}', CAST(N'2019-09-27T17:08:07.3987888' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cd42e03e-3618-4c07-bda9-0a7f248d5226', N'{"OrderId":101,"Id":"cd42e03e-3618-4c07-bda9-0a7f248d5226","CreationDate":"2019-09-27T17:08:06.6431899Z"}', CAST(N'2019-09-27T17:08:06.6431899' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'9ca64429-1b65-4b5c-8205-0b1e9d6e0fa8', N'{"OrderId":101,"Id":"9ca64429-1b65-4b5c-8205-0b1e9d6e0fa8","CreationDate":"2019-09-27T17:08:06.6864313Z"}', CAST(N'2019-09-27T17:08:06.6864313' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'10537156-e8f9-458b-94d9-0caa3cb003f0', N'{"OrderId":81,"Id":"10537156-e8f9-458b-94d9-0caa3cb003f0","CreationDate":"2019-09-27T17:08:08.7198669Z"}', CAST(N'2019-09-27T17:08:08.7198669' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4b573f89-5734-4207-a1f3-0cde6be33654', N'{"OrderId":91,"Id":"4b573f89-5734-4207-a1f3-0cde6be33654","CreationDate":"2019-09-27T17:08:09.1004449Z"}', CAST(N'2019-09-27T17:08:09.1004449' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'0e2ee5b8-a2cb-4d6d-a5ae-0f1a1fe8b337', N'{"OrderId":61,"Id":"0e2ee5b8-a2cb-4d6d-a5ae-0f1a1fe8b337","CreationDate":"2019-09-26T14:56:40.0780845Z"}', CAST(N'2019-09-26T14:56:40.0780845' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'350d50e3-0ef2-4a2a-b393-11842f41ca33', N'{"OrderId":91,"Id":"350d50e3-0ef2-4a2a-b393-11842f41ca33","CreationDate":"2019-09-27T17:08:09.4121572Z"}', CAST(N'2019-09-27T17:08:09.4121572' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5c6bae82-e550-420c-adc9-11969166159d', N'{"OrderId":101,"Id":"5c6bae82-e550-420c-adc9-11969166159d","CreationDate":"2019-09-27T17:08:07.3235505Z"}', CAST(N'2019-09-27T17:08:07.3235505' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'0af89a10-97c6-404a-8585-13fd801991ab', N'{"OrderId":91,"Id":"0af89a10-97c6-404a-8585-13fd801991ab","CreationDate":"2019-09-27T17:08:09.2729035Z"}', CAST(N'2019-09-27T17:08:09.2729035' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'ee87beaa-7950-43d0-ab25-15ef744b2721', N'{"OrderId":51,"Id":"ee87beaa-7950-43d0-ab25-15ef744b2721","CreationDate":"2019-09-26T14:56:39.8714096Z"}', CAST(N'2019-09-26T14:56:39.8714096' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'3ce63f5c-24d5-4fe6-a447-160527de832d', N'{"OrderId":101,"Id":"3ce63f5c-24d5-4fe6-a447-160527de832d","CreationDate":"2019-09-27T17:08:36.2993949Z"}', CAST(N'2019-09-27T17:08:36.2993949' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'17004324-8328-477e-bed0-1b1cb6b4a1bb', N'{"OrderId":32,"Id":"17004324-8328-477e-bed0-1b1cb6b4a1bb","CreationDate":"2019-09-26T14:56:40.1491961Z"}', CAST(N'2019-09-26T14:56:40.1491961' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'954497a6-c29d-4f68-a06e-21042a70e8bf', N'{"OrderId":111,"Id":"954497a6-c29d-4f68-a06e-21042a70e8bf","CreationDate":"2019-09-27T17:24:51.4599704Z"}', CAST(N'2019-09-27T17:24:51.4599704' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b40adc70-944e-4d36-a76c-2173a02fb00c', N'{"OrderId":91,"Id":"b40adc70-944e-4d36-a76c-2173a02fb00c","CreationDate":"2019-09-27T17:08:09.3292936Z"}', CAST(N'2019-09-27T17:08:09.3292936' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'ac1ecac3-bbf1-4c5d-8c48-230645165925', N'{"OrderId":41,"Id":"ac1ecac3-bbf1-4c5d-8c48-230645165925","CreationDate":"2019-09-26T14:56:39.2803102Z"}', CAST(N'2019-09-26T14:56:39.2803102' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'63246a76-5dab-499a-91c5-23fe8355ac10', N'{"OrderId":91,"Id":"63246a76-5dab-499a-91c5-23fe8355ac10","CreationDate":"2019-09-27T17:08:07.4095255Z"}', CAST(N'2019-09-27T17:08:07.4095255' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'058a2064-4c58-4d68-ab4c-2472999d70ca', N'{"OrderId":91,"Id":"058a2064-4c58-4d68-ab4c-2472999d70ca","CreationDate":"2019-09-27T17:08:07.739625Z"}', CAST(N'2019-09-27T17:08:07.7396250' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b3996907-84ef-42c3-96bc-25d484fb162b', N'{"OrderId":91,"Id":"b3996907-84ef-42c3-96bc-25d484fb162b","CreationDate":"2019-09-27T17:08:09.0551463Z"}', CAST(N'2019-09-27T17:08:09.0551463' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'3b67e1ea-b7e5-4ff8-8cf7-25de7e708d7d', N'{"OrderId":91,"Id":"3b67e1ea-b7e5-4ff8-8cf7-25de7e708d7d","CreationDate":"2019-09-27T17:08:08.1301878Z"}', CAST(N'2019-09-27T17:08:08.1301878' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b49082ea-0993-4279-accd-2873f6169958', N'{"OrderId":101,"Id":"b49082ea-0993-4279-accd-2873f6169958","CreationDate":"2019-09-27T17:08:08.0058692Z"}', CAST(N'2019-09-27T17:08:08.0058692' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fa31708a-c6ca-4f82-9998-2b24d6408d00', N'{"OrderId":31,"Id":"fa31708a-c6ca-4f82-9998-2b24d6408d00","CreationDate":"2019-09-26T14:56:40.3125108Z"}', CAST(N'2019-09-26T14:56:40.3125108' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1627c87a-c172-405c-87ab-2e659bc614f4', N'{"OrderId":91,"Id":"1627c87a-c172-405c-87ab-2e659bc614f4","CreationDate":"2019-09-27T17:08:08.4015856Z"}', CAST(N'2019-09-27T17:08:08.4015856' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4194a812-762e-4605-a8c3-32d2f2f129ce', N'{"OrderId":11,"Id":"4194a812-762e-4605-a8c3-32d2f2f129ce","CreationDate":"2019-09-25T11:56:10.9435933Z"}', CAST(N'2019-09-25T11:56:10.9435933' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cb7d4969-9b66-4035-a114-33d887280079', N'{"OrderId":91,"Id":"cb7d4969-9b66-4035-a114-33d887280079","CreationDate":"2019-09-27T17:08:07.9071863Z"}', CAST(N'2019-09-27T17:08:07.9071863' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'ed1ece38-8a76-4a56-a6bb-3430be619594', N'{"OrderId":101,"Id":"ed1ece38-8a76-4a56-a6bb-3430be619594","CreationDate":"2019-09-27T17:08:08.7085275Z"}', CAST(N'2019-09-27T17:08:08.7085275' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'08a9ece9-e0be-4800-a901-345f3a5ad448', N'{"OrderId":91,"Id":"08a9ece9-e0be-4800-a901-345f3a5ad448","CreationDate":"2019-09-27T17:08:07.836435Z"}', CAST(N'2019-09-27T17:08:07.8364350' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'932ff2f4-ad11-4306-a323-3664ec82765e', N'{"OrderId":41,"Id":"932ff2f4-ad11-4306-a323-3664ec82765e","CreationDate":"2019-09-26T14:56:39.3593619Z"}', CAST(N'2019-09-26T14:56:39.3593619' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'3bda4fa8-6f22-4173-b739-36a3ce375ee4', N'{"OrderId":51,"Id":"3bda4fa8-6f22-4173-b739-36a3ce375ee4","CreationDate":"2019-09-26T14:56:39.2716462Z"}', CAST(N'2019-09-26T14:56:39.2716462' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'111a5adc-4d7d-4486-b17f-3760f5c1a55e', N'{"OrderId":101,"Id":"111a5adc-4d7d-4486-b17f-3760f5c1a55e","CreationDate":"2019-09-27T17:08:36.3752983Z"}', CAST(N'2019-09-27T17:08:36.3752983' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'527cc28b-1438-45c0-9bc4-3cdd912266cf', N'{"OrderId":91,"Id":"527cc28b-1438-45c0-9bc4-3cdd912266cf","CreationDate":"2019-09-27T17:08:09.3370173Z"}', CAST(N'2019-09-27T17:08:09.3370173' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd39f65c2-79b6-44ab-bd65-3e18c06a09c0', N'{"OrderId":51,"Id":"d39f65c2-79b6-44ab-bd65-3e18c06a09c0","CreationDate":"2019-09-26T14:56:39.9730634Z"}', CAST(N'2019-09-26T14:56:39.9730634' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'15252fcb-c49e-493e-a172-3ed591a89ea7', N'{"OrderId":91,"Id":"15252fcb-c49e-493e-a172-3ed591a89ea7","CreationDate":"2019-09-27T17:08:07.6221482Z"}', CAST(N'2019-09-27T17:08:07.6221482' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fbfe7dab-ab52-46da-9b8e-411a6f124c35', N'{"OrderId":81,"Id":"fbfe7dab-ab52-46da-9b8e-411a6f124c35","CreationDate":"2019-09-27T17:08:36.6499678Z"}', CAST(N'2019-09-27T17:08:36.6499678' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fc699dc1-6070-4353-bd66-439101b81a60', N'{"OrderId":81,"Id":"fc699dc1-6070-4353-bd66-439101b81a60","CreationDate":"2019-09-27T17:08:06.6709994Z"}', CAST(N'2019-09-27T17:08:06.6709994' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'74c44a27-ede4-4230-bfcd-46ef046b65b6', N'{"OrderId":32,"Id":"74c44a27-ede4-4230-bfcd-46ef046b65b6","CreationDate":"2019-09-26T14:56:39.9408986Z"}', CAST(N'2019-09-26T14:56:39.9408986' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'17265481-38ec-40f3-a9fb-48588a53d54f', N'{"OrderId":91,"Id":"17265481-38ec-40f3-a9fb-48588a53d54f","CreationDate":"2019-09-27T17:08:07.7993399Z"}', CAST(N'2019-09-27T17:08:07.7993399' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'a958145f-70f1-4294-91cc-50aeeb4fb3ed', N'{"OrderId":101,"Id":"a958145f-70f1-4294-91cc-50aeeb4fb3ed","CreationDate":"2019-09-27T17:08:36.3327876Z"}', CAST(N'2019-09-27T17:08:36.3327876' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5f47bf89-abbf-4744-8228-562f10b38358', N'{"OrderId":101,"Id":"5f47bf89-abbf-4744-8228-562f10b38358","CreationDate":"2019-09-27T17:08:07.3930046Z"}', CAST(N'2019-09-27T17:08:07.3930046' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cb60a7dc-1ada-4fe3-8e2b-581f6f18dae6', N'{"OrderId":101,"Id":"cb60a7dc-1ada-4fe3-8e2b-581f6f18dae6","CreationDate":"2019-09-27T17:08:09.2553578Z"}', CAST(N'2019-09-27T17:08:09.2553578' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cc888b16-5cdd-4fac-bc7d-5943ab4d61d2', N'{"OrderId":121,"Id":"cc888b16-5cdd-4fac-bc7d-5943ab4d61d2","CreationDate":"2019-09-27T18:17:27.5494662Z"}', CAST(N'2019-09-27T18:17:27.5494662' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'24cae571-c5f5-4fdd-8f1a-5c32c4c18133', N'{"OrderId":32,"Id":"24cae571-c5f5-4fdd-8f1a-5c32c4c18133","CreationDate":"2019-09-26T14:56:39.5513105Z"}', CAST(N'2019-09-26T14:56:39.5513105' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'dce906dd-f1c9-414c-8b4e-5c978b570dc3', N'{"OrderId":91,"Id":"dce906dd-f1c9-414c-8b4e-5c978b570dc3","CreationDate":"2019-09-27T17:08:09.6695281Z"}', CAST(N'2019-09-27T17:08:09.6695281' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1c9ac9b7-24cf-425a-aaaa-5c9a34be8bec', N'{"OrderId":61,"Id":"1c9ac9b7-24cf-425a-aaaa-5c9a34be8bec","CreationDate":"2019-09-26T14:56:40.4116735Z"}', CAST(N'2019-09-26T14:56:40.4116735' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'ad84e019-93d0-4b85-833a-5ca50f44874a', N'{"OrderId":91,"Id":"ad84e019-93d0-4b85-833a-5ca50f44874a","CreationDate":"2019-09-27T17:08:08.2256212Z"}', CAST(N'2019-09-27T17:08:08.2256212' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1afd48bc-c5c8-4c81-bedb-5d3bd5b2aedf', N'{"OrderId":81,"Id":"1afd48bc-c5c8-4c81-bedb-5d3bd5b2aedf","CreationDate":"2019-09-27T17:08:36.6595162Z"}', CAST(N'2019-09-27T17:08:36.6595162' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'dbf071fd-137f-4386-ad1c-5dcfc9293c12', N'{"OrderId":101,"Id":"dbf071fd-137f-4386-ad1c-5dcfc9293c12","CreationDate":"2019-09-27T17:08:36.3584907Z"}', CAST(N'2019-09-27T17:08:36.3584907' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'861ee68d-5596-4887-a030-5e1a185f4291', N'{"OrderId":101,"Id":"861ee68d-5596-4887-a030-5e1a185f4291","CreationDate":"2019-09-27T17:08:36.3045662Z"}', CAST(N'2019-09-27T17:08:36.3045662' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'b130c101-0174-4c9e-bf55-5eec66fa4700', N'{"OrderId":51,"Id":"b130c101-0174-4c9e-bf55-5eec66fa4700","CreationDate":"2019-09-26T14:56:39.8583503Z"}', CAST(N'2019-09-26T14:56:39.8583503' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cb928ba6-c6c0-43cc-b40a-611f2d824b4d', N'{"OrderId":91,"Id":"cb928ba6-c6c0-43cc-b40a-611f2d824b4d","CreationDate":"2019-09-27T17:08:07.0827768Z"}', CAST(N'2019-09-27T17:08:07.0827768' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'55cb5261-5542-4820-9435-61a021229367', N'{"OrderId":81,"Id":"55cb5261-5542-4820-9435-61a021229367","CreationDate":"2019-09-27T17:08:10.0197497Z"}', CAST(N'2019-09-27T17:08:10.0197497' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e36cfdec-95a8-4835-b608-62b4130ac5ef', N'{"OrderId":31,"Id":"e36cfdec-95a8-4835-b608-62b4130ac5ef","CreationDate":"2019-09-26T14:56:39.3689306Z"}', CAST(N'2019-09-26T14:56:39.3689306' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1c05832a-1c4b-474c-8395-638b6f278556', N'{"OrderId":101,"Id":"1c05832a-1c4b-474c-8395-638b6f278556","CreationDate":"2019-09-27T17:08:07.9538803Z"}', CAST(N'2019-09-27T17:08:07.9538803' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5cd19390-f818-49f8-a4a0-639fce236cdb', N'{"OrderId":81,"Id":"5cd19390-f818-49f8-a4a0-639fce236cdb","CreationDate":"2019-09-27T17:08:09.639237Z"}', CAST(N'2019-09-27T17:08:09.6392370' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e8715c24-ceba-40fe-b898-6680f6425f94', N'{"OrderId":101,"Id":"e8715c24-ceba-40fe-b898-6680f6425f94","CreationDate":"2019-09-27T17:08:08.9910617Z"}', CAST(N'2019-09-27T17:08:08.9910617' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'f049e532-5c9f-44ee-8649-67e58a391cbb', N'{"OrderId":91,"Id":"f049e532-5c9f-44ee-8649-67e58a391cbb","CreationDate":"2019-09-27T17:08:07.5849827Z"}', CAST(N'2019-09-27T17:08:07.5849827' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'23654eb6-6d43-49c9-a491-6b6b82a72192', N'{"OrderId":41,"Id":"23654eb6-6d43-49c9-a491-6b6b82a72192","CreationDate":"2019-09-26T14:56:39.2702897Z"}', CAST(N'2019-09-26T14:56:39.2702897' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5a426a15-6559-4ca9-8d14-6e0d794d727e', N'{"OrderId":91,"Id":"5a426a15-6559-4ca9-8d14-6e0d794d727e","CreationDate":"2019-09-27T17:08:09.3967715Z"}', CAST(N'2019-09-27T17:08:09.3967715' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'ed27c8ca-73ec-4347-9eae-702c46eb6c37', N'{"OrderId":101,"Id":"ed27c8ca-73ec-4347-9eae-702c46eb6c37","CreationDate":"2019-09-27T17:08:36.3390804Z"}', CAST(N'2019-09-27T17:08:36.3390804' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'be982d84-a448-442d-9d8b-7237628cab63', N'{"OrderId":11,"Id":"be982d84-a448-442d-9d8b-7237628cab63","CreationDate":"2019-09-25T11:56:11.1933323Z"}', CAST(N'2019-09-25T11:56:11.1933323' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c3587ac9-218e-4d23-8b9f-72d12a4cdc00', N'{"OrderId":101,"Id":"c3587ac9-218e-4d23-8b9f-72d12a4cdc00","CreationDate":"2019-09-27T17:08:08.4429027Z"}', CAST(N'2019-09-27T17:08:08.4429027' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'eda8e5f1-7746-4c76-89c6-7351f445f66c', N'{"OrderId":81,"Id":"eda8e5f1-7746-4c76-89c6-7351f445f66c","CreationDate":"2019-09-27T17:08:09.7731965Z"}', CAST(N'2019-09-27T17:08:09.7731965' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'ae6188ca-ce11-4144-953a-73c9150ab34b', N'{"OrderId":91,"Id":"ae6188ca-ce11-4144-953a-73c9150ab34b","CreationDate":"2019-09-27T17:08:09.3490455Z"}', CAST(N'2019-09-27T17:08:09.3490455' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cd361ae2-9fb9-4e0d-a3ae-752ac9c10ca4', N'{"OrderId":32,"Id":"cd361ae2-9fb9-4e0d-a3ae-752ac9c10ca4","CreationDate":"2019-09-26T14:56:40.2247384Z"}', CAST(N'2019-09-26T14:56:40.2247384' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'34bf9676-3e40-477a-aa97-759fe5b57b4f', N'{"OrderId":61,"Id":"34bf9676-3e40-477a-aa97-759fe5b57b4f","CreationDate":"2019-09-26T14:56:40.160094Z"}', CAST(N'2019-09-26T14:56:40.1600940' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'80759ed4-7fb2-4f93-8c06-75f6a5bdfa12', N'{"OrderId":81,"Id":"80759ed4-7fb2-4f93-8c06-75f6a5bdfa12","CreationDate":"2019-09-27T17:08:08.5377137Z"}', CAST(N'2019-09-27T17:08:08.5377137' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'0278c844-2858-43b1-b4f3-799bf27b557f', N'{"OrderId":131,"Id":"0278c844-2858-43b1-b4f3-799bf27b557f","CreationDate":"2019-09-28T09:26:20.458028Z"}', CAST(N'2019-09-28T09:26:20.4580280' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'31bf021b-9c38-421b-81a5-7cd6e2322471', N'{"OrderId":91,"Id":"31bf021b-9c38-421b-81a5-7cd6e2322471","CreationDate":"2019-09-27T17:08:09.0275419Z"}', CAST(N'2019-09-27T17:08:09.0275419' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'508549e6-ed59-4cea-af60-7ce0a4d14521', N'{"OrderId":101,"Id":"508549e6-ed59-4cea-af60-7ce0a4d14521","CreationDate":"2019-09-27T17:08:36.6318357Z"}', CAST(N'2019-09-27T17:08:36.6318357' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'9f5ecb1f-6dfb-478c-9318-7d2a7bbc2ccf', N'{"OrderId":32,"Id":"9f5ecb1f-6dfb-478c-9318-7d2a7bbc2ccf","CreationDate":"2019-09-26T14:56:40.4473248Z"}', CAST(N'2019-09-26T14:56:40.4473248' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4a46d9b0-7054-4ebc-9ae0-7daf7f916eed', N'{"OrderId":91,"Id":"4a46d9b0-7054-4ebc-9ae0-7daf7f916eed","CreationDate":"2019-09-27T17:08:08.4358795Z"}', CAST(N'2019-09-27T17:08:08.4358795' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5a6c14aa-f266-416b-9a82-815b68f3c68e', N'{"OrderId":81,"Id":"5a6c14aa-f266-416b-9a82-815b68f3c68e","CreationDate":"2019-09-27T17:08:08.0217762Z"}', CAST(N'2019-09-27T17:08:08.0217762' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd1d1d70a-4e4c-4632-b5a0-81a110781bcc', N'{"OrderId":81,"Id":"d1d1d70a-4e4c-4632-b5a0-81a110781bcc","CreationDate":"2019-09-27T17:08:06.7898928Z"}', CAST(N'2019-09-27T17:08:06.7898928' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c7bf0eb1-6d53-4d7d-97ee-81b87e7b9e6b', N'{"OrderId":81,"Id":"c7bf0eb1-6d53-4d7d-97ee-81b87e7b9e6b","CreationDate":"2019-09-27T17:08:36.3245056Z"}', CAST(N'2019-09-27T17:08:36.3245056' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'70b154e5-6101-42ae-8a88-82a7532f89cd', N'{"OrderId":11,"Id":"70b154e5-6101-42ae-8a88-82a7532f89cd","CreationDate":"2019-09-25T11:56:11.4536974Z"}', CAST(N'2019-09-25T11:56:11.4536974' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1e974e4b-8ae9-437c-94fe-82c09f00ffab', N'{"OrderId":101,"Id":"1e974e4b-8ae9-437c-94fe-82c09f00ffab","CreationDate":"2019-09-27T17:08:07.419971Z"}', CAST(N'2019-09-27T17:08:07.4199710' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4bcb8802-511c-43fd-b50f-82ccc279b122', N'{"OrderId":91,"Id":"4bcb8802-511c-43fd-b50f-82ccc279b122","CreationDate":"2019-09-27T17:08:08.6195915Z"}', CAST(N'2019-09-27T17:08:08.6195915' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'3f6f8e08-6753-4477-b937-837035d2e251', N'{"OrderId":91,"Id":"3f6f8e08-6753-4477-b937-837035d2e251","CreationDate":"2019-09-27T17:08:07.3305095Z"}', CAST(N'2019-09-27T17:08:07.3305095' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e3b098cf-32e7-45b2-b8fb-8496e7309e25', N'{"OrderId":101,"Id":"e3b098cf-32e7-45b2-b8fb-8496e7309e25","CreationDate":"2019-09-27T17:08:36.2769989Z"}', CAST(N'2019-09-27T17:08:36.2769989' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'bb44e6d9-1590-440a-aea2-849b54a49ae9', N'{"OrderId":91,"Id":"bb44e6d9-1590-440a-aea2-849b54a49ae9","CreationDate":"2019-09-27T17:08:08.1604905Z"}', CAST(N'2019-09-27T17:08:08.1604905' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'31f6b1e4-d0d1-4d54-bcc1-84d73ac30d24', N'{"OrderId":32,"Id":"31f6b1e4-d0d1-4d54-bcc1-84d73ac30d24","CreationDate":"2019-09-26T14:56:39.8704101Z"}', CAST(N'2019-09-26T14:56:39.8704101' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e0d53174-0803-40f5-9134-869a846effed', N'{"OrderId":91,"Id":"e0d53174-0803-40f5-9134-869a846effed","CreationDate":"2019-09-27T17:08:09.7214688Z"}', CAST(N'2019-09-27T17:08:09.7214688' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'273c62c1-3da1-489b-bbeb-87422d357aad', N'{"OrderId":81,"Id":"273c62c1-3da1-489b-bbeb-87422d357aad","CreationDate":"2019-09-27T17:08:09.7055482Z"}', CAST(N'2019-09-27T17:08:09.7055482' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'229f043f-5a50-4be3-8faa-8d068e7b4e72', N'{"OrderId":32,"Id":"229f043f-5a50-4be3-8faa-8d068e7b4e72","CreationDate":"2019-09-26T14:56:40.5328092Z"}', CAST(N'2019-09-26T14:56:40.5328092' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'956405c3-919b-4253-b994-8e8b94ca7806', N'{"OrderId":101,"Id":"956405c3-919b-4253-b994-8e8b94ca7806","CreationDate":"2019-09-27T17:08:07.3368361Z"}', CAST(N'2019-09-27T17:08:07.3368361' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'7732ec85-d76d-450e-a05b-91b67c048587', N'{"OrderId":91,"Id":"7732ec85-d76d-450e-a05b-91b67c048587","CreationDate":"2019-09-27T17:08:09.6608236Z"}', CAST(N'2019-09-27T17:08:09.6608236' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'58ec7884-55ae-4e4b-8355-91c68554a07e', N'{"OrderId":91,"Id":"58ec7884-55ae-4e4b-8355-91c68554a07e","CreationDate":"2019-09-27T17:08:08.1134953Z"}', CAST(N'2019-09-27T17:08:08.1134953' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'8aaf3aa9-f24a-4a97-91db-936876d97ad0', N'{"OrderId":31,"Id":"8aaf3aa9-f24a-4a97-91db-936876d97ad0","CreationDate":"2019-09-26T14:56:39.2806018Z"}', CAST(N'2019-09-26T14:56:39.2806018' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e3b0ce69-f6c3-4b05-ba84-98866d69d6e8', N'{"OrderId":91,"Id":"e3b0ce69-f6c3-4b05-ba84-98866d69d6e8","CreationDate":"2019-09-27T17:08:08.4524535Z"}', CAST(N'2019-09-27T17:08:08.4524535' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5d58703e-22f7-489b-9628-999d182e2b62', N'{"OrderId":91,"Id":"5d58703e-22f7-489b-9628-999d182e2b62","CreationDate":"2019-09-27T17:08:09.6851575Z"}', CAST(N'2019-09-27T17:08:09.6851575' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'238dfd7c-7d54-4280-8e99-99c517b63161', N'{"OrderId":31,"Id":"238dfd7c-7d54-4280-8e99-99c517b63161","CreationDate":"2019-09-26T14:56:39.9592246Z"}', CAST(N'2019-09-26T14:56:39.9592246' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'930b352f-1e91-40c7-a16f-9bfc1dcd72cf', N'{"OrderId":91,"Id":"930b352f-1e91-40c7-a16f-9bfc1dcd72cf","CreationDate":"2019-09-27T17:08:07.7712147Z"}', CAST(N'2019-09-27T17:08:07.7712147' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'4b63711e-2fb3-402d-9cd5-9d98e9ef54aa', N'{"OrderId":81,"Id":"4b63711e-2fb3-402d-9cd5-9d98e9ef54aa","CreationDate":"2019-09-27T17:08:08.880789Z"}', CAST(N'2019-09-27T17:08:08.8807890' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'6fe20b56-95d6-4a51-8c70-9f3f3b1636c2', N'{"OrderId":11,"Id":"6fe20b56-95d6-4a51-8c70-9f3f3b1636c2","CreationDate":"2019-09-25T11:56:11.1518416Z"}', CAST(N'2019-09-25T11:56:11.1518416' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'14420b2f-de46-4f5f-b58f-9fa1a0677d31', N'{"OrderId":32,"Id":"14420b2f-de46-4f5f-b58f-9fa1a0677d31","CreationDate":"2019-09-26T14:56:40.5187723Z"}', CAST(N'2019-09-26T14:56:40.5187723' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd9ab3297-1542-4189-a50f-a22c80910876', N'{"OrderId":61,"Id":"d9ab3297-1542-4189-a50f-a22c80910876","CreationDate":"2019-09-26T14:56:40.3283093Z"}', CAST(N'2019-09-26T14:56:40.3283093' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'fe461fda-30dd-4514-87b7-a23d8e2aafae', N'{"OrderId":81,"Id":"fe461fda-30dd-4514-87b7-a23d8e2aafae","CreationDate":"2019-09-27T17:08:36.3184448Z"}', CAST(N'2019-09-27T17:08:36.3184448' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'da111bed-7176-4e02-93d7-a3231862417e', N'{"OrderId":21,"Id":"da111bed-7176-4e02-93d7-a3231862417e","CreationDate":"2019-09-25T15:56:40.8175627Z"}', CAST(N'2019-09-25T15:56:40.8175627' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
GO
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'622a11dc-19fc-46f1-818e-a32b3c7c3a2a', N'{"OrderId":91,"Id":"622a11dc-19fc-46f1-818e-a32b3c7c3a2a","CreationDate":"2019-09-27T17:08:07.6153061Z"}', CAST(N'2019-09-27T17:08:07.6153061' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd9a9e0d2-771a-479b-9064-a659a6e3b7a2', N'{"OrderId":101,"Id":"d9a9e0d2-771a-479b-9064-a659a6e3b7a2","CreationDate":"2019-09-27T17:08:36.3111083Z"}', CAST(N'2019-09-27T17:08:36.3111083' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'95670fc5-bd98-41d2-8958-a936319efa15', N'{"OrderId":81,"Id":"95670fc5-bd98-41d2-8958-a936319efa15","CreationDate":"2019-09-27T17:08:09.7406009Z"}', CAST(N'2019-09-27T17:08:09.7406009' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1aa2f26d-fab0-4218-a6ec-a96a4ada51f7', N'{"OrderId":61,"Id":"1aa2f26d-fab0-4218-a6ec-a96a4ada51f7","CreationDate":"2019-09-26T14:56:40.4916931Z"}', CAST(N'2019-09-26T14:56:40.4916931' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'67d0de4f-ca6a-415a-a148-aab088f97806', N'{"OrderId":11,"Id":"67d0de4f-ca6a-415a-a148-aab088f97806","CreationDate":"2019-09-25T11:56:10.9400349Z"}', CAST(N'2019-09-25T11:56:10.9400349' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'dac741ed-760a-47f6-bb6a-ab4f8460a8e1', N'{"OrderId":101,"Id":"dac741ed-760a-47f6-bb6a-ab4f8460a8e1","CreationDate":"2019-09-27T17:08:06.6612879Z"}', CAST(N'2019-09-27T17:08:06.6612879' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e3fd861c-c557-4cee-b7e5-aba5199843e2', N'{"OrderId":31,"Id":"e3fd861c-c557-4cee-b7e5-aba5199843e2","CreationDate":"2019-09-26T14:56:39.5170312Z"}', CAST(N'2019-09-26T14:56:39.5170312' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'dc98b33a-295b-4baa-9ed8-adc16e6cb18a', N'{"OrderId":81,"Id":"dc98b33a-295b-4baa-9ed8-adc16e6cb18a","CreationDate":"2019-09-27T17:08:09.1524451Z"}', CAST(N'2019-09-27T17:08:09.1524451' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'1e2fcdac-44ea-433b-bbd5-ae778ece5e52', N'{"OrderId":81,"Id":"1e2fcdac-44ea-433b-bbd5-ae778ece5e52","CreationDate":"2019-09-27T17:08:08.3763085Z"}', CAST(N'2019-09-27T17:08:08.3763085' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c613f808-003d-4327-9a4a-b2178af405d0', N'{"OrderId":101,"Id":"c613f808-003d-4327-9a4a-b2178af405d0","CreationDate":"2019-09-27T17:08:08.6481666Z"}', CAST(N'2019-09-27T17:08:08.6481666' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'12dcc806-0073-4880-833a-b4a4ef9c8253', N'{"OrderId":91,"Id":"12dcc806-0073-4880-833a-b4a4ef9c8253","CreationDate":"2019-09-27T17:08:07.5379991Z"}', CAST(N'2019-09-27T17:08:07.5379991' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'5b47c590-614e-42dd-b02a-b897e4d56ede', N'{"OrderId":101,"Id":"5b47c590-614e-42dd-b02a-b897e4d56ede","CreationDate":"2019-09-27T17:08:06.6770559Z"}', CAST(N'2019-09-27T17:08:06.6770559' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'08497414-0d63-4de1-966c-b8e8e01ef186', N'{"OrderId":81,"Id":"08497414-0d63-4de1-966c-b8e8e01ef186","CreationDate":"2019-09-27T17:08:36.674479Z"}', CAST(N'2019-09-27T17:08:36.6744790' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'61a3ec94-ab6a-4eaa-9f05-bacdd6d4c6c4', N'{"OrderId":31,"Id":"61a3ec94-ab6a-4eaa-9f05-bacdd6d4c6c4","CreationDate":"2019-09-26T14:56:40.1975091Z"}', CAST(N'2019-09-26T14:56:40.1975091' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'aa84b0dd-0b26-40cc-89d3-bf0d6e1b8a66', N'{"OrderId":141,"Id":"aa84b0dd-0b26-40cc-89d3-bf0d6e1b8a66","CreationDate":"2019-09-28T09:36:48.2722908Z"}', CAST(N'2019-09-28T09:36:48.2722908' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'04a8bcdc-9e64-439f-8bc2-c0a83f582d38', N'{"OrderId":91,"Id":"04a8bcdc-9e64-439f-8bc2-c0a83f582d38","CreationDate":"2019-09-27T17:08:09.060685Z"}', CAST(N'2019-09-27T17:08:09.0606850' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'9f1c55cd-3c6b-4a29-ad51-c18ec395034b', N'{"OrderId":31,"Id":"9f1c55cd-3c6b-4a29-ad51-c18ec395034b","CreationDate":"2019-09-26T14:56:40.1653119Z"}', CAST(N'2019-09-26T14:56:40.1653119' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'85c29f4a-4540-4195-84d3-c27ba067bf53', N'{"OrderId":61,"Id":"85c29f4a-4540-4195-84d3-c27ba067bf53","CreationDate":"2019-09-26T14:56:40.4257316Z"}', CAST(N'2019-09-26T14:56:40.4257316' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'7ffb6c65-ad55-48a7-9e70-c6dfd347cf78', N'{"OrderId":91,"Id":"7ffb6c65-ad55-48a7-9e70-c6dfd347cf78","CreationDate":"2019-09-27T17:08:07.4041415Z"}', CAST(N'2019-09-27T17:08:07.4041415' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd368908e-ebe3-41e5-beef-ca8c7cbc486c', N'{"OrderId":81,"Id":"d368908e-ebe3-41e5-beef-ca8c7cbc486c","CreationDate":"2019-09-27T17:08:09.7793514Z"}', CAST(N'2019-09-27T17:08:09.7793514' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'cc972a57-9c7e-4522-93e1-ca8e1aed4bc8', N'{"OrderId":91,"Id":"cc972a57-9c7e-4522-93e1-ca8e1aed4bc8","CreationDate":"2019-09-27T17:08:08.7402112Z"}', CAST(N'2019-09-27T17:08:08.7402112' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'0d53ed65-41f6-4d03-9859-caf973af8924', N'{"OrderId":81,"Id":"0d53ed65-41f6-4d03-9859-caf973af8924","CreationDate":"2019-09-27T17:08:08.7322114Z"}', CAST(N'2019-09-27T17:08:08.7322114' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd2bd67f7-ece8-40aa-bc16-cd45c72a65fe', N'{"OrderId":81,"Id":"d2bd67f7-ece8-40aa-bc16-cd45c72a65fe","CreationDate":"2019-09-27T17:08:06.6803257Z"}', CAST(N'2019-09-27T17:08:06.6803257' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'd1e1f17a-3e50-41c5-955d-d1a8a7313165', N'{"OrderId":51,"Id":"d1e1f17a-3e50-41c5-955d-d1a8a7313165","CreationDate":"2019-09-26T14:56:39.8740987Z"}', CAST(N'2019-09-26T14:56:39.8740987' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c631ab70-0738-48de-96e1-d3ce8cf1a893', N'{"OrderId":11,"Id":"c631ab70-0738-48de-96e1-d3ce8cf1a893","CreationDate":"2019-09-25T11:56:11.001073Z"}', CAST(N'2019-09-25T11:56:11.0010730' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'00dc02d1-8d37-48d3-9530-d58f991b62c1', N'{"OrderId":61,"Id":"00dc02d1-8d37-48d3-9530-d58f991b62c1","CreationDate":"2019-09-26T14:56:40.4168668Z"}', CAST(N'2019-09-26T14:56:40.4168668' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'764a6d44-5dcf-4c08-a0c3-d8ddfccc732d', N'{"OrderId":81,"Id":"764a6d44-5dcf-4c08-a0c3-d8ddfccc732d","CreationDate":"2019-09-27T17:08:08.6931462Z"}', CAST(N'2019-09-27T17:08:08.6931462' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c57e441d-2ab7-47f2-9251-db492aae9eb1', N'{"OrderId":101,"Id":"c57e441d-2ab7-47f2-9251-db492aae9eb1","CreationDate":"2019-09-27T17:08:36.6554592Z"}', CAST(N'2019-09-27T17:08:36.6554592' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e270a68c-c468-4e5c-a94d-dcb8f3cbe896', N'{"OrderId":91,"Id":"e270a68c-c468-4e5c-a94d-dcb8f3cbe896","CreationDate":"2019-09-27T17:08:08.4177712Z"}', CAST(N'2019-09-27T17:08:08.4177712' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e2380b8c-bebd-4114-8210-dd133fd4b533', N'{"OrderId":71,"Id":"e2380b8c-bebd-4114-8210-dd133fd4b533","CreationDate":"2019-09-26T14:56:40.4726425Z"}', CAST(N'2019-09-26T14:56:40.4726425' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c5fe75d4-5ac2-4a17-b769-df35d660a8dc', N'{"OrderId":61,"Id":"c5fe75d4-5ac2-4a17-b769-df35d660a8dc","CreationDate":"2019-09-26T14:56:40.195731Z"}', CAST(N'2019-09-26T14:56:40.1957310' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'67866180-fb9e-4728-93c1-e8640309e46d', N'{"OrderId":91,"Id":"67866180-fb9e-4728-93c1-e8640309e46d","CreationDate":"2019-09-27T17:08:09.4346117Z"}', CAST(N'2019-09-27T17:08:09.4346117' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'860af5f8-37c7-4009-9a8c-e8b8c2207fd2', N'{"OrderId":81,"Id":"860af5f8-37c7-4009-9a8c-e8b8c2207fd2","CreationDate":"2019-09-27T17:08:36.6777363Z"}', CAST(N'2019-09-27T17:08:36.6777363' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'497d5859-4d98-436f-a185-ee9470a3fdf6', N'{"OrderId":81,"Id":"497d5859-4d98-436f-a185-ee9470a3fdf6","CreationDate":"2019-09-27T17:08:08.2732545Z"}', CAST(N'2019-09-27T17:08:08.2732545' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c86c04a2-0f2e-44d0-bf30-f06a1685ac36', N'{"OrderId":91,"Id":"c86c04a2-0f2e-44d0-bf30-f06a1685ac36","CreationDate":"2019-09-27T17:08:07.7580392Z"}', CAST(N'2019-09-27T17:08:07.7580392' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'493b2dc4-801f-4261-9321-f07a60c159a0', N'{"OrderId":32,"Id":"493b2dc4-801f-4261-9321-f07a60c159a0","CreationDate":"2019-09-26T14:56:39.3791305Z"}', CAST(N'2019-09-26T14:56:39.3791305' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'60544928-e7bf-47c6-9415-f1511ca4f49b', N'{"OrderId":81,"Id":"60544928-e7bf-47c6-9415-f1511ca4f49b","CreationDate":"2019-09-27T17:08:09.2538746Z"}', CAST(N'2019-09-27T17:08:09.2538746' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'54790e0a-cc98-4428-b78c-f37b5619da2b', N'{"OrderId":32,"Id":"54790e0a-cc98-4428-b78c-f37b5619da2b","CreationDate":"2019-09-26T14:56:39.9091506Z"}', CAST(N'2019-09-26T14:56:39.9091506' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'3688b59b-f743-45cd-b094-f3bcd0be8212', N'{"OrderId":101,"Id":"3688b59b-f743-45cd-b094-f3bcd0be8212","CreationDate":"2019-09-27T17:08:09.0284846Z"}', CAST(N'2019-09-27T17:08:09.0284846' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'275c73eb-99b8-4831-9ecc-f49746c291ca', N'{"OrderId":101,"Id":"275c73eb-99b8-4831-9ecc-f49746c291ca","CreationDate":"2019-09-27T17:08:08.6420288Z"}', CAST(N'2019-09-27T17:08:08.6420288' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'97831328-61c9-4207-998d-f5b4869dc817', N'{"OrderId":101,"Id":"97831328-61c9-4207-998d-f5b4869dc817","CreationDate":"2019-09-27T17:08:06.6492143Z"}', CAST(N'2019-09-27T17:08:06.6492143' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'f9be7e27-6975-4d45-994e-f5c02d947775', N'{"OrderId":61,"Id":"f9be7e27-6975-4d45-994e-f5c02d947775","CreationDate":"2019-09-26T14:56:40.4449671Z"}', CAST(N'2019-09-26T14:56:40.4449671' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'20a4b897-1eed-48f8-acee-f68a9b22dd5f', N'{"OrderId":81,"Id":"20a4b897-1eed-48f8-acee-f68a9b22dd5f","CreationDate":"2019-09-27T17:08:09.4034425Z"}', CAST(N'2019-09-27T17:08:09.4034425' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'8dd2c5ea-72a4-4bbc-85c3-f6c58f2e45c8', N'{"OrderId":61,"Id":"8dd2c5ea-72a4-4bbc-85c3-f6c58f2e45c8","CreationDate":"2019-09-26T14:56:40.1106969Z"}', CAST(N'2019-09-26T14:56:40.1106969' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c124f22b-4b06-48ce-94ad-f7dc7df72f42', N'{"OrderId":81,"Id":"c124f22b-4b06-48ce-94ad-f7dc7df72f42","CreationDate":"2019-09-27T17:08:08.0362953Z"}', CAST(N'2019-09-27T17:08:08.0362953' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'2f52d980-8d15-4046-8849-f9a1ff48fb13', N'{"OrderId":41,"Id":"2f52d980-8d15-4046-8849-f9a1ff48fb13","CreationDate":"2019-09-26T14:56:39.2702781Z"}', CAST(N'2019-09-26T14:56:39.2702781' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e9b6c262-1603-46aa-b9be-fb87ddd81d69', N'{"OrderId":81,"Id":"e9b6c262-1603-46aa-b9be-fb87ddd81d69","CreationDate":"2019-09-27T17:08:08.0679838Z"}', CAST(N'2019-09-27T17:08:08.0679838' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'c5a08ee8-fe74-40e2-9c9a-fc876c0876f8', N'{"OrderId":81,"Id":"c5a08ee8-fe74-40e2-9c9a-fc876c0876f8","CreationDate":"2019-09-27T17:08:06.6431863Z"}', CAST(N'2019-09-27T17:08:06.6431863' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'9c2dc570-493e-4ce3-a49f-fca8a1be1d29', N'{"OrderId":101,"Id":"9c2dc570-493e-4ce3-a49f-fca8a1be1d29","CreationDate":"2019-09-27T17:08:08.8888479Z"}', CAST(N'2019-09-27T17:08:08.8888479' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'09864397-f539-4e05-883c-fce4dcd3b00e', N'{"OrderId":61,"Id":"09864397-f539-4e05-883c-fce4dcd3b00e","CreationDate":"2019-09-26T14:56:40.2004431Z"}', CAST(N'2019-09-26T14:56:40.2004431' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
INSERT [dbo].[IntegrationEventLog] ([EventId], [Content], [CreationTime], [EventTypeName], [State], [TimesSent]) VALUES (N'e7e654e5-e67d-4883-aff4-ffc2823eb67e', N'{"OrderId":31,"Id":"e7e654e5-e67d-4883-aff4-ffc2823eb67e","CreationDate":"2019-09-26T14:56:39.8926426Z"}', CAST(N'2019-09-26T14:56:39.8926426' AS DateTime2), N'Microsoft.eShopOnContainers.Services.Catalog.API.IntegrationEvents.Events.OrderStockConfirmedIntegrationEvent', 2, 1)
/****** Object:  Index [IX_Catalog_CatalogBrandId]    Script Date: 3-10-2019 08:59:07 ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_CatalogBrandId] ON [dbo].[Catalog]
(
	[CatalogBrandId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_CatalogTypeId]    Script Date: 3-10-2019 08:59:07 ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_CatalogTypeId] ON [dbo].[Catalog]
(
	[CatalogTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Catalog] ADD  DEFAULT ((0)) FOR [AvailableStock]
GO
ALTER TABLE [dbo].[Catalog] ADD  DEFAULT ((0)) FOR [MaxStockThreshold]
GO
ALTER TABLE [dbo].[Catalog] ADD  DEFAULT ((0)) FOR [OnReorder]
GO
ALTER TABLE [dbo].[Catalog] ADD  DEFAULT ((0)) FOR [RestockThreshold]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_CatalogBrand_CatalogBrandId] FOREIGN KEY([CatalogBrandId])
REFERENCES [dbo].[CatalogBrand] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_CatalogBrand_CatalogBrandId]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_CatalogType_CatalogTypeId] FOREIGN KEY([CatalogTypeId])
REFERENCES [dbo].[CatalogType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_CatalogType_CatalogTypeId]
GO
ALTER DATABASE [catalogdb] SET  READ_WRITE 
GO
