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

        protected void Opentelalo_ServerClick(object sender, EventArgs e)
        {


            Response.Redirect("/Pages/tela-log.aspx");
        }
    }
}