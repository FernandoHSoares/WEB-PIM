using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Persistence;
using DAL.Model;

namespace Site.Pages
{
    public partial class crud_cadastro_cliente : System.Web.UI.Page
    {
        

        public void Page_Load(object sender, EventArgs e)
        {
           
        }

        public void BtnEexcluir_conta(object sender, EventArgs e)
        {
            ClienteDAL clie = new ClienteDAL();

            clie.Deletar(Session["email"].ToString());

            string msg = "";

            if (clie.mensagem.Equals(msg))
            {

                lblmensagem.Text = "cadastro excluido!";
                Response.Redirect("/Pages/Paginainicial.aspx");
                Session.Remove("email");
            }
            else
            {
                lblmensagem.Text = clie.mensagem;
            }
        }
    }
}