using Microsoft.AspNetCore.Http;

namespace Rating.Function.Services
{
    public interface IIpAddressService
    {
        string GetIpFromRequestHeaders(HttpRequest request);
    }
}