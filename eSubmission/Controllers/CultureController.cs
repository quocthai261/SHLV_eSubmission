using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Controllers
{
    public class CultureController : Controller
    {
        [Route("/Culture/SetCulture",Name = "SetCulture")]
        [HttpPost]
        public IActionResult SetCulture(string culture, string returnUrl)
        {
            Response.Cookies.Append(
                CookieRequestCultureProvider.DefaultCookieName,
                CookieRequestCultureProvider.MakeCookieValue(new RequestCulture(culture)),
                new CookieOptions { Expires = DateTimeOffset.UtcNow.AddYears(1) }
            );
            return LocalRedirect(returnUrl);
        }
    }
}
