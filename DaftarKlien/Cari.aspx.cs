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
    public partial class Cari : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             //cari
            string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection con = new SqlConnection(dbconfig);
            con.Open();
            string query = "select * from Daftar where nama=@nama";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@nama", SqlDbType.VarChar).Value = txtCari.Text;
            cmd.CommandType = CommandType.Text;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                int id = (int)rd["id"];
                string nama = (string)rd["nama"];
                string alamat = (string)rd["alamat"];
                //string tanggal = (string)rd["tanggal"];
                DateTime tanggal = (DateTime)rd["tanggal"];
                

                txtId.Text = Convert.ToString(id);
                txtNama.Text = nama;
                txtAlamat.Text = alamat;
                txtTanggal.Text = Convert.ToString(tanggal);

                
              


            }
            rd.Close();
            con.Close();

            
        
        }
    }
}