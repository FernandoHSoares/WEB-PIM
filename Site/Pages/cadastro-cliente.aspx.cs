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
                ClienteDAL clie = new ClienteDAL();
                string MsgVerifica = "";

                clie.VerificaEmail(txEmail.Text);
                clie.VerificaCPF(txCPF.Text);
                clie.VerificaCNH(txNumCNH.Text);
                clie.VerificaRG(txRG.Text);
                clie.VerificaPassaporte(txCPF.Text);

                if(clie.msgemail.Equals(MsgVerifica) && clie.msgcpf.Equals(MsgVerifica)&& clie.msgrg.Equals(MsgVerifica)&& clie.msgcnh.Equals(MsgVerifica)&&clie.msgpassaporte.Equals(MsgVerifica))
                {
                    Response.Redirect("/Pages/confirmacao-cliente.aspx");
                }
                else if(!clie.msgemail.Equals(MsgVerifica)) 
                {
                    lblMensagem.Text = clie.msgemail;
                }
                else if (!clie.msgcpf.Equals(MsgVerifica))
                {
                    lblMensagem.Text = clie.msgcpf;

                }else if (!clie.msgrg.Equals(MsgVerifica))
                {
                    lblMensagem.Text = clie.msgrg;

                }else if (!clie.msgcnh.Equals(MsgVerifica))
                {
                    lblMensagem.Text = clie.msgcnh;
                }
                else if (!clie.msgpassaporte.Equals(MsgVerifica))
                {
                    lblMensagem.Text = clie.msgpassaporte;
                }

            }
            else
            {
                lblMensagem.Text = "Senhas não correspondem!";
            }

         }

       

    }
}