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
            Response.Redirect("/Pages/tela-log.aspx");
        }
    }
}