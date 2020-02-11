using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPractice
{
    public partial class UserView : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                string eId = Request.QueryString["eId"];
               
                string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                using (conn)
                {

                    SqlCommand cmd = new SqlCommand("Select * from citizen where email = @email", conn);
                    cmd.Parameters.Add(new SqlParameter("@email", eId));
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    tbxUPname.Text = (string)reader[1];
                    tbxUPmail.Text = (string)reader[2];
                    tbxUPphone.Text = (string)reader[3];

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            string name = tbxUPname.Text;
            string phone = tbxUPphone.Text;
            string mail = tbxUPmail.Text;
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(phone))
            {
                lvlStu.Text = "some fields are empty";
            }
            else
            {
                conn.Open();
                using (conn)
                {
                    
                    SqlCommand cmd = new SqlCommand("Update citizen set fullname=@name, phone=@phone where email=@mail", conn);
                    cmd.Parameters.Add(new SqlParameter("@name", name));
                    cmd.Parameters.Add(new SqlParameter("@phone", phone));
                    cmd.Parameters.Add(new SqlParameter("@mail", mail));
                    cmd.ExecuteNonQuery();
                }
                lvlStu.Text = "profile updated";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
             
                string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                string city = DDLsearchDcity.SelectedItem.Value;
                string sp = DDLsearchDs.SelectedItem.Value;
                conn.Open();
                using (conn)
                {
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT a.id as id, d.name as name, d.about as about, a.a_name as a_name FROM appointment_status as a left join doctor as d on d.email = a.mail and ( d.s1='" + sp + "' or d.s2='" + sp + "' or d.s3='" + sp + "') where  d.name is not null and a.city = '" + city+"'",conn);// Inner Join appointment_status on doctor.email=appointment_status.mail where appointment_status.city ='" + city + "'", conn);
                
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                dataDoc.DataSource = dtbl;
                dataDoc.DataBind();
                }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string args = btn.CommandArgument;
            string eId = Request.QueryString["eId"];
            Response.Redirect("BookAppoinment.aspx?C_Id="+args+"&m="+eId);
        }
    }
}