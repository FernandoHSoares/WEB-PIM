using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;
using System.Web.SessionState;

namespace Site.Pages
{
    public partial class cadastro_cliente : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnProsseguir(object sender, EventArgs e)
        {

            Session["email"] = txEmail.Text;
            Session["senha"] = txSenha.Text;
            Session["nome"] = txNome.Text;
            Session["cpf"] = txCPF.Text;
            Session["datanascimento"] = txDataNascimento.Text;
            Session["cnh"] = txNumCNH.Text;
            Session["telefone"] = txTel1.Text;
            Session["rg"] = txRG.Text;
            Session["celular"] = txCelular.Text;


                 

            if (txSenha.Text.Equals(txConfSenha.Text))
            {

                Response.Redirect("/Pages/confirmacao-cliente.aspx");
            }
            else
            {
                lblMensagem.Text = "Senhas não correspondem!";
            }

         }

       

    }
}