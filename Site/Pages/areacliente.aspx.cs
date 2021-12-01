using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class areacliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlugar(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/reserva-veiculo.aspx");
        }

        protected void btnSair(object sender, EventArgs e)
        {
            Session.Remove("email");
            Response.Redirect("/Pages/Paginainicial.aspx");
           
        }
    }
}