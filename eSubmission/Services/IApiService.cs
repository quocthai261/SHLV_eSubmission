using eSubmission.Models;

namespace eSubmission.Services
{
    public interface IApiService
    {
        //List<ChungLoaiDTO> GetListChungLoai();

        List<SysRolesModel> GetRoleListApi(); 

        List<UserTypeModel> GetUserTypeListApi();

        List<SysUsersModelExt> GetUserListApi();

        List<SysRolesModel> GetRolesForUserApi();

        List<ProductModel> GetProductListApi();

        List<PayModeModel> GetPayModeListApi();

        List<RiderModel> GetRiderListApi(int productId);

        List<CustomerModel> GetCustomerListApi();

        List<NationalityModel> GetNationalityListApi();

        List<QuotationModel> GetQuotationListApi();

        List<RiderByCustomerModel> GetRiderByCustomerListApi();

        List<QuotationInformationModel> GetQuotationInformationApi();

        List<FinancialAnalysisModel> GetFinancialAnalysisListApi();

		List<eApplicationModel> GeteApplicationListApi();

        List<GenderModel> GetGenderListApi();

        List<MarriageStatusModel> GetMarriageStatusListApi();

        List<CityProvinceModel> GetCityProvinceListApi();

        List<CertiTypeModel> GetCertiTypeListApi();

        List<RelationshipModel> GetRelationListApi();

        List<OrderPaymentByCustomerModel> GetOrderPaymentByCustomerListApi();
        List<PaymentMethodModel> GetPaymentMethodListApi();
    }
}
