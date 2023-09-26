using System.ComponentModel.DataAnnotations;

namespace eSubmission.Models.Account
{
    public class LoginModel
    {
        [Required]
        public string un { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string pw { get; set; }

        public bool RememberMe { get; set; }
    }
}
