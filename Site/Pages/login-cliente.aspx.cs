using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

namespace Site.Pages
{
    public partial class login_cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Alugar_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/tela-log.aspx");
        }

        protected void BTN_Entrar(object sender, EventArgs e)
        {
            ClienteDAL cliente = new ClienteDAL();
            Cliente C = new Cliente();
            bool confirma = true;


            string email = txEmail.Text;
            string senha = txSenha.Text;

            cliente.VerificaLogin(email, senha);

            if (cliente.tem == confirma)
            {
                Response.Redirect("/Pages/areacliente.aspx");
            }
            else 
            {
                if (cliente.mensagem.Equals(""))
                {
                    lblMensagemlogin.Text = "E-mail ou senha não encontrados.... Confira os dados e tente novamente";
                }
                else
                {
                    lblMensagemlogin.Text = cliente.mensagem;
                }
               
            }

        }
    }
}