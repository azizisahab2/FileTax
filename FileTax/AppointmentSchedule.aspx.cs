using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileTax
{
    public partial class AppointmentSchedule : System.Web.UI.Page
    {
        Class1 mod = new Class1();

        public static string day, month, year, ddate, ttime, amPm = "PM", xx;
        int i, j, range, count = 0, hour;
        int a1, a2, a3, a4, a5, a6, a7, a8, a9, a10;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime dt = serverDate();
                ttime = dt.ToShortTimeString();

                day = dt.Day.ToString();
                //lit_msg.Text = day;

                if (dt.Day <= 9)
                {
                    ddate = "0" + dt.Day.ToString() + "/";
                }
                else
                {
                    ddate = dt.Day.ToString() + "/";
                }

                month = dt.Month.ToString();
                lit_month.Text = month;
                if (dt.Month <= 9)
                {
                    ddate = ddate + "0" + dt.Month.ToString() + "/";
                }
                else
                {
                    ddate = ddate + dt.Month.ToString() + "/";
                }

                year = dt.Year.ToString();
                txt_year.Text = year;
                month_name();
                ddate = ddate + dt.Year.ToString();

                appointmentTime();

                fill_ddlDay();

                if (Convert.ToInt32(ddl_dayNo.Text) > 25)
                {
                    fill_dayNo();
                }
            }
        }

        protected void tbl_submit_Click(object sender, EventArgs e)
        {
            string appointDate = ddl_dayNo.Text + "/" + lit_month.Text + "/" + txt_year.Text;
            lit_dscId.Text = Session["dsc_id"].ToString();

            string ins = @"INSERT INTO tbl_appointment (appoint_day,appoint_month,
            appoint_year,appoint_time,appoint_date,dsc_id) VALUES ('" + ddl_dayNo.Text + @"',
            '" + txt_month.Text + "','" + txt_year.Text + "','" + ddl_time.Text + @"',
            '" + appointDate + "','" + Session["dsc_id"].ToString() + "')";
            mod.InsDelUp(ins);

            Session["dsc_id"] = lit_dscId.Text;
            Response.Redirect("thanks.aspx");
        }

        protected void ddl_dayNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_dayNo.Text == day)
            {
                appointmentTime();
                //fill_ddlDay();
            }

            if (ddl_dayNo.Text != day)
            {
                fill_ddlTime();
            }
        }

        public void appointmentTime()
        {
            ddl_time.Items.Clear();

            DateTime dt = serverDate();
            DateTime starttime = serverDate();
            int hour = dt.Hour;

            int remaininghour = 19 - hour;
            currentTime();

            if (hour > 18 || hour < 9)
            {
                fill_ddlTime();
                //if (hour > 18)
                //{
                //    starttime = dt.AddHours(33 - hour);
                //    ddl_dayNo.Items.RemoveAt(0);
                //}

                //if (hour < 9)
                //{
                //    starttime = dt.AddHours(9 - hour);
                //}
            }
            else
            {
                if (dt.Minute <= 30)
                {
                    starttime = dt.AddMinutes(-dt.Minute);
                }
                else
                {
                    starttime = dt.AddMinutes(30 - dt.Minute);
                }
            }

            //DateTime starttime = dt.AddMinutes(-dt.Minute);

            for (int i = 1; i < remaininghour * 2; i++)
            {
                starttime = starttime.AddMinutes(30);
                lit_msg1.Text = starttime.ToShortTimeString();
                ddl_time.Items.Add(lit_msg1.Text);
            }
        }

        public void fill_dayNo()
        {
            ddl_dayNo.Items.Add("1");
            ddl_dayNo.Items.Add("2");
            ddl_dayNo.Items.Add("3");
            ddl_dayNo.Items.Add("4");
            ddl_dayNo.Items.Add("5");
        }

        public void fill_ddlTime()
        {
            ddl_time.Items.Clear();
            ddl_time.Items.Add("9:30");
            ddl_time.Items.Add("10:00");
            ddl_time.Items.Add("10:30");
            ddl_time.Items.Add("11:00");
            ddl_time.Items.Add("11:30");
            ddl_time.Items.Add("12:00");
            ddl_time.Items.Add("12:30");
            ddl_time.Items.Add("1:00");
            ddl_time.Items.Add("1:30");
            ddl_time.Items.Add("2:00");
            ddl_time.Items.Add("2:30");
            ddl_time.Items.Add("3:00");
            ddl_time.Items.Add("3:30");
            ddl_time.Items.Add("4:00");
            ddl_time.Items.Add("4:30");
            ddl_time.Items.Add("5:00");
            ddl_time.Items.Add("5:30");
            ddl_time.Items.Add("6:00");
            ddl_time.Items.Add("6:30");
        }

        public void fill_ddlDay()
        {
            if (txt_month.Text == "January")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "February")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "March")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "April")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }


            if (txt_month.Text == "May")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "June")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "July")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "August")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }


            if (txt_month.Text == "September")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "October")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "November")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }

            if (txt_month.Text == "December")
            {
                string sel = "SELECT * FROM tbl_calender WHERE yy='" + txt_year.Text + "' AND mm='" + txt_month.Text + "' ";
                DataSet ds = mod.FillDs(sel);
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0)
                    {
                        a1 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 1)
                    {
                        a2 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 2)
                    {
                        a3 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 3)
                    {
                        a4 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 4)
                    {
                        a5 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 5)
                    {
                        a6 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 6)
                    {
                        a7 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 7)
                    {
                        a8 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 8)
                    {
                        a9 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                    if (i == 9)
                    {
                        a10 = Convert.ToInt32(ds.Tables[0].Rows[i]["dd"].ToString());
                    }
                }

                for (i = Convert.ToInt32(day); i <= range; i++)
                {
                    if (i == a1 || i == a2 || i == a3 || i == a4 || i == a5 || i == a6 || i == a7 || i == a8 || i == a9 || i == a10)
                    {

                    }
                    else
                    {
                        ddl_dayNo.Items.Add(i.ToString());

                    }
                }
            }
        }

        public void currentTime()
        {
            string[] amPm1 = ttime.Split(' ');

            string am1 = amPm1[1].ToString();
            string am11 = am1.Substring(0, 2);

            lit_amPm.Text = am11.ToString();
        }

        public void month_name()
        {
            if (month == "1")
            {
                txt_month.Text = "January";
                range = 31;
            }

            if (month == "2")
            {
                txt_month.Text = "February";
                if (DateTime.IsLeapYear(Convert.ToInt32(txt_month)))
                {
                    range = 29;
                }
                else
                {
                    range = 28;
                }
            }

            if (month == "3")
            {
                txt_month.Text = "March";
                range = 31;
            }

            if (month == "4")
            {
                txt_month.Text = "April";
                range = 30;
            }

            if (month == "5")
            {
                txt_month.Text = "May";
                range = 31;
            }

            if (month == "6")
            {
                txt_month.Text = "June";
                range = 30;
            }

            if (month == "7")
            {
                txt_month.Text = "July";
                range = 31;
            }

            if (month == "8")
            {
                txt_month.Text = "August";
                range = 31;
            }

            if (month == "9")
            {
                txt_month.Text = "September";
                range = 30;
            }

            if (month == "10")
            {
                txt_month.Text = "October";
                range = 31;
            }

            if (month == "11")
            {
                txt_month.Text = "November";
                range = 30;
            }

            if (month == "12")
            {
                txt_month.Text = "December";
                range = 31;
            }
        }

        public DateTime serverDate()
        {
            return System.DateTime.UtcNow.AddSeconds(19800);
        }
    }
}