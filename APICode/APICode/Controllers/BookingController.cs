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
    public class BookingController : ApiController
    {
        [HttpGet]
        [Route("getroomtype/{userId}")]
        public ResultModel GetRoomType(int userId)
        {
            var dal = new ReservationDAL();
            return dal.GetRoomTypes(userId);
        }

        [HttpGet]
        [Route("getrooms/{userId}")]
        public ResultModel GetRooms(int userId)
        {
            var dal = new ReservationDAL();
            return dal.GetRooms(userId);

        }

        [HttpPost]
        [Route("bookroom")]
        public ResultModel BookRoom(BookingResultModel bookingModel)
        {
            var dal = new ReservationDAL();
            return dal.BookRoom(bookingModel);
        }

        [HttpGet]
        [Route("allbookings/{mm}/{dd}/{yyyy}")]
        public ResultModel AllBookings(int mm, int dd, int yyyy)
        {
            var dal = new ReservationDAL();
            var bookingdate = new DateTime(yyyy, mm, dd);
            return dal.AllBookings(bookingdate,null);
        }

        [HttpGet]
        [Route("userbookings/{userId}/{mm}/{dd}/{yyyy}")]
        public ResultModel UserBookings(int userId,int mm, int dd, int yyyy)
        {
            var dal = new ReservationDAL();
            var bookingdate = new DateTime(yyyy, mm, dd);
            return dal.UserBookings(bookingdate, userId);
        }

        [HttpPost]
        [Route("deletebooking")]
        public ResultModel DeleteBooking(BookingResultModel bookingModel)
        {
            var dal = new ReservationDAL();
            return dal.DeleteBooking(bookingModel);
        }
    }
}
