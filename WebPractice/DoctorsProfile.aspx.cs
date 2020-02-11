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
    public partial class DoctorsProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsLoggedIn"].ToString() != "yes") Response.Redirect("Home.aspx");
            if (!IsPostBack) {

                string eId = Request.QueryString["eId"];

                string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                using (conn)
                {
                    SqlCommand cmd = new SqlCommand("Select * from doctor where email = @email", conn);
                    cmd.Parameters.Add(new SqlParameter("@email", eId));
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    tbxUfullname.Text = (string)reader[1];
                    tbxDPabout.Text= (string)reader[7];
                    DDL1.Items.FindByValue((string)reader[4]).Selected = true;
                    DDL2.Items.FindByValue((string)reader[5]).Selected = true;
                    DDL3.Items.FindByValue((string)reader[6]).Selected = true;
                }
                bindDropdown(eId);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string eId = Request.QueryString["eId"];
            string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            string name = tbxUfullname.Text;
            string pass = tbxDPPas.Text;
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(pass))
            {
                lvlStatus.Text = "some fields are empty";
            }
            else
            {
                conn.Open();
                using (conn)
                {
                    string s1 = DDL1.SelectedItem.Value;
                    string s2 = DDL2.SelectedItem.Value;
                    string s3 = DDL3.SelectedItem.Value;
                    string about = tbxDPabout.Text;
                    SqlCommand cmd = new SqlCommand("Update doctor set name=@name, password=@pass, s1=@s1, s2=@s2, s3=@s3, about=@about where email=@mail", conn);
                    cmd.Parameters.Add(new SqlParameter("@name", name));
                    cmd.Parameters.Add(new SqlParameter("@pass", pass));
                    cmd.Parameters.Add(new SqlParameter("@s1", s1));
                    cmd.Parameters.Add(new SqlParameter("@s2", s2));
                    cmd.Parameters.Add(new SqlParameter("@s3", s3));
                    cmd.Parameters.Add(new SqlParameter("@about", about));
                    cmd.Parameters.Add(new SqlParameter("@mail", eId));
                    cmd.ExecuteNonQuery();
                    lvlStatus.Text = "profile updated";
                }
                
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            //appointment_status
            string eId = Request.QueryString["eId"];
            string aname = tbxAPname.Text;
            string city = DDLcity.SelectedItem.Value;
            string day = DDLday.SelectedItem.Value;
            string time = tbxTime.Text;
            string max = DDLmax.SelectedItem.Value;
            string status = RBListStatus.SelectedValue;
            if (!string.IsNullOrEmpty(tbxAPname.Text))
            {
                if (DDLApname.SelectedItem.Value.Equals("*Add New"))
                {
                    string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                    SqlConnection conn = new SqlConnection(cs);
                    conn.Open();
                    using (conn)
                    {
                        SqlCommand cmd = new SqlCommand("Insert into appointment_status(a_name,mail,city,day,time,max,status) values(@aname, @mail, @city, @day, @time, @max, @status)", conn);
                        cmd.Parameters.Add(new SqlParameter("@aname", aname));
                        cmd.Parameters.Add(new SqlParameter("@mail", eId));
                        cmd.Parameters.Add(new SqlParameter("@city", city));
                        cmd.Parameters.Add(new SqlParameter("@day", day));
                        cmd.Parameters.Add(new SqlParameter("@time", time));
                        cmd.Parameters.Add(new SqlParameter("@max", max));
                        cmd.Parameters.Add(new SqlParameter("@status", status));
                        cmd.ExecuteNonQuery();
                        lvlSlotStatus.Text = "Successfully Added";
                        bindDropdown(eId);
                        return;
                    }

                }
                else
                {

                    string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                    SqlConnection conn = new SqlConnection(cs);
                    conn.Open();
                    using (conn)
                    {
                        SqlCommand cmd = new SqlCommand("Update appointment_status set a_name=@aname, city=@city, day=@day, time=@time, max=@max, status=@status where mail=@mail AND a_name=@nDD", conn);
                        cmd.Parameters.Add(new SqlParameter("@aname", aname));
                        cmd.Parameters.Add(new SqlParameter("@mail", eId));
                        cmd.Parameters.Add(new SqlParameter("@city", city));
                        cmd.Parameters.Add(new SqlParameter("@day", day));
                        cmd.Parameters.Add(new SqlParameter("@time", time));
                        cmd.Parameters.Add(new SqlParameter("@max", max));
                        cmd.Parameters.Add(new SqlParameter("@status", status));
                        cmd.Parameters.Add(new SqlParameter("@nDD", DDLApname.SelectedItem.Value));
                        cmd.ExecuteNonQuery();
                        lvlSlotStatus.Text = "Successfully Updated";
                        bindDropdown(eId);
                        return;
                    }
                }
            }
            else {
                lvlSlotStatus.Text = "Empty Fields";
            }

        }

        protected void bindDropdown(string mail) {
            string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
            SqlConnection connn = new SqlConnection(cs);
            connn.Open();
            using (connn)
            {
                List<string> ddlist = new List<string>();
                SqlCommand cmd = new SqlCommand("Select a_name from appointment_status where mail = @email", connn);
                cmd.Parameters.Add(new SqlParameter("@email", mail));
                SqlDataReader reader = cmd.ExecuteReader();
                int i = -1;
                ddlist.Add("*Add New");
                while (reader.Read())
                {
                    i++;
                    ddlist.Add((string)reader[i--]);
                    
                }
                ddlist.Sort();
                DDLApname.DataSource = ddlist;
                DDLApname.DataBind();

            }
        }

        protected void DDLApname_SelectedIndexChanged(object sender, EventArgs e)
        {
       /*     
                string eId = Request.QueryString["eId"];
                tbxAPname.Text = DDLApname.SelectedItem.Value;
                if (!DDLApname.SelectedItem.Value.Equals("*Add New"))
                {
                    tbxAPname.Text = DDLApname.SelectedItem.Value;
                    string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                    SqlConnection conn = new SqlConnection(cs);
                    conn.Open();
                    using (conn)
                    {
                        SqlCommand cmd = new SqlCommand("Select * from appointment_status where mail = @email and a_name=@apName", conn);
                        cmd.Parameters.Add(new SqlParameter("@email", eId));
                        cmd.Parameters.Add(new SqlParameter("@apName", tbxAPname.Text));
                        SqlDataReader reader = cmd.ExecuteReader();
                        reader.Read();
                        tbxTime.Text = (string)reader[5];
                   
                        //DDLcity.Items.FindByValue((string)reader[3]).Selected = true;
                        //DDLday.Items.FindByValue((string)reader[4]).Selected = true;
                       // DDLmax.Items.FindByValue((string)reader[6]).Selected = true;
                    }
                    bindDropdown(eId);
                }    */     
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dview.aspx");
        }

        protected void btnSeeApp_Click(object sender, EventArgs e)
        {
            string eId = Request.QueryString["eId"];
            Response.Redirect("DoctorsChamber.aspx?m=" + eId);
        }
    }
}