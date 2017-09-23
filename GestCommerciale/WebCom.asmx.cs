using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace GestCommerciale
{
    /// <summary>
    /// Summary description for WebCom
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebCom : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public int getnumber(int i)
        {

            SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Exemple;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select count(*) from DetailLigne  where idCommande =" + i + " ", cnx);
            cnx.Open();
            i= int .Parse(cmd.ExecuteScalar().ToString());
            cnx.Close();
            return i;
        }

    }
}
