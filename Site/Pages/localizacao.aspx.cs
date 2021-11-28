using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class localizacao : System.Web.UI.Page
    {
        protected void alugar_ServerClick(object sender, EventArgs e)
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

        protected void btnAreaCliente(object sender, EventArgs e)
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