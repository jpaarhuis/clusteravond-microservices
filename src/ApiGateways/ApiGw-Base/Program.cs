using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System.IO;
using System.Reflection;

namespace OcelotApiGw
{
    public class Program
    {
        public static void Main(string[] args)
        {
            BuildWebHost(args).Run();
        }

        public static IWebHost BuildWebHost(string[] args)
        {
            IWebHostBuilder builder = WebHost.CreateDefaultBuilder(args);

            var configFile = Path.Combine(Assembly.GetEntryAssembly().Location, @"..\..\..\..\..\Web.Bff.Shopping\apigw\configuration.json");
            
            builder.ConfigureServices(s => s.AddSingleton(builder))
                .ConfigureAppConfiguration(ic => ic.AddJsonFile(configFile))
                .UseStartup<Startup>()
                ;
            IWebHost host = builder.Build();
            return host;
        }
    }
}
