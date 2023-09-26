using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using eSubmission.Services;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Areas.Functions.Controllers 
{
    [Area("Functions")]
    public class eApplicationController : Controller
    {
        private readonly IApiService _apiService;

        public eApplicationController(IApiService apiService)
        {
            _apiService = apiService;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult eApplicationDetail()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> StepPartialView(string param)
        {
            ViewBag.Step = param;

            return await Task.FromResult(PartialView("StepPartialView"));
        }

        public IActionResult AppraisalQuestionsPartialView()
        {
            return View();
        }

        [HttpGet]
        public object GeteAppList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GeteApplicationListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetGenderList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetGenderListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetMarriageStatusList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetMarriageStatusListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetCityList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetCityProvinceListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetNationalityList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetNationalityListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetCertiTypeList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetCertiTypeListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetRelationshipList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetRelationListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }
    }
}
