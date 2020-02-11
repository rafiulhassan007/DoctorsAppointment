using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPractice
{
    public partial class DoctorsChamber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                //string c_Id = Request.QueryString["C_Id"];
                SqlDataAdapter sqData = new SqlDataAdapter();
                string m_Id = Request.QueryString["m"];
                string cs = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                using (conn) {
                    SqlCommand cmd = new SqlCommand("select p.name as name, p.age as age, p.serial as serial, a.a_name as a_name, p.citizen_mail as citizen_mail, p.date as date from appointment_status as a left join patient_link as p on a.id=p.chamber_code where p.serial is not null and a.mail =@mail", conn);
                    cmd.Parameters.Add(new SqlParameter("@mail", m_Id));
                    sqData.SelectCommand = cmd;
                    DataTable dtbl = new DataTable();
                    sqData.Fill(dtbl);
                    GridViewDocCha.DataSource = dtbl;
                    GridViewDocCha.DataBind();
                }
            }
        }

        protected void GridViewDocCha_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}