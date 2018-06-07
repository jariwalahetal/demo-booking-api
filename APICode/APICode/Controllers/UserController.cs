using APICode.DAL;
using APICode.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APICode.Controllers
{
    public class UserController : ApiController
    {
        [HttpPost]
        [Route ("login")]
        public ResultModel Login(LoginInputModel model)
        {
            var dal = new ReservationDAL();
            return dal.Login(model.Email, model.Password);
        }
    }
}
