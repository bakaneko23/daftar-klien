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
    public partial class TambahKlien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection con = new SqlConnection(dbconfig);
            con.Open();
            string Query = "insert into Daftar(nama,alamat,tanggal) values(@nama,@alamat,@tanggal)";
            SqlCommand cmd = new SqlCommand(Query, con);

            cmd.Parameters.Add("@nama", SqlDbType.VarChar, 200).Value = txtNama.Text;
            cmd.Parameters.Add("@alamat", SqlDbType.VarChar, 50).Value = txtAlamat.Text;
            cmd.Parameters.Add("@tanggal", SqlDbType.Date).Value = txtTanggal.Text;
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
           
            txtNama.Text = "";
            txtAlamat.Text = "";
            txtTanggal.Text = "";
            Response.Redirect("TambahKlien.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtNama_TextChanged(object sender, EventArgs e)
        {

        }
    }
}