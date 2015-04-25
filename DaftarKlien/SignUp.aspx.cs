using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DaftarKlien
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection con = new SqlConnection(dbconfig);
            con.Open();
            string Query = "insert into namauser(username,password) values(@username,@password)";
            SqlCommand cmd = new SqlCommand(Query, con);

            
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUsername.Text;
            cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = txtPassword.Text;
            
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("login.aspx");
        }
    }
}