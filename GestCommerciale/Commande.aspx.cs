using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestCommerciale
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTN_Calculer_Click(object sender, EventArgs e)
        {
            SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Exemple;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select sum(DL.QteDemande *P.PrixUnitaire ) from DetailLigne DL inner Join Produit P on P.IdProduit=DL.IdProduit where idCommande =" + DropDownList1.SelectedValue.ToString()+" ",cnx);
            cnx.Open();
            TB_PrixTotal.Text = cmd.ExecuteScalar().ToString();
            cnx.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource2.SelectParameters["IdCommande"].DefaultValue = DropDownList1.SelectedValue.ToString();
        }

        protected void BTN_Afficher_Click(object sender, EventArgs e)
        {
            CrystalReport1 cr = new CrystalReport1();
            cr.SetParameterValue("idcommande", DropDownList1.SelectedValue.ToString());
            CrystalReportViewer1.ReportSource = cr;

        }
    }
}