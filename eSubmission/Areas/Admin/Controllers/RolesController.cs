using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using eSubmission.Models;
using eSubmission.Services;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class RolesController : Controller
    {
        private readonly IApiService _apiService;

        public RolesController(IApiService apiService)
        {
            _apiService = apiService;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public object GetRoleList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetRoleListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }
    }
}
