using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class condicoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Alugarbtn(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/tela-log.aspx");
        }
    }
}