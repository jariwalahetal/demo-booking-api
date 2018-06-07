using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using APICode.Models;
using System.Data;

namespace APICode.DAL
{
    public class ReservationDAL
    {
        static string connString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

        #region Public Method

        public ResultModel Login(string emailid, string password)
        {
            var resultModel = new ResultModel();
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                string sql = "select * from users where email='" + emailid + "' and password='" + password + "'";
                conn.Open();

                MySqlDataAdapter mydata = new MySqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                mydata.Fill(ds);

                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    var loginResultModel = new LoginResultModel();
                    loginResultModel.Id = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
                    loginResultModel.Name = Convert.ToString(ds.Tables[0].Rows[0]["name"]);
                    loginResultModel.Email = Convert.ToString(ds.Tables[0].Rows[0]["email"]);
                    loginResultModel.Role = Convert.ToInt32(ds.Tables[0].Rows[0]["role"]);

                    resultModel.IsSucessful = true;
                    resultModel.Result = loginResultModel;
                }
                else
                {
                    resultModel.ErrorMessage = "Username / password is incorrect";
                }
            }
            catch (Exception ex)
            {
                resultModel.IsSucessful = false;
                resultModel.ErrorMessage = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return resultModel;
        }

        public ResultModel GetRoomTypes(int userId)
        {
            var resultModel = new ResultModel();
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                string sql = "select * from room_types";
                conn.Open();

                MySqlDataAdapter mydata = new MySqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                mydata.Fill(ds);

                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    var keyvalpairs = new List<KeyValuePair<int, string>>();

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        keyvalpairs.Add(new KeyValuePair<int, string>(
                                Convert.ToInt32(ds.Tables[0].Rows[i]["id"]),
                                Convert.ToString(ds.Tables[0].Rows[i]["name"])
                            ));
                    }

                    resultModel.IsSucessful = true;
                    resultModel.Result = keyvalpairs;
                }
                else
                {
                    resultModel.ErrorMessage = "room type not found";
                }
            }
            catch (Exception ex)
            {
                resultModel.IsSucessful = false;
                resultModel.ErrorMessage = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return resultModel;
        }

        public ResultModel GetRooms(int userId)
        {
            var resultModel = new ResultModel();
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                string sql = "select * from rooms where status=1";
                conn.Open();

                MySqlDataAdapter mydata = new MySqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                mydata.Fill(ds);

                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    var roomdata = new List<RoomModel<TimeSpanModel>>();

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        var room = new RoomModel<TimeSpanModel>();
                        room.Id = Convert.ToInt32(ds.Tables[0].Rows[i]["id"]);
                        room.Type_Id = Convert.ToInt32(ds.Tables[0].Rows[i]["type_id"]);
                        room.Name = Convert.ToString(ds.Tables[0].Rows[i]["name"]);
                        room.StartTime = Convert.ToString(ds.Tables[0].Rows[i]["start_time"]);
                        room.EndTime = Convert.ToString(ds.Tables[0].Rows[i]["end_time"]);
                        room.BookingInterval = Convert.ToInt32(ds.Tables[0].Rows[i]["booking_interval"]);
                        room.BookingCapacity = Convert.ToInt32(ds.Tables[0].Rows[i]["booking_capacity"]);
                        room.AvailableSlots = GenrateSlots(room, null);
                        roomdata.Add(room);
                    }

                    resultModel.IsSucessful = true;
                    resultModel.Result = roomdata;
                }
                else
                {
                    resultModel.ErrorMessage = "room type not found";
                }
            }
            catch (Exception ex)
            {
                resultModel.IsSucessful = false;
                resultModel.ErrorMessage = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return resultModel;
        }

        public ResultModel BookRoom(BookingResultModel bookingModel)
        {
            var resultModel = new ResultModel();
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                MySqlCommand cmd = new MySqlCommand("INSERT INTO bookings (user_id, room_id, date, start_time, end_time, status) VALUES " +
                    "(" + bookingModel.UserId + "," + bookingModel.RoomId + ",'" +
                    bookingModel.BookingDate.ToString("yyyy-MM-dd") + "','" +
                    bookingModel.StartTime + "','" + bookingModel.EndTime + "',1)", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                resultModel.IsSucessful = true;

            }
            catch (Exception ex)
            {
                resultModel.IsSucessful = false;
                resultModel.ErrorMessage = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return resultModel;
        }

        public ResultModel AllBookings(DateTime bookingdate, int? userId)
        {
            var resultModel = new ResultModel();
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                string sql = "select * from rooms where status=1";
                conn.Open();

                MySqlDataAdapter mydata = new MySqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                mydata.Fill(ds);

                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    var roomdata = new List<RoomModel<TimeSpanModel>>();

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        var room = new RoomModel<TimeSpanModel>();
                        room.Id = Convert.ToInt32(ds.Tables[0].Rows[i]["id"]);
                        room.Type_Id = Convert.ToInt32(ds.Tables[0].Rows[i]["type_id"]);
                        room.Name = Convert.ToString(ds.Tables[0].Rows[i]["name"]);
                        room.StartTime = Convert.ToString(ds.Tables[0].Rows[i]["start_time"]);
                        room.EndTime = Convert.ToString(ds.Tables[0].Rows[i]["end_time"]);
                        room.BookingInterval = Convert.ToInt32(ds.Tables[0].Rows[i]["booking_interval"]);
                        room.BookingCapacity = Convert.ToInt32(ds.Tables[0].Rows[i]["booking_capacity"]);
                        room.AvailableSlots = GenrateSlots(room, bookingdate, conn);
                        roomdata.Add(room);
                    }

                    resultModel.IsSucessful = true;
                    resultModel.Result = roomdata;
                }
                else
                {
                    resultModel.ErrorMessage = "room type not found";
                }
            }
            catch (Exception ex)
            {
                resultModel.IsSucessful = false;
                resultModel.ErrorMessage = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return resultModel;
        }

        public ResultModel UserBookings(DateTime bookingdate, int userId)
        {
            var resultModel = new ResultModel();
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                string sql = "select * from rooms where status=1";
                conn.Open();

                MySqlDataAdapter mydata = new MySqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                mydata.Fill(ds);

                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    var roomdata = new List<RoomModel<BookingTimeSpanModel>>();

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        var room = new RoomModel<BookingTimeSpanModel>();
                        room.Id = Convert.ToInt32(ds.Tables[0].Rows[i]["id"]);
                        room.Type_Id = Convert.ToInt32(ds.Tables[0].Rows[i]["type_id"]);
                        room.Name = Convert.ToString(ds.Tables[0].Rows[i]["name"]);
                        room.StartTime = Convert.ToString(ds.Tables[0].Rows[i]["start_time"]);
                        room.EndTime = Convert.ToString(ds.Tables[0].Rows[i]["end_time"]);
                        room.BookingInterval = Convert.ToInt32(ds.Tables[0].Rows[i]["booking_interval"]);
                        room.BookingCapacity = Convert.ToInt32(ds.Tables[0].Rows[i]["booking_capacity"]);
                        room.AvailableSlots = BookedSlots(room, bookingdate, userId, conn);
                        if (room.AvailableSlots.Count > 0)
                            roomdata.Add(room);
                    }

                    resultModel.IsSucessful = true;
                    resultModel.Result = roomdata;
                }
                else
                {
                    resultModel.ErrorMessage = "room type not found";
                }
            }
            catch (Exception ex)
            {
                resultModel.IsSucessful = false;
                resultModel.ErrorMessage = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return resultModel;
        }

        public ResultModel DeleteBooking(BookingResultModel bookingModel)
        {
            var resultModel = new ResultModel();
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                MySqlCommand cmd = new MySqlCommand("update bookings set status=0 where id=" + bookingModel.Id, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                resultModel.IsSucessful = true;

            }
            catch (Exception ex)
            {
                resultModel.IsSucessful = false;
                resultModel.ErrorMessage = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return resultModel;
        }

        #endregion

        #region Private Methods
        private List<BookingTimeSpanModel> BookedSlots(RoomModel<BookingTimeSpanModel> room, DateTime BookingDate, int userId, MySqlConnection conn)
        {
            var bookedSlots = new List<BookingTimeSpanModel>();
            var sql = "Select * from bookings where room_id=" + room.Id + " and user_id=" + userId + " and date='" + BookingDate.ToString("yyyy-MM-dd") + "' and status=1";
            MySqlDataAdapter mydata = new MySqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            mydata.Fill(ds);

            if (ds.Tables.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    bookedSlots.Add(new BookingTimeSpanModel()
                    {
                        BookingId = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]),
                        StartTime = Convert.ToString(ds.Tables[0].Rows[i]["start_time"]),
                        EndTime = Convert.ToString(ds.Tables[0].Rows[i]["end_time"]),
                        IsActive = true
                    });
                }
            }
            return bookedSlots;

        }

        private List<TimeSpanModel> GenrateSlots(RoomModel<TimeSpanModel> room, DateTime? BookingDate, MySqlConnection conn = null)
        {
            var availableSlots = new List<TimeSpanModel>();
            var startTimespan = TimeSpan.Parse(room.StartTime);
            var endTimeSpan = TimeSpan.Parse(room.EndTime);

            var bookedSlots = new List<TimeSpanModel>();
            if (BookingDate != null)
            {
                var sql = "Select * from bookings where room_id=" + room.Id + " and date='" + BookingDate.Value.ToString("yyyy-MM-dd") + "' and status=1";
                MySqlDataAdapter mydata = new MySqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                mydata.Fill(ds);

                if (ds.Tables.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        bookedSlots.Add(new TimeSpanModel()
                        {
                            StartTime = Convert.ToString(ds.Tables[0].Rows[i]["start_time"]),
                            EndTime = Convert.ToString(ds.Tables[0].Rows[i]["end_time"]),
                        });
                    }
                }
            }

            TimeSpan ts = TimeSpan.FromMinutes(Convert.ToInt32(room.BookingInterval));
            while (true)
            {
                if (TimeSpan.Compare(startTimespan, endTimeSpan) == 0)
                    break;

                var item = new TimeSpanModel
                {
                    StartTime = startTimespan.ToString(@"hh\:mm"),
                    EndTime = startTimespan.Add(ts).ToString(@"hh\:mm")
                };
                item.IsActive = !bookedSlots.Exists(x => x.StartTime == item.StartTime && x.EndTime == item.EndTime);

                availableSlots.Add(item);
                startTimespan = startTimespan.Add(ts);
            }
            return availableSlots;
        }
        #endregion
    }
}