using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using eSubmission.Services;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Areas.Functions.Controllers
{
    [Area("Functions")]
    public class PaymentController : Controller
    {
        //Uri baseAddress = new Uri("http://localhost:49557/api");
        //private readonly HttpClient _client;

        private readonly IApiService _apiService;

        public PaymentController(IApiService apiService)
        {
            //_client = new HttpClient();
            //_client.BaseAddress = baseAddress;
            _apiService = apiService;
        }

        public IActionResult Index()
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
        public object GetOrderPaymentByCustomerList(DataSourceLoadOptions loadOptions)
        {

            var _respone = _apiService.GetOrderPaymentByCustomerListApi();
            return DataSourceLoader.Load(_respone, loadOptions);
        }

        public object GetPaymentMethodList(DataSourceLoadOptions loadOptions)
        {

            var _respone = _apiService.GetPaymentMethodListApi();
            return DataSourceLoader.Load(_respone, loadOptions);
        }

    }
}
