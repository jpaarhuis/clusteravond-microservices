ALTER TABLE [dbo].[IdentityClaims] DROP CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId]
GO
ALTER TABLE [dbo].[ClientSecrets] DROP CONSTRAINT [FK_ClientSecrets_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientScopes] DROP CONSTRAINT [FK_ClientScopes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientRedirectUris] DROP CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientProperties] DROP CONSTRAINT [FK_ClientProperties_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris] DROP CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientIdPRestrictions] DROP CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientGrantTypes] DROP CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientCorsOrigins] DROP CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientClaims] DROP CONSTRAINT [FK_ClientClaims_Clients_ClientId]
GO
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[ApiSecrets] DROP CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiScopes] DROP CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiScopeClaims] DROP CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId]
GO
ALTER TABLE [dbo].[ApiClaims] DROP CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId]
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
GO
/****** Object:  Index [IX_IdentityResources_Name]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_IdentityResources_Name] ON [dbo].[IdentityResources]
GO
/****** Object:  Index [IX_IdentityClaims_IdentityResourceId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_IdentityClaims_IdentityResourceId] ON [dbo].[IdentityClaims]
GO
/****** Object:  Index [IX_ClientSecrets_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientSecrets_ClientId] ON [dbo].[ClientSecrets]
GO
/****** Object:  Index [IX_ClientScopes_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientScopes_ClientId] ON [dbo].[ClientScopes]
GO
/****** Object:  Index [IX_Clients_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_Clients_ClientId] ON [dbo].[Clients]
GO
/****** Object:  Index [IX_ClientRedirectUris_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientRedirectUris_ClientId] ON [dbo].[ClientRedirectUris]
GO
/****** Object:  Index [IX_ClientProperties_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientProperties_ClientId] ON [dbo].[ClientProperties]
GO
/****** Object:  Index [IX_ClientPostLogoutRedirectUris_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientPostLogoutRedirectUris_ClientId] ON [dbo].[ClientPostLogoutRedirectUris]
GO
/****** Object:  Index [IX_ClientIdPRestrictions_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientIdPRestrictions_ClientId] ON [dbo].[ClientIdPRestrictions]
GO
/****** Object:  Index [IX_ClientGrantTypes_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientGrantTypes_ClientId] ON [dbo].[ClientGrantTypes]
GO
/****** Object:  Index [IX_ClientCorsOrigins_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientCorsOrigins_ClientId] ON [dbo].[ClientCorsOrigins]
GO
/****** Object:  Index [IX_ClientClaims_ClientId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ClientClaims_ClientId] ON [dbo].[ClientClaims]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [EmailIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
GO
/****** Object:  Index [IX_ApiSecrets_ApiResourceId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ApiSecrets_ApiResourceId] ON [dbo].[ApiSecrets]
GO
/****** Object:  Index [IX_ApiScopes_Name]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ApiScopes_Name] ON [dbo].[ApiScopes]
GO
/****** Object:  Index [IX_ApiScopes_ApiResourceId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ApiScopes_ApiResourceId] ON [dbo].[ApiScopes]
GO
/****** Object:  Index [IX_ApiScopeClaims_ApiScopeId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ApiScopeClaims_ApiScopeId] ON [dbo].[ApiScopeClaims]
GO
/****** Object:  Index [IX_ApiResources_Name]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ApiResources_Name] ON [dbo].[ApiResources]
GO
/****** Object:  Index [IX_ApiClaims_ApiResourceId]    Script Date: 3-10-2019 09:01:14 ******/
DROP INDEX [IX_ApiClaims_ApiResourceId] ON [dbo].[ApiClaims]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[PersistedGrants]
GO
/****** Object:  Table [dbo].[IdentityResources]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[IdentityResources]
GO
/****** Object:  Table [dbo].[IdentityClaims]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[IdentityClaims]
GO
/****** Object:  Table [dbo].[ClientSecrets]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientSecrets]
GO
/****** Object:  Table [dbo].[ClientScopes]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientScopes]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[Clients]
GO
/****** Object:  Table [dbo].[ClientRedirectUris]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientRedirectUris]
GO
/****** Object:  Table [dbo].[ClientProperties]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientProperties]
GO
/****** Object:  Table [dbo].[ClientPostLogoutRedirectUris]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientPostLogoutRedirectUris]
GO
/****** Object:  Table [dbo].[ClientIdPRestrictions]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientIdPRestrictions]
GO
/****** Object:  Table [dbo].[ClientGrantTypes]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientGrantTypes]
GO
/****** Object:  Table [dbo].[ClientCorsOrigins]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientCorsOrigins]
GO
/****** Object:  Table [dbo].[ClientClaims]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ClientClaims]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[ApiSecrets]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ApiSecrets]
GO
/****** Object:  Table [dbo].[ApiScopes]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ApiScopes]
GO
/****** Object:  Table [dbo].[ApiScopeClaims]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ApiScopeClaims]
GO
/****** Object:  Table [dbo].[ApiResources]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ApiResources]
GO
/****** Object:  Table [dbo].[ApiClaims]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[ApiClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3-10-2019 09:01:14 ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Database [identitydb]    Script Date: 3-10-2019 09:01:14 ******/
DROP DATABASE [identitydb]
GO
/****** Object:  Database [identitydb]    Script Date: 3-10-2019 09:01:14 ******/
CREATE DATABASE [identitydb]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 1 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [identitydb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [identitydb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [identitydb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [identitydb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [identitydb] SET ARITHABORT OFF 
GO
ALTER DATABASE [identitydb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [identitydb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [identitydb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [identitydb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [identitydb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [identitydb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [identitydb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [identitydb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [identitydb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [identitydb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [identitydb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [identitydb] SET  MULTI_USER 
GO
ALTER DATABASE [identitydb] SET ENCRYPTION ON
GO
ALTER DATABASE [identitydb] SET QUERY_STORE = ON
GO
ALTER DATABASE [identitydb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3-10-2019 09:01:14 ******/
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
/****** Object:  Table [dbo].[ApiClaims]    Script Date: 3-10-2019 09:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ApiClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiResources]    Script Date: 3-10-2019 09:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ApiResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiScopeClaims]    Script Date: 3-10-2019 09:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiScopeClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApiScopeId] [int] NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ApiScopeClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiScopes]    Script Date: 3-10-2019 09:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Emphasize] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Required] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
 CONSTRAINT [PK_ApiScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiSecrets]    Script Date: 3-10-2019 09:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NULL,
	[Value] [nvarchar](2000) NULL,
 CONSTRAINT [PK_ApiSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3-10-2019 09:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[CardHolderName] [nvarchar](max) NOT NULL,
	[CardNumber] [nvarchar](max) NOT NULL,
	[CardType] [int] NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Expiration] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityNumber] [nvarchar](max) NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[State] [nvarchar](max) NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[ZipCode] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientClaims]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ClientClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCorsOrigins]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCorsOrigins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Origin] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_ClientCorsOrigins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientGrantTypes]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientGrantTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[GrantType] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ClientGrantTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientIdPRestrictions]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientIdPRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Provider] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ClientIdPRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientPostLogoutRedirectUris]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientPostLogoutRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[PostLogoutRedirectUri] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_ClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientProperties]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_ClientProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientRedirectUris]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[RedirectUri] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_ClientRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AbsoluteRefreshTokenLifetime] [int] NOT NULL,
	[AccessTokenLifetime] [int] NOT NULL,
	[AccessTokenType] [int] NOT NULL,
	[AllowAccessTokensViaBrowser] [bit] NOT NULL,
	[AllowOfflineAccess] [bit] NOT NULL,
	[AllowPlainTextPkce] [bit] NOT NULL,
	[AllowRememberConsent] [bit] NOT NULL,
	[AlwaysIncludeUserClaimsInIdToken] [bit] NOT NULL,
	[AlwaysSendClientClaims] [bit] NOT NULL,
	[AuthorizationCodeLifetime] [int] NOT NULL,
	[BackChannelLogoutSessionRequired] [bit] NOT NULL,
	[BackChannelLogoutUri] [nvarchar](2000) NULL,
	[ClientClaimsPrefix] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[ClientName] [nvarchar](200) NULL,
	[ClientUri] [nvarchar](2000) NULL,
	[ConsentLifetime] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[EnableLocalLogin] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[FrontChannelLogoutSessionRequired] [bit] NOT NULL,
	[FrontChannelLogoutUri] [nvarchar](2000) NULL,
	[IdentityTokenLifetime] [int] NOT NULL,
	[IncludeJwtId] [bit] NOT NULL,
	[LogoUri] [nvarchar](2000) NULL,
	[PairWiseSubjectSalt] [nvarchar](200) NULL,
	[ProtocolType] [nvarchar](200) NOT NULL,
	[RefreshTokenExpiration] [int] NOT NULL,
	[RefreshTokenUsage] [int] NOT NULL,
	[RequireClientSecret] [bit] NOT NULL,
	[RequireConsent] [bit] NOT NULL,
	[RequirePkce] [bit] NOT NULL,
	[SlidingRefreshTokenLifetime] [int] NOT NULL,
	[UpdateAccessTokenClaimsOnRefresh] [bit] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientScopes]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ClientScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientSecrets]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NULL,
	[Value] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_ClientSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityClaims]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityResourceId] [int] NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_IdentityClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityResources]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Emphasize] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Required] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
 CONSTRAINT [PK_IdentityResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 3-10-2019 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[SubjectId] [nvarchar](200) NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170912114036_Initial', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170927170423_Grants', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170927170433_Config', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[ApiResources] ON 

INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (1, NULL, N'Orders Service', 1, N'orders')
INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (2, NULL, N'Basket Service', 1, N'basket')
INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (3, NULL, N'Marketing Service', 1, N'marketing')
INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (4, NULL, N'Locations Service', 1, N'locations')
INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (5, NULL, N'Mobile Shopping Aggregator', 1, N'mobileshoppingagg')
INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (6, NULL, N'Web Shopping Aggregator', 1, N'webshoppingagg')
INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (7, NULL, N'Ordering Signalr Hub', 1, N'orders.signalrhub')
INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (8, NULL, N'Webhooks registration Service', 1, N'webhooks')
SET IDENTITY_INSERT [dbo].[ApiResources] OFF
SET IDENTITY_INSERT [dbo].[ApiScopes] ON 

INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (1, 1, NULL, N'Orders Service', 0, N'orders', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (2, 2, NULL, N'Basket Service', 0, N'basket', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (3, 3, NULL, N'Marketing Service', 0, N'marketing', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (4, 4, NULL, N'Locations Service', 0, N'locations', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (5, 5, NULL, N'Mobile Shopping Aggregator', 0, N'mobileshoppingagg', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (6, 6, NULL, N'Web Shopping Aggregator', 0, N'webshoppingagg', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (7, 7, NULL, N'Ordering Signalr Hub', 0, N'orders.signalrhub', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (8, 8, NULL, N'Webhooks registration Service', 0, N'webhooks', 0, 1)
SET IDENTITY_INSERT [dbo].[ApiScopes] OFF
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'092ab6d5-6311-4c04-828d-7944f7f802fe', 0, N'eshop_50@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'12f3fbea-3c2e-46e9-ab42-11cbd7c1b9df', N'Nederland', N'eshop_50@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_50', N'ESHOP_50@RUBICON.NL', N'ESHOP_50@RUBICON.NL', N'AQAAAAEAACcQAAAAEEgbpHUj0HwrcW4Nk3+UsDFnkZHYkCBEgLJYHPq07CltFr3/7DAwkduz0KgXPwxkpA==', N'0347358800', 0, N'310', N'TYQDMUHDWNVGHGMOVG62ONKIS35AWQAG', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_50@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'0a8ea488-122a-4825-8f2a-75c9e6b69add', 0, N'eshop_21@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'9f0cfd23-17e0-4b5e-b1af-c32f8909b7bb', N'Nederland', N'eshop_21@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_21', N'ESHOP_21@RUBICON.NL', N'ESHOP_21@RUBICON.NL', N'AQAAAAEAACcQAAAAEMQSp2veeQoZAeBVEM2gik11uu29fNf9cSOcko3E7iY5Hubkd0BvHPwQvWeT3L98Pw==', N'0347358800', 0, N'310', N'NZNSDCDEHIDGO77EZS3FAR2XQLEDNJUR', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_21@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'0d50350c-1a24-4abb-a3a2-021bc172f70d', 0, N'eshop_01@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'55735652-6775-4024-af3f-1064bbbbba1c', N'Nederland', N'eshop_01@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_01', N'ESHOP_01@RUBICON.NL', N'ESHOP_01@RUBICON.NL', N'AQAAAAEAACcQAAAAEPztrsNoNwF+QoEyuRmmdzCxJ7n20DxFWKVsQOWEOCZsFYyxBcZDag6xaMsQ82lZJw==', N'0347358800', 0, N'310', N'RFNX2ZKVF4ILB2OZ4Q7B3UJ7SF5TNCTO', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_01@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'0eb332c7-4eab-4d62-b442-6a87eca9c5c6', 0, N'DemoUser', N'4012888888881881', 1, N'Redmond', N'4bec622a-dac3-477d-9885-a8186fad6560', N'U.S.', N'demouser@microsoft.com', 0, N'12/20', N'DemoLastName', 0, NULL, N'DemoUser', N'DEMOUSER@MICROSOFT.COM', N'DEMOUSER@MICROSOFT.COM', N'AQAAAAEAACcQAAAAEJ3qRcJ2mJ70nDJ3Hz3w4xCwto/JWKFgntBWXE7OWaR2GzE9RktO2udqf6L4CslR0g==', N'1234567890', 0, N'535', N'57e7da2b-beba-4f87-a1b9-442565f5079e', N'WA', N'15703 NE 61st Ct', 0, N'demouser@microsoft.com', N'98052')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'123fa6f9-672e-416c-88ac-57cb31660978', 0, N'eshop_41@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'c8458214-d1e5-43dd-9ad7-31ac0a5ea0eb', N'Nederland', N'eshop_41@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_41', N'ESHOP_41@RUBICON.NL', N'ESHOP_41@RUBICON.NL', N'AQAAAAEAACcQAAAAEJKRuYmxsEk6iscOIj7L/fCbmk7f9oRV+q6skhRBtBmZaWKCwOoGJ3anGg4b7m/usA==', N'0347358800', 0, N'310', N'DAMEIVBLVLKZMS2L5ESCGM5N7FXCS7FG', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_41@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'13c5c49f-c8fe-4838-96ff-b8e93b039296', 0, N'eshop_43@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'fbb5224a-ec72-40c6-bc24-7847ca5dabb3', N'Nederland', N'eshop_43@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_43', N'ESHOP_43@RUBICON.NL', N'ESHOP_43@RUBICON.NL', N'AQAAAAEAACcQAAAAEGahbWytM6YpTTG1M27TuY9k2wZr7jb6lmiC2KMklLj8UQvR3nPDEB7QSbprpAGzgQ==', N'0347358800', 0, N'310', N'UBQMO3K4V6MWSIVVBQCXHG5GJWDEYPRA', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_43@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'146480da-6f61-4c6f-a73a-c81afda3839a', 0, N'eshop_36@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'67193af2-b19b-498e-b995-23f3e7e9003f', N'Nederland', N'eshop_36@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_36', N'ESHOP_36@RUBICON.NL', N'ESHOP_36@RUBICON.NL', N'AQAAAAEAACcQAAAAEF/wW1tsfj0hrkW5tTdVNBDJixYwjDV6pDfx5z2KC0l4Ufua2viGY7vvU+NMlizYCQ==', N'0347358800', 0, N'310', N'XXUP5AOWHUBIR2OCUEHNICXHTNTA65VU', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_36@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'1655b801-2dd8-4011-b26a-0d69a85549ec', 0, N'eshop_15@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'8326f3dc-22b0-4c71-a94a-733a2f14151f', N'Nederland', N'eshop_15@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_15', N'ESHOP_15@RUBICON.NL', N'ESHOP_15@RUBICON.NL', N'AQAAAAEAACcQAAAAEOLpNl5Hy9IpTqI+sre+VkPvWy2bvkPjL7xo1s867OZ/JF1oncZteQ/iUT1SD8+J8Q==', N'0347358800', 0, N'310', N'FUSM2PK6JLHG52NMEQIIRECMPPGGNFOP', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_15@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'1b2b914d-4bc2-40e2-a61e-6b6545d095c7', 0, N'eshop_42@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'692e2e4f-7bc0-4645-a6a9-c15e26c56f81', N'Nederland', N'eshop_42@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_42', N'ESHOP_42@RUBICON.NL', N'ESHOP_42@RUBICON.NL', N'AQAAAAEAACcQAAAAEFCRXlvES7qz/NNmKVA3cFU7qs3LwUrKvWkz813m63umzhr+nyLlGVVspbNp8pbK2Q==', N'0347358800', 0, N'310', N'IVK4ZB2X4PVHCEHQC2OPOMXJSCVRZUR2', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_42@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'1d6d87a3-80de-4ff4-8d21-b7b2883b7c09', 0, N'eshop_35@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'c2c559cc-e87d-46df-9b13-65e07e6c7a90', N'Nederland', N'eshop_35@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_35', N'ESHOP_35@RUBICON.NL', N'ESHOP_35@RUBICON.NL', N'AQAAAAEAACcQAAAAEOBuVu3yaKmQYoTF38IwakzIBqgNisOA0XgIoYzeiJVh2wv/TyAeMAyJezBSdZO33g==', N'0347358800', 0, N'310', N'KGMZF4IHEPWDLOXSNNFP4NTDY5L4HZYM', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_35@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'1ec50de2-d36e-4ba8-96bf-cbd61603760e', 0, N'eshop_29@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'90615811-3560-4326-a39b-fc9974a1b0d5', N'Nederland', N'eshop_29@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_29', N'ESHOP_29@RUBICON.NL', N'ESHOP_29@RUBICON.NL', N'AQAAAAEAACcQAAAAENQIBU17N68sbTB+KDpTpYiu/rHslpebPk8cK4rHkjC+xQc2clrMv5bawNEIU6cLaQ==', N'0347358800', 0, N'310', N'57HTHENGE5OHOQSVIKDAECBQEFOL7U3F', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_29@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'21b51751-acee-43f4-8542-80efe678f45d', 0, N'eshop_06@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'c1f3c6f3-4680-4123-9f60-12f5eda7a282', N'Nederland', N'eshop_06@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_06', N'ESHOP_06@RUBICON.NL', N'ESHOP_06@RUBICON.NL', N'AQAAAAEAACcQAAAAEIRiyDk1BmIpVDLRAqKJ72Rh/MW4ppQApJkeWPrWpqr9HwmFnhTBz6VYAqDaERUeKQ==', N'0347358800', 0, N'310', N'ZI6ZZJKG2345PFTQ7OPROJ5YUGUMF6YG', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_06@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'2d73f65d-6b1a-48d6-a75a-ae40aade5d7c', 0, N'eshop_45@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'b5068d68-2e17-406d-a35a-2711910a976e', N'Nederland', N'eshop_45@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_45', N'ESHOP_45@RUBICON.NL', N'ESHOP_45@RUBICON.NL', N'AQAAAAEAACcQAAAAEKH18NKzkFA91p33ElKN5bzYHPtSyIxjOLnzA1FXMjdL9203wvD32pEY7iBw7Gv4Qg==', N'0347358800', 0, N'310', N'3CKBBA673O7P3MFVW6IG2ZLYJ5AJQ5LV', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_45@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'306a3416-f4d8-444c-b7e3-82af3548a5ba', 0, N'eshop_38@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'7b82b3bf-45ee-4935-8766-0fdaf292bef7', N'Nederland', N'eshop_38@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_38', N'ESHOP_38@RUBICON.NL', N'ESHOP_38@RUBICON.NL', N'AQAAAAEAACcQAAAAENFAZz9AdYwgnGy4KalYJuw15eYPFodm8+v5DM38kf/KHE524oRlALegKuCkmDZTCA==', N'0347358800', 0, N'310', N'NRGUCGPXPRR2MNKDYD2WVJH5APXAACFS', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_38@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'33545bf7-9d8b-41eb-98c4-1cb0fae5020f', 0, N'eshop_12@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'6d301b5f-92b4-474f-b5e7-c4abf2457c19', N'Nederland', N'eshop_12@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_12', N'ESHOP_12@RUBICON.NL', N'ESHOP_12@RUBICON.NL', N'AQAAAAEAACcQAAAAEJ+kFUic5ggqnKwsbnW0Pt6erSCEpHWO3f8flKNlnJgZ2VQ5f3CpIRzXPlZfNI7RYg==', N'0347358800', 0, N'310', N'GG2UCND7UCOYXSANY4FOIZEVG4BAJOKZ', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_12@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'34872e76-fbc1-4864-b425-a4a67e0c923a', 0, N'eshop_22@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'e95e8864-d44d-468e-a042-238a6ca7e379', N'Nederland', N'eshop_22@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_22', N'ESHOP_22@RUBICON.NL', N'ESHOP_22@RUBICON.NL', N'AQAAAAEAACcQAAAAEE54LHRLUL65u90k8sMmnGxFAzGoiEcUK4I1Dkf1R/QJzF3xNtDOw5tou8qs3zKd/w==', N'0347358800', 0, N'310', N'P5A35W5CO3EBEJ6M3AZQ6UYDLC7W744L', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_22@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'41cb3467-3c39-4f19-bfb2-9581ea38cac1', 0, N'eshop_19@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'bca74be6-f5ae-49ef-a86c-b53804bb4833', N'Nederland', N'eshop_19@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_19', N'ESHOP_19@RUBICON.NL', N'ESHOP_19@RUBICON.NL', N'AQAAAAEAACcQAAAAEFTRK4yIbz4mfSK92P6KJisi6BXpy/GL0yd7TIItEt2qAQ46VxX3PSKau+c8yqOR8g==', N'0347358800', 0, N'310', N'TSK2JSGGIMNVHANDLFOHEH5YVIIE3ODT', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_19@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'46266dd7-cf46-4154-b441-0606f3543bf5', 0, N'eshop_40@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'e928b91d-40f3-454e-8be1-f8e1080b1b1a', N'Nederland', N'eshop_40@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_40', N'ESHOP_40@RUBICON.NL', N'ESHOP_40@RUBICON.NL', N'AQAAAAEAACcQAAAAEM966nzuIWLgN8CH1Q7RWFNCmvMdrLmIkqLtfwOJhruySjgGcyPjUhvxxI3pUNe4hA==', N'0347358800', 0, N'310', N'TKF2ZUIMRLIK443J6TRJCAQSMVMJ7QBU', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_40@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'5826b14a-8e57-4837-b5bb-552631672fa4', 0, N'eshop_02@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'365590e6-cde9-478a-8051-634e81b0990c', N'Nederland', N'eshop_02@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_02', N'ESHOP_02@RUBICON.NL', N'ESHOP_02@RUBICON.NL', N'AQAAAAEAACcQAAAAELqD3brcQT2QFR6N4o1u+RXMT0y7oXxN2/Fcf5zRGaArnfyxug3YX+hqxH3qk0ajWA==', N'0347358800', 0, N'310', N'RSBMS3A4NUWPCEQVBAWA4ZFG56BM3CM7', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_02@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'5eefa66c-8b4c-4808-9de8-4816143f170e', 0, N'eshop_48@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'24567186-437e-4227-b20e-f4a6b0766b91', N'Nederland', N'eshop_48@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_48', N'ESHOP_48@RUBICON.NL', N'ESHOP_48@RUBICON.NL', N'AQAAAAEAACcQAAAAEOm8YrfiQ7+OwVOD2WlQQ4gs60gW7YdiRhYRd5fK9Tb+AuthYrfE6tjKCTXesK5p0w==', N'0347358800', 0, N'310', N'FEKMUVFPDEOFBN4JUZK2BRZPI7MA7PS3', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_48@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'6734d24e-25ff-4dea-92d9-2f77869484e7', 0, N'eshop_28@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'c4e45826-b435-4317-be78-e82f59254cd8', N'Nederland', N'eshop_28@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_28', N'ESHOP_28@RUBICON.NL', N'ESHOP_28@RUBICON.NL', N'AQAAAAEAACcQAAAAEOPJX/P3G3yDInhmpGiW8DynERazXKnTw6FK+Uv7OuVTHPvM2mg2btlGziqlYMh5rg==', N'0347358800', 0, N'310', N'MEFMM2EFNW7V56FY3LI5NF4LXAGHEESA', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_28@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'684a399d-1c08-48c3-83fc-848bf663f5cc', 0, N'eshop_37@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'9cafaacf-cb37-4115-b41d-6c7b531134a7', N'Nederland', N'eshop_37@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_37', N'ESHOP_37@RUBICON.NL', N'ESHOP_37@RUBICON.NL', N'AQAAAAEAACcQAAAAEM9+LxJ90P2V2QgX8s5/XTurDG03mdj1UpmEOn1lVN45FoFQ1ncNCwJpdr3r9H5m5A==', N'0347358800', 0, N'310', N'BCYCGGEHI6V762XA4KCSJUXIAES6J2H4', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_37@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'6e7d1011-c111-44d6-8c17-25194d69895a', 0, N'eshop_16@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'ce32b950-46ba-4163-8083-bf2f273c8fd6', N'Nederland', N'eshop_16@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_16', N'ESHOP_16@RUBICON.NL', N'ESHOP_16@RUBICON.NL', N'AQAAAAEAACcQAAAAEMnkNYShiFTncbgABb5PW61kIaG6A1r60pyh2RMwlNM3VOwfR7zMKvWsKgrg30XDSw==', N'0347358800', 0, N'310', N'ZPLZGNZ7WAYKAOLCXDBXQAMR6P35MWHZ', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_16@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'6fadc70e-5266-47d8-9d04-716a04177c4b', 0, N'eshop_33@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'56cac1ea-202a-41da-984d-53b23915d8af', N'Nederland', N'eshop_33@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_33', N'ESHOP_33@RUBICON.NL', N'ESHOP_33@RUBICON.NL', N'AQAAAAEAACcQAAAAEKYCsROMlBlA9zmgEzbBMPgiLewdoTlryYpAqFL1ec3Q7izMlvCajmH0XxnCirTM7Q==', N'0347358800', 0, N'310', N'I73QDUQER2UTDYM27LDMZNTS2IYQXBGL', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_33@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'79f93c74-ed52-4818-bd54-5253b6506083', 0, N'eshop_10@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'7f9840ac-c786-4b80-b0d0-6ab6f0b3955a', N'Nederland', N'eshop_10@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_10', N'ESHOP_10@RUBICON.NL', N'ESHOP_10@RUBICON.NL', N'AQAAAAEAACcQAAAAEJNaSGbk2jvtltaTJcSa4BvQqopAs+EWsU5I3yxeqID0JUkFW1vUJRwAovTV3wwi3w==', N'0347358800', 0, N'310', N'KJS7EUOGEK3HA4FIMXFFMMHRPONMNH5O', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_10@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'7f39fd8a-9e97-4057-a792-1938b999421c', 0, N'eshop_27@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'f41f2dc5-35fa-4890-bd3a-cdbf252d2126', N'Nederland', N'eshop_27@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_27', N'ESHOP_27@RUBICON.NL', N'ESHOP_27@RUBICON.NL', N'AQAAAAEAACcQAAAAEI+kxawl9WRSCHWuUblcwXyPDbya0hifo40vKj7UfDKEF9qDFlEroXbDPmeX/qtuQQ==', N'0347358800', 0, N'310', N'QTIIUB7PPERT3J4V7PO3JMNU5DRWLJXX', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_27@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'819152d0-3d26-4c76-a96e-5c42ca412b26', 0, N'eshop_32@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'c99b2fd8-783e-47ef-92fc-b9774b268293', N'Nederland', N'eshop_32@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_32', N'ESHOP_32@RUBICON.NL', N'ESHOP_32@RUBICON.NL', N'AQAAAAEAACcQAAAAEM7B3lab2sucJVxcaooOpEd7krHvYFTFi4Ndl7ih/GyH5CKranSNEVEf8EXTXnALTg==', N'0347358800', 0, N'310', N'LMOHDOOEXG4ZLJUOKJV2JZAW2BZY3U4Y', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_32@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'832f4782-6ef2-41d3-b707-22a6f028e568', 0, N'eshop_49@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'e410dc4b-41d8-4edf-b1d7-3db07f3408ec', N'Nederland', N'eshop_49@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_49', N'ESHOP_49@RUBICON.NL', N'ESHOP_49@RUBICON.NL', N'AQAAAAEAACcQAAAAEE/mGir6QaemftTfWoBnljiImz/CG+YuMsg4XHzkUZgweYPAP8mUmXmZ7TbtABv+pg==', N'0347358800', 0, N'310', N'LLPFZ5RRT5VM2V6VJAU33VC3QSC4FS6Y', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_49@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'8c922ca7-bcf8-4d04-ab70-7477db7a2fac', 0, N'eshop_05@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'9b5e83de-cdbb-4768-8034-b64a5d89fade', N'Nederland', N'eshop_05@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_05', N'ESHOP_05@RUBICON.NL', N'ESHOP_05@RUBICON.NL', N'AQAAAAEAACcQAAAAENO7PJVjUw4nl4joovRAiLigR/o8b13ZBS3+V5Xiba/nnygWY2wjvUV6AmyDjteqAw==', N'0347358800', 0, N'310', N'LNZL3J3X7DGU577OSJ6FV5KDZRZ7JC5R', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_05@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'93849212-0018-48a5-b701-8cc720d4bdfe', 0, N'eshop_18@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'aca7ed2c-ae3a-4362-900e-febe9174a282', N'Nederland', N'eshop_18@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_18', N'ESHOP_18@RUBICON.NL', N'ESHOP_18@RUBICON.NL', N'AQAAAAEAACcQAAAAEEFOI+04L8aJC9X8y1UlbFnqhhATzTpr5MHiDEu1ofBv6O1tQwDFexhlwDmjo+3MDw==', N'0347358800', 0, N'310', N'5QXZL64MW3SGCNERCEGNMKF5E6JTY4GJ', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_18@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'9d62b6a5-4dc7-481a-a670-43b37b44a88e', 0, N'eshop_34@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'4ba4d234-b7ef-4c09-b63d-1a20a3cba6b1', N'Nederland', N'eshop_34@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_34', N'ESHOP_34@RUBICON.NL', N'ESHOP_34@RUBICON.NL', N'AQAAAAEAACcQAAAAEO0hnlPWP/uuo9L3Tl7nv0SDWdurPEL1GqbvCxSKv4Tj33vowYyLd1mVyKg2ZvmznQ==', N'0347358800', 0, N'310', N'MWZJRVKI5XEGVOW4NJT2WY5UWOKNEUYJ', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_34@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'a2770e36-00c5-45cb-95c0-e3716c616a23', 0, N'eshop_24@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'2e2216e5-a260-4f7d-a783-70dc1b24c555', N'Nederland', N'eshop_24@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_24', N'ESHOP_24@RUBICON.NL', N'ESHOP_24@RUBICON.NL', N'AQAAAAEAACcQAAAAEOHdaJS7AwJa84sl93rrOYO6IFzF4UWCpRGBjhYjvKy5LWi4AC0kUwzdvpB0ct1w+w==', N'0347358800', 0, N'310', N'FTN7DPTORRXFU3GFSOBENLUD45WUVYUR', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_24@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'ac58a2e5-7880-420c-adef-88de345276bf', 0, N'RUBIRUBI', N'01234509876', 0, N'VIanen', N'579add6b-c2f5-4c6f-922d-1041f338f098', N'Nederland', N'w.vanschaijk@rubicon.nl', 0, N'12/21', N'Rubicon', 1, NULL, N'Wesley', N'W.VANSCHAIJK@RUBICON.NL', N'W.VANSCHAIJK@RUBICON.NL', N'AQAAAAEAACcQAAAAEFThv9irE6awsM/I+6xkFwUzoLnBD6Ldcyb2GEO2MRO25yYEL2gjxoDOEqYNbLLn6w==', N'012345678', 0, N'ABN', N'LDVTBBR226OWONXF4THREINYWBMZQVJA', N'Utrecht', N'Lage Biezenweg 5', 0, N'w.vanschaijk@rubicon.nl', N'1234AA')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'b60461c8-d271-42e3-bbe6-b15a54b7d19f', 0, N'eshop_20@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'a4d90441-5c64-474a-9c6a-bec988c112f7', N'Nederland', N'eshop_20@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_20', N'ESHOP_20@RUBICON.NL', N'ESHOP_20@RUBICON.NL', N'AQAAAAEAACcQAAAAEEPMn9P415kb3zYxk5QuCORshlC7J7GIoEpoQl0F8BeXHaWHV60ugPHFPaTIRTmK3w==', N'0347358800', 0, N'310', N'7T2427OVRD7JGK7WDC3LBA2TPRNJSSEE', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_20@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'ba438f9b-4e89-4819-acfe-d5ed719afec9', 0, N'eshop_39@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'd0756514-176c-4782-a018-8ab2843602f5', N'Nederland', N'eshop_39@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_39', N'ESHOP_39@RUBICON.NL', N'ESHOP_39@RUBICON.NL', N'AQAAAAEAACcQAAAAELQaAsOCbCgyXai9eCqR4ctg6B8+XiD3FB1qAX8nnnfxg3A1BuFaRB9Oc/zRmCjTiA==', N'0347358800', 0, N'310', N'7UXIXIRPSBZXWRMITFULU4MPLG7B7GHJ', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_39@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'c3bc7c71-da58-46ac-8f7e-a953aca55d63', 0, N'eshop_13@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'72439196-8909-4e90-9910-fc3a63b492d9', N'Nederland', N'eshop_13@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_13', N'ESHOP_13@RUBICON.NL', N'ESHOP_13@RUBICON.NL', N'AQAAAAEAACcQAAAAEGI/Pf7tfjc/RYNnafv+7q4MrpLCoFFm1kaG/Uf8NSsReh9bw85FJgIQW0Tos33nYg==', N'0347358800', 0, N'310', N'MAISSJOJIQYZTOAF3VI47INMQQNWYMD5', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_13@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'c468f80f-de4b-4438-bfb8-6d6c56f9b7ff', 0, N'eshop_03@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'a6a097ba-b883-4ab2-ad15-9ee6ecb2dd16', N'Nederland', N'eshop_03@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_03', N'ESHOP_03@RUBICON.NL', N'ESHOP_03@RUBICON.NL', N'AQAAAAEAACcQAAAAEEERTBxQLDGJmpDGlNrMXOEVPss5wvzUZ762uZ4008iY3pS0yNAvW41aX/3+op9eAw==', N'0347358800', 0, N'310', N'LA73BZPSC3WZ4RIZFO5VFWI5I6VPZGEO', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_03@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'c722b956-1192-4556-8723-1661a9f9a45b', 0, N'eshop_46@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'103fa4cc-1679-4039-866c-b41a5361b477', N'Nederland', N'eshop_46@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_46', N'ESHOP_46@RUBICON.NL', N'ESHOP_46@RUBICON.NL', N'AQAAAAEAACcQAAAAEBBp1EuVf0qk80ex0N3itkwRFZXC+D+MYTmsH/TbIqXU3GI1nfhnmb0e1o80HN31bg==', N'0347358800', 0, N'310', N'SEJCOVXCWOBXATY3BAJ3QFC7GA7552OQ', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_46@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'c82b3635-e734-4506-b8ff-98175f575d0e', 0, N'eshop_08@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'ffbb956e-89bf-47d0-8e68-6fb602ae08d9', N'Nederland', N'eshop_08@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_08', N'ESHOP_08@RUBICON.NL', N'ESHOP_08@RUBICON.NL', N'AQAAAAEAACcQAAAAENSoReJkcrPz5AypZ2f6lcL8142oQFJQhoiloILZERYGsRSfqu1bYDhQ7DXxCa3ibQ==', N'0347358800', 0, N'310', N'Q2PUJHETMW4CBBGKZNANGDRTP46AQDLF', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_08@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'cacea886-e3af-47f6-9b5e-e0f245903efd', 0, N'eshop_30@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'50b69de8-a2fa-4801-880e-cbe2ad5af2d4', N'Nederland', N'eshop_30@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_30', N'ESHOP_30@RUBICON.NL', N'ESHOP_30@RUBICON.NL', N'AQAAAAEAACcQAAAAELP/6YIZzOCW/SAvXrSYo0RdQ35dAmrdvLCk+0YSDSqYKSCAXB5EN23VDiq14ftT/Q==', N'0347358800', 0, N'310', N'FCUX4GLIVYO3IUE7KCNIYRLZNAISS25V', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_30@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'cb79d141-73d0-47cc-bf10-f0aa19bd668e', 0, N'eshop_31@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'9ef85fe1-85e3-427d-9044-4234fa115f45', N'Nederland', N'eshop_31@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_31', N'ESHOP_31@RUBICON.NL', N'ESHOP_31@RUBICON.NL', N'AQAAAAEAACcQAAAAEIqMBice+eFIjD2OcYSA+nJmRWDD6ZGqBe3amsHw3UjnNUOP327bpKCIi9zUZnu+5Q==', N'0347358800', 0, N'310', N'SO6ISQGL5EFVEATY34QM42KRXFXXTSAJ', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_31@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'd242544b-77aa-4dc5-ad53-f0c355cdd4dc', 0, N'eshop_17@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'46617cb0-7f98-421a-81e2-c94cc1303537', N'Nederland', N'eshop_17@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_17', N'ESHOP_17@RUBICON.NL', N'ESHOP_17@RUBICON.NL', N'AQAAAAEAACcQAAAAEF1cTwoQq9CczVDW6vKnVaCrE3645hVHj9UEnNwM1rUdHDHI+OXBGc8rGfIjlAqbSw==', N'0347358800', 0, N'310', N'IY44FNDLFSKYFOYI3YABUPRMRKZR7Y74', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_17@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'd8c3fc8b-f2c0-4342-8396-7fbc6a14b344', 0, N'eshop_14@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'5c2c7e14-6255-4525-888c-acd4b428c524', N'Nederland', N'eshop_14@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_14', N'ESHOP_14@RUBICON.NL', N'ESHOP_14@RUBICON.NL', N'AQAAAAEAACcQAAAAEDpYUlkOvZRxKCw3Mun2W2f3XLiHnlJZIC+XuDmvJb1uNBz/cwr9g1CBopKA6K447Q==', N'0347358800', 0, N'310', N'I7ITKJE7P26TKSXUXALFL7QXMF46WCYG', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_14@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'ded1e9a3-ec7a-42b5-a209-c405e82c647a', 0, N'eshop_11@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'5c384fa6-c5ab-49cd-946b-1f1f273da689', N'Nederland', N'eshop_11@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_11', N'ESHOP_11@RUBICON.NL', N'ESHOP_11@RUBICON.NL', N'AQAAAAEAACcQAAAAEF95OJT52Kdi/1+JJkJ4TReq5xQyKH7PsfA5Kj4M2nZJzr9d/CbpuNIySbknkUdX4w==', N'0347358800', 0, N'310', N'3HB5CFJSLPQXXTFW72EPLKXEJEVGM4UM', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_11@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'e0b008dd-6ca1-4ec5-954a-14da23e2fd40', 0, N'eshop_47@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'0c44efac-5352-49d2-ab2b-ab535ff4bc03', N'Nederland', N'eshop_47@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_47', N'ESHOP_47@RUBICON.NL', N'ESHOP_47@RUBICON.NL', N'AQAAAAEAACcQAAAAEJ/PJS1splKJIKbgRCHqbXukYvtrBzUIJx7HuGmhISgfjOVB5lXAJT4pYkAPsEodrg==', N'0347358800', 0, N'310', N'DDO6HCL43JVXMIEBS5XPDKELBGWTNEY5', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_47@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'e2e54361-5d59-4706-9a7a-754a8ecbacbc', 0, N'eshop_04@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'd278779a-b9cb-4e92-adc2-72436502d948', N'Nederland', N'eshop_04@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_04', N'ESHOP_04@RUBICON.NL', N'ESHOP_04@RUBICON.NL', N'AQAAAAEAACcQAAAAEBfPRsIDseV4UUHwG0D9hTPKf/fmBRsAGppv1x2CRDus/Z818W8NVcN19sgV1vIdlw==', N'0347358800', 0, N'310', N'VDMMGPD44GKEMXZESAMVU7CGTAL4J37L', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_04@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'e8f2538f-e2f7-4f6e-bfb8-ea875c69f0c5', 0, N'eshop_26@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'5ad2748c-c0ad-4230-a339-767eee6c0692', N'Nederland', N'eshop_26@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_26', N'ESHOP_26@RUBICON.NL', N'ESHOP_26@RUBICON.NL', N'AQAAAAEAACcQAAAAEBrZP1eMd3qAPTy3uZH4gt6mgrHnzoPYsIBeP4X/nKMrtfqwhxrBNYHs6tsCBOMVdQ==', N'0347358800', 0, N'310', N'2YZMDCPDGY76HBRBDNK3ERXXEILFRPIW', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_26@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'ebf8af49-d1e4-485c-ab48-db75ce504f5a', 0, N'eshop_44@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'24e7541e-9541-458b-a3ea-580ae70a9d87', N'Nederland', N'eshop_44@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_44', N'ESHOP_44@RUBICON.NL', N'ESHOP_44@RUBICON.NL', N'AQAAAAEAACcQAAAAEDHNm6RM8a1PDLem8Y3Lel4bEiwpC8+ZUJB6V/ccC/H7L6lr0LEsNwN6B8om3x0JbA==', N'0347358800', 0, N'310', N'45BTPQB2D2MZIRB2DSDHK62LUXR6WEFL', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_44@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'edac463b-75ae-481d-928a-39b1b2ca83c0', 0, N'eshop_23@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'576ba7b0-f4bf-4a8d-9a42-ff1f9663738c', N'Nederland', N'eshop_23@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_23', N'ESHOP_23@RUBICON.NL', N'ESHOP_23@RUBICON.NL', N'AQAAAAEAACcQAAAAEKEcpO5MqTPHeGL4i3KG2wM7752HpbXpkztdi/L+I70w1ZqdH85YvemWdyDNce4Q6A==', N'0347358800', 0, N'310', N'HIFDJHRMMKE5OW35NJ3UMTI6QGNDVWUY', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_23@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'f9ed78fc-95a5-4fd8-891b-c7cc9d4043bf', 0, N'eshop_09@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'8a99d1ed-f3cb-4382-b256-5a11951227f4', N'Nederland', N'eshop_09@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_09', N'ESHOP_09@RUBICON.NL', N'ESHOP_09@RUBICON.NL', N'AQAAAAEAACcQAAAAEBTKv/tWHmy6HbRAsUz7g93a8d67OetEX9t9IhbMfQ2dVlY/Q5Ta/vvNIxZtkbzCBg==', N'0347358800', 0, N'310', N'G2IBPUKUGJ6JFITHFVG6ULWLBH2DX6ML', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_09@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'fd0b7044-d724-40d4-a14b-62f60e2eba3c', 0, N'eshop_25@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'f3534350-8ebf-42d7-ae22-8eb90f7216ce', N'Nederland', N'eshop_25@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_25', N'ESHOP_25@RUBICON.NL', N'ESHOP_25@RUBICON.NL', N'AQAAAAEAACcQAAAAEHe1myIaX5hulZPbMRJ7cJMy0iZOob7Fm5ET8JJegEtJGaWd4QcZcfpuxRQVNLfkDw==', N'0347358800', 0, N'310', N'KEW2BLFIYQCBX2Z5WEYWDCPLEZ3XGWHA', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_25@rubicon.nl', N'4131 LV')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [CardHolderName], [CardNumber], [CardType], [City], [ConcurrencyStamp], [Country], [Email], [EmailConfirmed], [Expiration], [LastName], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityNumber], [SecurityStamp], [State], [Street], [TwoFactorEnabled], [UserName], [ZipCode]) VALUES (N'fd3ff406-f3df-459a-8db0-7e0f484ef686', 0, N'eshop_07@rubicon.nl', N'4012888888881881', 0, N'Vianen', N'b69e504b-16ec-44ec-821c-0b9819c7cd3b', N'Nederland', N'eshop_07@rubicon.nl', 0, N'11/19', N'AtCluster', 1, NULL, N'eshop_07', N'ESHOP_07@RUBICON.NL', N'ESHOP_07@RUBICON.NL', N'AQAAAAEAACcQAAAAENN5usT0JhvWNaSUmRk/hkcvyZygUlbPXeLpvGadIgVZsS39xqZWRO/8OnjceJNgpw==', N'0347358800', 0, N'310', N'A52GYGOP4CKTFSVZCKQD6ERL3AEJJE4G', N'Utrecht', N'Lage Biezenweg 5', 0, N'eshop_07@rubicon.nl', N'4131 LV')
SET IDENTITY_INSERT [dbo].[ClientCorsOrigins] ON 

INSERT [dbo].[ClientCorsOrigins] ([Id], [ClientId], [Origin]) VALUES (2, 14, N'http://localhost:5104')
SET IDENTITY_INSERT [dbo].[ClientCorsOrigins] OFF
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] ON 

INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (13, 17, N'hybrid')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (14, 18, N'hybrid')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (15, 16, N'hybrid')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (16, 19, N'implicit')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (17, 20, N'implicit')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (18, 15, N'hybrid')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (19, 22, N'implicit')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (20, 21, N'implicit')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (21, 14, N'implicit')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (22, 25, N'implicit')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (23, 23, N'implicit')
INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (24, 24, N'implicit')
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] OFF
SET IDENTITY_INSERT [dbo].[ClientPostLogoutRedirectUris] ON 

INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (13, 19, N'/swagger/')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (14, 25, N'/swagger/')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (15, 17, N'/signout-callback-oidc')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (16, 18, N'http://localhost:5100/signout-callback-oidc')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (17, 15, N'http://localhost:5105/xamarincallback/Account/Redirecting')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (18, 24, N'/swagger/')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (19, 16, N'http://localhost:5100/signout-callback-oidc')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (20, 21, N'/swagger/')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (21, 23, N'/swagger/')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (22, 14, N'http://localhost:5104/')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (23, 22, N'/swagger/')
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [ClientId], [PostLogoutRedirectUri]) VALUES (24, 20, N'/swagger/')
SET IDENTITY_INSERT [dbo].[ClientPostLogoutRedirectUris] OFF
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] ON 

INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (13, 19, N'/swagger/oauth2-redirect.html')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (14, 20, N'/swagger/oauth2-redirect.html')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (15, 16, N'http://localhost:5100/signin-oidc')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (16, 18, N'http://localhost:5100/signin-oidc')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (17, 21, N'/swagger/oauth2-redirect.html')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (18, 24, N'/swagger/oauth2-redirect.html')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (19, 23, N'/swagger/oauth2-redirect.html')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (20, 17, N'/signin-oidc')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (21, 22, N'/swagger/oauth2-redirect.html')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (22, 25, N'/swagger/oauth2-redirect.html')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (23, 15, N'http://localhost:5105/xamarincallback')
INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (24, 14, N'http://localhost:5104/')
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (14, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'js', N'eShop SPA OpenId Client', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 0, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (15, 2592000, 3600, 0, 1, 1, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'xamarin', N'eShop Xamarin OpenId Client', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 0, 1, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (16, 2592000, 7200, 0, 0, 1, 0, 1, 1, 0, 300, 1, NULL, N'client_', N'mvc', N'MVC Client', N'http://localhost:5100', NULL, NULL, 1, 1, 1, NULL, 7200, 0, NULL, NULL, N'oidc', 1, 1, 1, 0, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (17, 2592000, 7200, 0, 0, 1, 0, 1, 1, 0, 300, 1, NULL, N'client_', N'webhooksclient', N'Webhooks Client', N'', NULL, NULL, 1, 1, 1, NULL, 7200, 0, NULL, NULL, N'oidc', 1, 1, 1, 0, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (18, 2592000, 3600, 0, 1, 1, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'mvctest', N'MVC Client Test', N'http://localhost:5100', NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 0, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (19, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'locationsswaggerui', N'Locations Swagger UI', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 1, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (20, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'marketingswaggerui', N'Marketing Swagger UI', N'http://localhost:52059', NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 1, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (21, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'basketswaggerui', N'Basket Swagger UI', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 1, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (22, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'orderingswaggerui', N'Ordering Swagger UI', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 1, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (23, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'mobileshoppingaggswaggerui', N'Mobile Shopping Aggregattor Swagger UI', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 1, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (24, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'webshoppingaggswaggerui', N'Web Shopping Aggregattor Swagger UI', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 1, 0, 1296000, 0)
INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (25, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'webhooksswaggerui', N'WebHooks Service Swagger UI', NULL, NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 1, 1, 0, 1296000, 0)
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[ClientScopes] ON 

INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (49, 16, N'orders.signalrhub')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (50, 15, N'marketing')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (51, 15, N'locations')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (52, 20, N'marketing')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (53, 15, N'basket')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (54, 15, N'orders')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (55, 15, N'offline_access')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (56, 21, N'basket')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (57, 15, N'profile')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (58, 15, N'openid')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (59, 15, N'mobileshoppingagg')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (60, 22, N'orders')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (61, 14, N'orders.signalrhub')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (62, 14, N'webshoppingagg')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (63, 23, N'mobileshoppingagg')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (64, 14, N'marketing')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (65, 14, N'locations')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (66, 14, N'basket')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (67, 24, N'webshoppingagg')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (68, 14, N'orders')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (69, 14, N'profile')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (70, 14, N'openid')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (71, 25, N'webhooks')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (72, 14, N'webhooks')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (73, 19, N'locations')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (74, 15, N'webhooks')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (75, 16, N'profile')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (76, 16, N'webhooks')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (77, 16, N'marketing')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (78, 16, N'locations')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (79, 16, N'basket')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (80, 17, N'openid')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (81, 17, N'profile')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (82, 17, N'offline_access')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (83, 16, N'orders')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (84, 16, N'offline_access')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (85, 16, N'webshoppingagg')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (86, 17, N'webhooks')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (87, 18, N'openid')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (88, 18, N'profile')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (89, 18, N'offline_access')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (90, 18, N'orders')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (91, 18, N'basket')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (92, 18, N'locations')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (93, 18, N'marketing')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (94, 18, N'webshoppingagg')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (95, 18, N'webhooks')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (96, 16, N'openid')
SET IDENTITY_INSERT [dbo].[ClientScopes] OFF
SET IDENTITY_INSERT [dbo].[ClientSecrets] ON 

INSERT [dbo].[ClientSecrets] ([Id], [ClientId], [Description], [Expiration], [Type], [Value]) VALUES (5, 17, NULL, NULL, N'SharedSecret', N'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=')
INSERT [dbo].[ClientSecrets] ([Id], [ClientId], [Description], [Expiration], [Type], [Value]) VALUES (6, 16, NULL, NULL, N'SharedSecret', N'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=')
INSERT [dbo].[ClientSecrets] ([Id], [ClientId], [Description], [Expiration], [Type], [Value]) VALUES (7, 18, NULL, NULL, N'SharedSecret', N'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=')
INSERT [dbo].[ClientSecrets] ([Id], [ClientId], [Description], [Expiration], [Type], [Value]) VALUES (8, 15, NULL, NULL, N'SharedSecret', N'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=')
SET IDENTITY_INSERT [dbo].[ClientSecrets] OFF
SET IDENTITY_INSERT [dbo].[IdentityClaims] ON 

INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (1, 1, N'sub')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (2, 2, N'name')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (3, 2, N'family_name')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (4, 2, N'given_name')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (5, 2, N'middle_name')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (6, 2, N'nickname')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (7, 2, N'preferred_username')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (8, 2, N'profile')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (9, 2, N'picture')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (10, 2, N'website')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (11, 2, N'gender')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (12, 2, N'birthdate')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (13, 2, N'zoneinfo')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (14, 2, N'locale')
INSERT [dbo].[IdentityClaims] ([Id], [IdentityResourceId], [Type]) VALUES (15, 2, N'updated_at')
SET IDENTITY_INSERT [dbo].[IdentityClaims] OFF
SET IDENTITY_INSERT [dbo].[IdentityResources] ON 

INSERT [dbo].[IdentityResources] ([Id], [Description], [DisplayName], [Emphasize], [Enabled], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (1, NULL, N'Your user identifier', 0, 1, N'openid', 1, 1)
INSERT [dbo].[IdentityResources] ([Id], [Description], [DisplayName], [Emphasize], [Enabled], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (2, N'Your user profile information (first name, last name, etc.)', N'User profile', 1, 1, N'profile', 0, 1)
SET IDENTITY_INSERT [dbo].[IdentityResources] OFF
INSERT [dbo].[PersistedGrants] ([Key], [ClientId], [CreationTime], [Data], [Expiration], [SubjectId], [Type]) VALUES (N'PzGfMxno772Hycvq+/7oF2OWL6K0ZHi0ZWM/NoKtAHg=', N'mvc', CAST(N'2019-09-24T14:14:00.0000000' AS DateTime2), N'{"CreationTime":"2019-09-24T14:14:00Z","Lifetime":300,"ClientId":"mvc","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"0eb332c7-4eab-4d62-b442-6a87eca9c5c6","ValueType":null},{"Type":"AspNet.Identity.SecurityStamp","Value":"57e7da2b-beba-4f87-a1b9-442565f5079e","ValueType":null},{"Type":"preferred_username","Value":"demouser@microsoft.com","ValueType":null},{"Type":"name","Value":"demouser@microsoft.com","ValueType":null},{"Type":"email","Value":"demouser@microsoft.com","ValueType":null},{"Type":"email_verified","Value":"false","ValueType":null},{"Type":"phone_number","Value":"1234567890","ValueType":null},{"Type":"phone_number_verified","Value":"false","ValueType":null},{"Type":"idp","Value":"local","ValueType":null},{"Type":"amr","Value":"pwd","ValueType":null},{"Type":"auth_time","Value":"1569334377","ValueType":null}]},"IsOpenId":true,"RequestedScopes":["openid","profile","orders","basket","marketing","locations","webshoppingagg","orders.signalrhub"],"RedirectUri":"http://localhost:5100/signin-oidc","Nonce":"637049311625803073.MjNkNWYwY2QtMTJhNy00Y2IzLTljZTQtNzgzNWRkYjI4MjA4YjFkYjY1YWQtMzM2ZC00M2U0LWE3NzAtYWZjZDg5Yjk5MThl","WasConsentShown":false,"SessionId":"ecbb1d270d5ba34795000d99bd6d0ccb","CodeChallenge":"","CodeChallengeMethod":null}', CAST(N'2019-09-24T14:19:00.0000000' AS DateTime2), N'0eb332c7-4eab-4d62-b442-6a87eca9c5c6', N'authorization_code')
/****** Object:  Index [IX_ApiClaims_ApiResourceId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ApiClaims_ApiResourceId] ON [dbo].[ApiClaims]
(
	[ApiResourceId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApiResources_Name]    Script Date: 3-10-2019 09:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiResources_Name] ON [dbo].[ApiResources]
(
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiScopeClaims_ApiScopeId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ApiScopeClaims_ApiScopeId] ON [dbo].[ApiScopeClaims]
(
	[ApiScopeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiScopes_ApiResourceId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ApiScopes_ApiResourceId] ON [dbo].[ApiScopes]
(
	[ApiResourceId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApiScopes_Name]    Script Date: 3-10-2019 09:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiScopes_Name] ON [dbo].[ApiScopes]
(
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiSecrets_ApiResourceId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ApiSecrets_ApiResourceId] ON [dbo].[ApiSecrets]
(
	[ApiResourceId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3-10-2019 09:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3-10-2019 09:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientClaims_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientClaims_ClientId] ON [dbo].[ClientClaims]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientCorsOrigins_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientCorsOrigins_ClientId] ON [dbo].[ClientCorsOrigins]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientGrantTypes_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientGrantTypes_ClientId] ON [dbo].[ClientGrantTypes]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientIdPRestrictions_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientIdPRestrictions_ClientId] ON [dbo].[ClientIdPRestrictions]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientPostLogoutRedirectUris_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientPostLogoutRedirectUris_ClientId] ON [dbo].[ClientPostLogoutRedirectUris]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientProperties_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientProperties_ClientId] ON [dbo].[ClientProperties]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientRedirectUris_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientRedirectUris_ClientId] ON [dbo].[ClientRedirectUris]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Clients_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Clients_ClientId] ON [dbo].[Clients]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientScopes_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientScopes_ClientId] ON [dbo].[ClientScopes]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientSecrets_ClientId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_ClientSecrets_ClientId] ON [dbo].[ClientSecrets]
(
	[ClientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentityClaims_IdentityResourceId]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_IdentityClaims_IdentityResourceId] ON [dbo].[IdentityClaims]
(
	[IdentityResourceId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_IdentityResources_Name]    Script Date: 3-10-2019 09:01:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_IdentityResources_Name] ON [dbo].[IdentityResources]
(
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 3-10-2019 09:01:17 ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[ClientId] ASC,
	[Type] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApiClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiClaims] CHECK CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiScopeClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId] FOREIGN KEY([ApiScopeId])
REFERENCES [dbo].[ApiScopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiScopeClaims] CHECK CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId]
GO
ALTER TABLE [dbo].[ApiScopes]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiScopes] CHECK CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiSecrets] CHECK CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ClientClaims]  WITH CHECK ADD  CONSTRAINT [FK_ClientClaims_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientClaims] CHECK CONSTRAINT [FK_ClientClaims_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientCorsOrigins]  WITH CHECK ADD  CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientCorsOrigins] CHECK CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientGrantTypes]  WITH CHECK ADD  CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientGrantTypes] CHECK CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientIdPRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientIdPRestrictions] CHECK CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris] CHECK CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientProperties]  WITH CHECK ADD  CONSTRAINT [FK_ClientProperties_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientProperties] CHECK CONSTRAINT [FK_ClientProperties_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientRedirectUris] CHECK CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientScopes]  WITH CHECK ADD  CONSTRAINT [FK_ClientScopes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientScopes] CHECK CONSTRAINT [FK_ClientScopes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ClientSecrets_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientSecrets] CHECK CONSTRAINT [FK_ClientSecrets_Clients_ClientId]
GO
ALTER TABLE [dbo].[IdentityClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [dbo].[IdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityClaims] CHECK CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId]
GO
ALTER DATABASE [identitydb] SET  READ_WRITE 
GO
