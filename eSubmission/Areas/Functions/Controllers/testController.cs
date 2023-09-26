using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Areas.Functions.Controllers
{
    public class testController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
