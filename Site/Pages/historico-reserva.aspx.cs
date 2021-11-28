using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class historico_reserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlugar(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/reserva-veiculo.aspx");
        }
    }
}