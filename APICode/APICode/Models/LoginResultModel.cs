using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APICode.Models
{
    public class LoginInputModel
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }

    public class LoginResultModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Role { get; set; }
    }
}