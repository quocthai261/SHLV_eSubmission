using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using eSubmission.Services;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Areas.Functions.Controllers
{
    [Area("Functions")]
    public class QuotationController : Controller
    {
        //Uri baseAddress = new Uri("http://localhost:49557/api");
        //private readonly HttpClient _client;

        private readonly IApiService _apiService;

        public QuotationController(IApiService apiService)
        {
            //_client = new HttpClient();
            //_client.BaseAddress = baseAddress;
            _apiService = apiService;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult QuotationDetail()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> StepPartialView(string param)
        {
            ViewBag.Step = param;

            return await Task.FromResult(PartialView("StepPartialView"));
        }

        [HttpGet]
        public object GetQuotationList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetQuotationListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetRiderByCustomerList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetRiderByCustomerListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetQuotationInformation(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetQuotationInformationApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }
    }
}
