using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace DaftarKlien
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id= Request.QueryString["id"];
            lbStatus.Text = id;

            //string user = Request.QueryString["username"];
            //LbUser.Text = user;
            string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection con = new SqlConnection(dbconfig);
            con.Open();
            string query = "select * from Daftar where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Convert.ToInt32(lbStatus.Text);
            cmd.CommandType = CommandType.Text;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                int id2 = (int)rd["id"];
                string nama= (string)rd["nama"];
                string alamat = (string)rd["alamat"];
                DateTime tanggal = (DateTime)rd["tanggal"];

                txtId.Text = Convert.ToString(id);
                txtNama.Text = nama;
                txtAlamat.Text = alamat;
                txtTanggal.Text = Convert.ToString(tanggal);


            }
            rd.Close();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        ////      //cari
        ////    string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        ////    SqlConnection con = new SqlConnection(dbconfig);
        ////    con.Open();
        ////    string query = "select * from Daftar where nama=@nama";
        ////    SqlCommand cmd = new SqlCommand(query, con);

        ////    cmd.Parameters.Add("@nama", SqlDbType.VarChar).Value = txtCari.Text;
        ////    cmd.CommandType = CommandType.Text;
        ////    SqlDataReader rd = cmd.ExecuteReader();
        ////    if (rd.Read())
        ////    {
        ////        int id = (int)rd["id"];
        ////        string nama = (string)rd["nama"];
        ////        string alamat = (string)rd["alamat"];
        ////        //string tanggal = (string)rd["tanggal"];
        ////        DateTime tanggal = (DateTime)rd["tanggal"];
                

        ////        txtId.Text = Convert.ToString(id);
        ////        txtNama.Text = nama;
        ////        txtAlamat.Text = alamat;
        ////        txtTanggal.Text = Convert.ToString(tanggal);

                
              


        ////    }
        ////    rd.Close();
        ////    con.Close();

            
        ////
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //hapus
            //string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            //SqlConnection con = new SqlConnection(dbconfig);
            //con.Open();
            //string query = "Delete from Daftar where id=@id";
            //SqlCommand cmd = new SqlCommand(query, con);

            //cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(txtId.Text);
            //cmd.CommandType = CommandType.Text;
            //cmd.ExecuteNonQuery();
            //con.Close();
            //txtId.Text = "";
            //txtNama.Text = "";
            //txtAlamat.Text = "";
            //txtTanggal.Text = "";

            //Response.Redirect("Edit.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //edit
            string dbconfig = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection con = new SqlConnection(dbconfig);
            con.Open();
            string query = "update Daftar set nama=@nama, alamat=@alamat, tanggal=@tanggal where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(txtId.Text);
            cmd.Parameters.Add("@nama", SqlDbType.VarChar, 200).Value = txtNama.Text;
            cmd.Parameters.Add("@alamat", SqlDbType.VarChar, 200).Value = txtAlamat.Text;
            cmd.Parameters.Add("@tanggal", SqlDbType.DateTime).Value = txtTanggal.Text;
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            txtId.Text = "";
            txtNama.Text = "";
            txtAlamat.Text = "";
            txtTanggal.Text = "";
            Response.Redirect("Edit.aspx");
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtTanggal_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtCari_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
