using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPractice
{
    public partial class BookAppoinment : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                string c_Id = Request.QueryString["C_Id"];
                string m_Id = Request.QueryString["m"];
                string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                using (conn)
                {
                    SqlCommand cmd = new SqlCommand("select * from appointment_status where id =@c_id", conn);
                    cmd.Parameters.Add(new SqlParameter("@c_id", c_Id));
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    lvlNamePlace.Text = (string)reader[2];
                    lvlDay.Text = (string)reader[4];
                    lvlTime.Text = (string)reader[5];
                    lvlSLimit.Text = (string)reader[6];
                    //int serial = Convert.ToInt32(reader[6]);
                    //lvlYourSerial.Text = Convert.ToString(serial + 1);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == true)
            {
                Calendar1.Visible = false;
            }
            else
                Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string c_Id = Request.QueryString["C_Id"];
            tbxCalDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yy");
            Calendar1.Visible = false;
            int ss = checkSerial(c_Id, tbxCalDate.Text);
            lvlYourSerial.Text = string.Concat(ss+1);

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (lvlDay.Text == "Sunday")
            {
                if (e.Day.Date.DayOfWeek != DayOfWeek.Sunday || e.Day.Date < DateTime.Now.Date)
                {
                    e.Day.IsSelectable = false;
                }
            }
            else if (lvlDay.Text == "Monday")
            {
                if (e.Day.Date.DayOfWeek != DayOfWeek.Monday || e.Day.Date < DateTime.Now.Date)
                {
                    e.Day.IsSelectable = false;
                }
            }
            else if (lvlDay.Text == "Tuesday")
            {
                if (e.Day.Date.DayOfWeek != DayOfWeek.Tuesday || e.Day.Date < DateTime.Now.Date)
                {
                    e.Day.IsSelectable = false;
                }
            }
            else if (lvlDay.Text == "Wednesday")
            {
                if (e.Day.Date.DayOfWeek != DayOfWeek.Wednesday || e.Day.Date < DateTime.Now.Date)
                {
                    e.Day.IsSelectable = false;
                }
            }
            else if (lvlDay.Text == "Thursday")
            {
                if (e.Day.Date.DayOfWeek != DayOfWeek.Thursday || e.Day.Date < DateTime.Now.Date)
                {
                    e.Day.IsSelectable = false;
                }
            }
            else if (lvlDay.Text == "Friday")
            {
                if (e.Day.Date.DayOfWeek != DayOfWeek.Friday || e.Day.Date < DateTime.Now.Date)
                {
                    e.Day.IsSelectable = false;
                }
            }
            else if (lvlDay.Text == "Saturday")
            {
                if (e.Day.Date.DayOfWeek != DayOfWeek.Saturday || e.Day.Date < DateTime.Now.Date)
                {
                    e.Day.IsSelectable = false;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(tbxNameP.Text) || string.IsNullOrEmpty(tbxAgeP.Text) || string.IsNullOrEmpty(tbxCalDate.Text))
            {
                lvlfinalStatus.Text = "Empty field ditected";
            }else { 
            string c_Id = Request.QueryString["C_Id"];
            string m_Id = Request.QueryString["m"];
            string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
                using (conn)
                {
                    SqlCommand cmd = new SqlCommand("Insert into patient_link(name,gender,age,citizen_mail,serial,chamber_code,date) values(@name,@gender,@age,@citizen_mail,@serial,@chamber,@date)", conn);
                    cmd.Parameters.Add(new SqlParameter("@name", tbxNameP.Text));
                    cmd.Parameters.Add(new SqlParameter("@gender", DDLgenderP.SelectedItem.Value));
                    cmd.Parameters.Add(new SqlParameter("@age", tbxAgeP.Text));
                    cmd.Parameters.Add(new SqlParameter("@citizen_mail", m_Id));
                    cmd.Parameters.Add(new SqlParameter("@serial", lvlYourSerial.Text));
                    cmd.Parameters.Add(new SqlParameter("@chamber", c_Id));
                    cmd.Parameters.Add(new SqlParameter("@date", tbxCalDate.Text));
                    if (Convert.ToInt32(lvlYourSerial.Text) < Convert.ToInt32(lvlSLimit.Text))
                    {
                        cmd.ExecuteNonQuery();
                        lvlfinalStatus.Text = "Appointment Booked!";
                    }else
                    {
                        lvlfinalStatus.Text = "Serial out of limit!";
                    }
                }
            }
        }
        protected int checkSerial(string chamberCode, string date) {
            int lastSerial=0;
            string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            using (conn) {
                SqlCommand cmd = new SqlCommand("select * from patient_link where chamber_code = @chamber and date= @date", conn);
                cmd.Parameters.Add(new SqlParameter("@chamber", chamberCode));
                cmd.Parameters.Add(new SqlParameter("@date", date));
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    lastSerial++;
                }

            }
            return lastSerial;
        }
    }
}