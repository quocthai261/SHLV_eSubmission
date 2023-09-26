using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using eSubmission.Areas.Admin.Models;
using eSubmission.Models;
using eSubmission.Services;
using Microsoft.AspNetCore.Mvc;

namespace eSubmission.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class UsersController : Controller
    {
        //Uri baseAddress = new Uri("http://localhost:49557/api");
        //private readonly HttpClient _client;

        private readonly IApiService _apiService;

        public UsersController(IApiService apiService)
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
        public IActionResult Edit(long userId)
        {
            if (userId == null || userId == 0)
            {
                return NotFound();
            }

            SysUsersModelExt? user = SampleData.userList.Where(x => x.UserId == userId).FirstOrDefault();

            if (user == null)
            {
                return NotFound();
            }

            UserDetailViewModel userDetail = new UserDetailViewModel()
            {
                UserId = user?.UserId,
                UserName = user.UserName,
                FullName = user.FullName,
                Email = user.Email,
                Phone = user.Phone,
                IsActive = user.IsActive,
                RoleIDs = user.RoleIDs,
                RoleIDsStr = string.Join(",", user.RoleIDs)
            };

            return View(userDetail);
        }

        [HttpPost]
        public IActionResult EditPost(
            UserDetailViewModel model,
            string selectedRoleIds,
            string oldRoleIdSelected
         )
        {
            // Xử lý lưu dữ liệu
            //...

            TempData["success"] = "User updated successfully.";

            return RedirectToAction("Index");
        }

        [HttpGet]
        public object GetRoleList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetRoleListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetUserTypeList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetUserTypeListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetUserList(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetUserListApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpGet]
        public object GetRolesForUser(DataSourceLoadOptions loadOptions)
        {
            var _response = _apiService.GetRolesForUserApi();

            return DataSourceLoader.Load(_response, loadOptions);
        }

        [HttpDelete]
        public void Delete(int key)
        {
            try
            {

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
