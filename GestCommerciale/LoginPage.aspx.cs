using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestCommerciale
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack && Session["Type"] == null)
            {
                Session["Type"] = "";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // this is just for test . you can create a table in the database 
            if (TB_Username.Text == "Admin" && TB_Password.Text =="Admin") {
                Session["Type"] = "admin";
                Response.Redirect("WebForm3.aspx");
                
            }
            else
            {
                LBL_Error.Text= "Username Or password Incorrect";
            }
          
        }
    }
}