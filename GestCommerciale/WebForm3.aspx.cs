using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestCommerciale
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Type"].ToString() =="") {

                Response.Redirect("LoginPage.aspx");
            }
            if (!Page.IsPostBack) {
                Session["Pos"] = 0;
                    RemplirChamps(0);
                
            }

        }

        void RemplirChamps(int Pos)
        {
            if (GridView1.Rows.Count > 0)
            {
                TB_IdClient.Text = GridView1.Rows[Pos].Cells[0].Text;
                TB_NomClient.Text = GridView1.Rows[Pos].Cells[1].Text;
                TB_PrenomCLi.Text = GridView1.Rows[Pos].Cells[2].Text;
                TB_DateNaissa.Text = GridView1.Rows[Pos].Cells[3].Text;
                TB_Adresse.Text = GridView1.Rows[Pos].Cells[4].Text;
            }
        }

        protected void BTN_Debut_Click(object sender, EventArgs e)
        {
            RemplirChamps(0);
        }

        protected void BTN_Fin_Click(object sender, EventArgs e)
        {
            int x = GridView1.Rows.Count;
            if (x > 0) {
                Session["Pos"] = x - 1;
                RemplirChamps(x-1);

            }
        }

        protected void BTN_Prec_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Session["Pos"].ToString());
            if (x > 0)
            {
                x--;
                Session["Pos"] = x;
                RemplirChamps(x);

            }
        }

        protected void BTN_Suiv_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Session["Pos"].ToString());
            int max = GridView1.Rows.Count-1;
            if (x < max)
            {
                x++;
                Session["Pos"] = x;
                RemplirChamps(x);
            }
        }

        protected void BTN_Ajouter_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void BTN_Modifier_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }

        protected void BTN_Supprimer_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }

        protected void BTN_Vider_Click(object sender, EventArgs e)
        {
            TB_IdClient.Text = "";
            TB_NomClient.Text = "";
            TB_PrenomCLi.Text = "";
            TB_DateNaissa.Text = "";
            TB_Adresse.Text = "";
        }
    }
}