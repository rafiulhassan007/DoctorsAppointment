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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = 0;
            string email = tbxLogMail.Text;
            string pass = tbxLogPass.Text;
            string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            SqlConnection conn2 = new SqlConnection(cs);
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select * from doctor where email=@email AND password=@pass", conn);
                cmd.Parameters.Add(new SqlParameter("@email", email));
                cmd.Parameters.Add(new SqlParameter("@pass", pass));
                SqlDataReader reader = cmd.ExecuteReader();
                
                while (reader.Read())
                {
                    i++;
                }
                if (i==1)
                {
                    Session["IsLoggedIn"] = "yes";
                    Session["AccountType"] = email;
                    //lvlLogInStatus.Text = "Successfully Logged In as doctor";
                    Response.Redirect("DoctorsProfile.aspx?eId="+email);
                }
                else {
                    lvlLogInStatus.Text = "Invalid";
                }
            }

            if (i != 1) {

                conn2.Open();
                using (conn2)
                {
                    SqlCommand cmd = new SqlCommand("Select * from citizen where email=@email AND password=@pass", conn2);
                    cmd.Parameters.Add(new SqlParameter("@email", email));
                    cmd.Parameters.Add(new SqlParameter("@pass", pass));
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        i++;
                    }
                    if (i == 1)
                    {
                        Session["IsLoggedIn"] = "yes";
                        Session["AccountType"] = email;
                        //lvlLogInStatus.Text = "Successfully Logged In as user";
                        Response.Redirect("UserView.aspx?eId=" + email);

                    }
                    else
                    {
                        lvlLogInStatus.Text = "Invalid";
                    }
                }
            }
        }
    }
}