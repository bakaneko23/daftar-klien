using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace DaftarKlien
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              string id = Request.QueryString["id"];
                lbTampilId.Text = id;

                string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                SqlConnection con = new SqlConnection(dbconfig);
                con.Open();
                string query = "select * from Daftar where id=@id";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Convert.ToInt32(lbTampilId.Text);
                cmd.CommandType = CommandType.Text;
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {

                    int id2 = (int)rd["id"];
                    string nama = (string)rd["nama"];
                    string alamat = (string)rd["alamat"];
                    string tanggal = (string)rd["tanggal"];

                    lbTampilId.Text = Convert.ToString(id2);
                    lbTampilNama.Text = nama;
                    lbTampilAlamat.Text = alamat;
                    lbTampilTanggal.Text = tanggal;
                    


                }
                rd.Close();
                con.Close();
            }

        }
    }
