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

        protected void BtnAtualizar(object sender, EventArgs e)
        {
            Cliente c = new Cliente();
            ClienteDAL clie = new ClienteDAL();

            string login = Session["email"].ToString();

            c.Email = txemail.Text;
            c.Nome = txnome.Text;
            c.Senha = txsenha.Text;
            c.Telefone = txtelefone.Text;
            c.Celular = txcelular.Text;


           
            if (!c.Senha.Equals(""))
            {
                clie.AlterarSenha(c.Senha, login);
                lblmensagem.Text = clie.mensagem;
            }
            if(!c.Nome.Equals(""))
             {
                 clie.AlterarNome(c.Nome, login);
                lblmensagem.Text = clie.mensagem;
            }
             if (!c.Telefone.Equals(""))
             {
                 clie.AlterarTelefone(c.Telefone, login);
                lblmensagem.Text = clie.mensagem;
            }
             if (!c.Celular.Equals(""))
             {
                 clie.AlterarCelular(c.Celular, login);
                lblmensagem.Text = clie.mensagem;
            }
             if (!c.Email.Equals(""))
            {
                clie.AlterarEmail(c.Email, login);
                lblmensagem.Text = clie.mensagem;             
                Session["email"] = c.Email;
            }
        }

        protected void btnAlugar(object sender, EventArgs e)
        {
           
            Response.Redirect("/Pages/reserva-veiculo.aspx");
        }
    }
}