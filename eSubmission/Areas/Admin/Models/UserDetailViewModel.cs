namespace eSubmission.Areas.Admin.Models
{
    public class UserDetailViewModel : SysUsersDto
    {
        public long[] RoleIDs { get; set; }
        public string RoleIDsStr { get; set; }
    }
}
