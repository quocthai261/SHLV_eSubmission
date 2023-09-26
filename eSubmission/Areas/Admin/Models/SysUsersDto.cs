namespace eSubmission.Areas.Admin.Models
{
    public class SysUsersDto
    {
        public long? UserId { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool IsActive { get; set; }
    }
}
