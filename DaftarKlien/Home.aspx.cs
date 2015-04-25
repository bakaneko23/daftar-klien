using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DaftarKlien
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.Remove("Username");
            Session.Remove("Password");
            
         
        
        Response.Redirect("login.aspx?mode=logout");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
        
    }
}