using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using eSubmission.Services;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Areas.Dashboard.Controllers
{
    [Area("Dashboard")]
    public class DashboardController : Controller
    {
        //Uri baseAddress = new Uri("http://localhost:49557/api");
        //private readonly HttpClient _client;

        private readonly IApiService _apiService;

        public DashboardController(IApiService apiService)
        {
            //_client = new HttpClient();
            //_client.BaseAddress = baseAddress;
            _apiService = apiService;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public object GetRoleList(DataSourceLoadOptions loadOptions)
        {
            var _response  = _apiService.GetRoleListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }
    }
}
