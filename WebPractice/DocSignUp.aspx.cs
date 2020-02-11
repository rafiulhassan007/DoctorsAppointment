using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPractice
{
    using System.Configuration;
    using System.Data.SqlClient;
    using System.Threading;
    public partial class index : System.Web.UI.Page
    {
       
        protected index() {
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = tbxDfullname.Text;
            string email = tbxDemail.Text;
            string password = tbxDpassword.Text;
            string s1 = DDS1.SelectedItem.Value;
            string s2 = DDS2.SelectedItem.Value;
            string s3 = DDS3.SelectedItem.Value;
            string about = tbxDabout.Text;
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                lvlDconf.Text = "Some field empty";
            }
            else
            {
                int i = 0;
                string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                SqlConnection conn1 = new SqlConnection(cs);
                SqlConnection conn2 = new SqlConnection(cs);

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

                conn2.Open();
                using (conn2) {
                    if (i == 1)
                    {
                        lvlDconf.Text = "Email already used!";
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("Insert into doctor(name,email,password,s1,s2,s3,about) values(@name, @email, @pass, @s1, @s2, @s3, @about)", conn2);
                        cmd.Parameters.Add(new SqlParameter("@name", name));
                        cmd.Parameters.Add(new SqlParameter("@email", email));
                        cmd.Parameters.Add(new SqlParameter("@pass", password));
                        cmd.Parameters.Add(new SqlParameter("@s1", s1));
                        cmd.Parameters.Add(new SqlParameter("@s2", s2));
                        cmd.Parameters.Add(new SqlParameter("@s3", s3));
                        cmd.Parameters.Add(new SqlParameter("@about", about));

                        cmd.ExecuteNonQuery();
                        lvlDconf.Text = "Successfully registred";
                    }
                }

            }
        }
        
    }
}