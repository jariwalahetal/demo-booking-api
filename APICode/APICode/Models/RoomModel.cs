using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APICode.Models
{
    public class RoomModel<T>
    {
        public RoomModel()
        {
            AvailableSlots = new List<T>();
        }
        public int Id { get; set; }
        public int Type_Id { get; set; }
        public string Name { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
        public int BookingInterval { get; set; }
        public int BookingCapacity { get; set; }
        public List<T> AvailableSlots { get; set; }
    }

    public class TimeSpanModel
    {
        public string StartTime { get; set;  }
        public string EndTime { get; set; }
        public bool IsActive { get; set;  }
    }

    public class BookingTimeSpanModel : TimeSpanModel
    {
        public int BookingId { get; set; }
    }
}