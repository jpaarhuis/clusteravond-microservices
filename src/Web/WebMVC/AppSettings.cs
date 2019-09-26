namespace Microsoft.eShopOnContainers.WebMVC
{
    public class AppSettings
    {
        public string BasketUrl { get; set; }
        public string CatalogUrl { get; set; }
        public string OrderingUrl { get; set; }
        public string IdentityUrl { get; set; }
        public Logging Logging { get; set; }
        public bool UseCustomizationData { get; set; }
    }

    public class Logging
    {
        public bool IncludeScopes { get; set; }
        public Loglevel LogLevel { get; set; }
    }

    public class Loglevel
    {
        public string Default { get; set; }
        public string System { get; set; }
        public string Microsoft { get; set; }
    }
}
