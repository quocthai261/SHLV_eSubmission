using eSubmission.Models;

namespace eSubmission.Services
{
    public class ApiService : IApiService
    {
        private readonly HttpClient httpClient;

        public ApiService(HttpClient httpClient)
        {
            this.httpClient = httpClient;
        }

        //public List<ChungLoaiDTO> GetListChungLoai()
        //{
        //    List<ChungLoaiDTO>? chungLoaiList = new List<ChungLoaiDTO>();
        //    HttpResponseMessage response = httpClient.GetAsync(httpClient.BaseAddress + "/chung-loai/doc-danh-sach").Result;

        //    if (response.IsSuccessStatusCode)
        //    {
        //        string data = response.Content.ReadAsStringAsync().Result;
        //        chungLoaiList = JsonConvert.DeserializeObject<List<ChungLoaiDTO>>(data);
        //    }

        //    return chungLoaiList;
        //}

        public List<SysRolesModel> GetRoleListApi()
        {
            return SampleData.roleList;
        }

        public List<UserTypeModel> GetUserTypeListApi()
        {
            return SampleData.userTypeList;
        }

        public List<SysUsersModelExt> GetUserListApi()
        {
            return SampleData.userList;
        }

        public List<SysRolesModel> GetRolesForUserApi() 
        {
            return SampleData.roleListForUser;
        }

        public List<ProductModel> GetProductListApi()
        {
            return SampleData.productList;
        }

        public List<PayModeModel> GetPayModeListApi()
        {
            return SampleData.paymodeList;
        }

        public List<RiderModel> GetRiderListApi(int productId)
        {
            return SampleData.riderList.Where(w => w.ProductID == productId).ToList();
        }

        public List<CustomerModel> GetCustomerListApi()
        {
            return SampleData.customerList;
        }

		public List<NationalityModel> GetNationalityListApi()
		{
			return SampleData.nationalityList;
		}

		public List<QuotationModel> GetQuotationListApi()
		{
			return SampleData.quotationList;
		}

		public List<RiderByCustomerModel> GetRiderByCustomerListApi()
		{
			return SampleData.riderByCustomerList;
		}

		public List<QuotationInformationModel> GetQuotationInformationApi()
		{
			return SampleData.quotationInformationList;
		}

		public List<FinancialAnalysisModel> GetFinancialAnalysisListApi()
        {
			return SampleData.financialAnalysisList;
		}

		public List<eApplicationModel> GeteApplicationListApi()
        {
            return SampleData.eAppList;
        }

        public List<GenderModel> GetGenderListApi()
        {
            return SampleData.genderList;
        }

        public List<MarriageStatusModel> GetMarriageStatusListApi()
        {
            return SampleData.marriageStatusList;
        }

        public List<CityProvinceModel> GetCityProvinceListApi()
        {
            return SampleData.cityList;
        }

        public List<CertiTypeModel> GetCertiTypeListApi()
        {
            return SampleData.certiTypeList;
        }

        public List<RelationshipModel> GetRelationListApi()
        {
            return SampleData.relationshipList;
        }

        public List<OrderPaymentByCustomerModel> GetOrderPaymentByCustomerListApi()
        {
            return SampleData.OrderPaymentByCustomerList;
        }
        public List<PaymentMethodModel> GetPaymentMethodListApi()
        {
            return SampleData.paymentMethodList;
        }
    }
}
