using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APICode.Models
{
    public class BookingResultModel
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int RoomId { get; set; }
        public DateTime BookingDate { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
    }
}