using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebPractice
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = tbxUFullName.Text;
            string email = tbxUEmail.Text;
            string phone = tbxUPhone.Text;
            string password = tbxUpass.Text;
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(password))
            {
                lvlConfirmation.Text = "Some field empty";
            }
            else {
                int i = 0;
                string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                SqlConnection conn1 = new SqlConnection(cs);
                conn1.Open();
                using (conn1)
                {
                    SqlCommand cmd1 = new SqlCommand("Select email from doctor where email=@email UNION Select email from citizen where email=@email", conn1);
                    cmd1.Parameters.Add(new SqlParameter("@email", email));
                    SqlDataReader reader = cmd1.ExecuteReader();

                    while (reader.Read())
                    {
                        i++;
                    }
                }

                conn.Open();
                using (conn)
                {
                    if (i == 1)
                    {
                        lvlConfirmation.Text = "Email already used!";
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("Insert into citizen(fullname,email,phone,password) values(@name, @email, @phone, @pass)", conn);
                        cmd.Parameters.Add(new SqlParameter("@name", name));
                        cmd.Parameters.Add(new SqlParameter("@email", email));
                        cmd.Parameters.Add(new SqlParameter("@phone", phone));
                        cmd.Parameters.Add(new SqlParameter("@pass", password));
                        cmd.ExecuteNonQuery();
                        lvlConfirmation.Text = "Successfully registred";
                    }
                }

            }
            
        }

        protected void btnCancle1_Click(object sender, EventArgs e)
        {

        }
    }
}