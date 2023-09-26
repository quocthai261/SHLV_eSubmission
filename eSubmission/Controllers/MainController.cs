using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Controllers
{
    public class MainController : Controller
    {
        public IActionResult Index()
        {
            return View(); 
        }
    }
}
