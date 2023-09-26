using eSubmission.Models.Account;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;
using System.Runtime.Intrinsics.X86;

namespace eSubmission.Controllers
{
    //test
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult LogIn(string message, string rp = null)
        {
            ViewData["ReturnUrl"] = rp;

            if (User?.Identity.IsAuthenticated == true)
            {
                return LocalRedirect(Url.Content(""));
            }

            if (!string.IsNullOrEmpty(message))
            {
                ViewBag.ChangePasswordSuccessful = message;
            }
            else
            {
                ViewBag.ChangePasswordSuccessful = null;
            }

            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> LogIn(LoginModel model, string rp = null)
        {            
            try
            {
                if (ModelState.IsValid)
                {
                    
                }

                return View(model);
            }
            catch (Exception e)
            {
                var ex = e;
                while (ex.InnerException != null)
                {
                    ex = ex.InnerException;
                }

                if (ex.Message.Contains("System.Runtime.InteropServices.COMException"))
                {
                    var msg = ex.Message.Replace("System.Runtime.InteropServices.COMException:", "");
                    ModelState.AddModelError(string.Empty, msg);
                }
                else
                {
                    throw ex;
                }
            }

            return View(model);
        }
    }
}
