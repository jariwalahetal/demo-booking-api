using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APICode.Models
{
    public class ResultModel
    {
        public bool IsSucessful { get; set; }
        public object Result { get; set; }
        public string ErrorMessage { get; set; }
    }
}