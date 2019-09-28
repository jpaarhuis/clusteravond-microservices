using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.eShopOnContainers.WebMVC;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using System;
using System.IO;
using System.IO.Compression;
using System.Linq;

namespace WebMVC.Infrastructure
{
    public class WebContextSeed
    {
        public static void Seed(IApplicationBuilder applicationBuilder, IHostingEnvironment env)
        {
            var settings = (AppSettings)applicationBuilder
                .ApplicationServices.GetRequiredService<IOptions<AppSettings>>().Value;

            var useCustomizationData = settings.UseCustomizationData;
            var contentRootPath = env.ContentRootPath;
            var webroot = env.WebRootPath;

            if (useCustomizationData)
            {
                GetPreconfiguredImages(contentRootPath, webroot);

                GetPreconfiguredCSS(contentRootPath, webroot);
            }
        }

        static void GetPreconfiguredCSS(string contentRootPath, string webroot)
        {
            try
            { 
                string overrideCssFile = Path.Combine(contentRootPath, "Setup", "override.css");
                if (!File.Exists(overrideCssFile))
                {
                    return;
                }

                string destinationFilename = Path.Combine(webroot, "css", "override.css");
                File.Copy(overrideCssFile, destinationFilename, true );
            }
            catch (Exception ex)
            {
            }
        }

        static void GetPreconfiguredImages(string contentRootPath, string webroot)
        {
            try
            {
                string imagesZipFile = Path.Combine(contentRootPath, "Setup", "images.zip");
                if (!File.Exists(imagesZipFile))
                {
                    return;
                }

                string imagePath = Path.Combine(webroot, "images");
                string[] imageFiles = Directory.GetFiles(imagePath).Select(file => Path.GetFileName(file)).ToArray();

                using (ZipArchive zip = ZipFile.Open(imagesZipFile, ZipArchiveMode.Read))
                {
                    foreach (ZipArchiveEntry entry in zip.Entries)
                    {
                        if (imageFiles.Contains(entry.Name))
                        {
                            string destinationFilename = Path.Combine(imagePath, entry.Name);
                            if (File.Exists(destinationFilename))
                            {
                                File.Delete(destinationFilename);
                            }
                            entry.ExtractToFile(destinationFilename);
                        }
                    }
                }
            }
            catch ( Exception ex )
            {
            }
        }

    }

}
