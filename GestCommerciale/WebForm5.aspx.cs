using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GestCommerciale.ServiceReference1;

namespace GestCommerciale
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        WebCom WC = new WebCom();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = WC.getnumber(int.Parse(DropDownList1.SelectedValue)).ToString();
        }
    }
}