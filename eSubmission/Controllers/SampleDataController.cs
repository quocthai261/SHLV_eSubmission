using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using eSubmission.Models;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Controllers
{
    [Route("api/[controller]")]
    public class SampleDataController : Controller
    {

        [HttpGet]
        public object Get(DataSourceLoadOptions loadOptions)
        {
            return DataSourceLoader.Load(SampleData.Orders, loadOptions);
        }

    }
}
