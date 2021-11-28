using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class PaginaInicial : System.Web.UI.Page
    {

        public void Page_Load(object sender, EventArgs e)
        {
        }

        protected void OpenTelaLog(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("/Pages/reserva-veiculo.aspx");
            }
            else
            {
                Response.Redirect("/Pages/tela-log.aspx");
            }
        }

        protected void btnAreaClie(object sender, EventArgs e)
        {
            

            if (Session["email"] != null)
            {
                Response.Redirect("/Pages/areacliente.aspx");
            }
            else
            {
                Response.Redirect("/Pages/tela-log.aspx");     
            }
        }
    }
}