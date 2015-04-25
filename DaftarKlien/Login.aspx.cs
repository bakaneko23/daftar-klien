using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DaftarKlien
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
               string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection con = new SqlConnection(dbconfig);
            con.Open();
            string Query = "SELECT * FROM namauser WHERE username=@username";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUsername.Text;
            cmd.CommandType = CommandType.Text;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                string username = (string)rd["username"];
                string password = (string)rd["password"];
                string password2 = txtPassword.Text;
                if (password == password2)
                {
                    string status = (string)rd["keterangan"];

                    if (status == "admin")
                    {
                        rd.Close();
                        con.Close();
                        Session["username"] = username;
                        Response.Redirect("Home.aspx");
                        return;
                    }

                    else
                    {
                        rd.Close();
                        con.Close();
                        Session["username"] = username;
                        Response.Redirect("DaftarKlien.aspx");
                        return;
                    }
                }
                lbUser.Text = "Username atau Password Salah";
            }


        
        }
    }
}