using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;


namespace Site.Pages
{
    public partial class confirmacao_cliente : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            


            lblEmail.Text = Session["email"].ToString();
            lblNome.Text = Session["nome"].ToString();
            lblDNasc.Text = Session["datanascimento"].ToString();
            lblTelefone.Text = Session["telefone"].ToString();
            lblCPF.Text = Session["cpf"].ToString();
            lblNumCNH.Text = Session["cnh"].ToString();
            lblRG.Text = Session["rg"].ToString();
            lblCelular.Text = Session["celular"].ToString();
           
            //Session.Remove("email");
            

        }



        protected void btnConfirmaCadastro(object sender, EventArgs e)
        {
            string msg = "";
            ClienteDAL cliente = new ClienteDAL();
            Cliente c = new Cliente();
            
            c.Senha = Session["senha"].ToString();
            c.Email = txEmail.Text;
            c.Nome = txNome.Text;
            c.CPF = txCPF.Text;
            c.DataNascimento = txDNasc.Text;
            c.NCarteiraHabilitacao = txCNH.Text;
            c.Telefone = txTelefone.Text;
            c.RG = txRG.Text;
            c.Celular = txcel.Text;

            

            //confere se compo email foi preenchido
            if (c.Email.Equals(msg))
            {
                c.Email = Session["email"].ToString();
            }
            
            //confere se compo nome foi preenchido
            if (c.Nome.Equals(msg))
            {
                c.Nome = Session["nome"].ToString();
            }
 
            //confere se compo cpf foi preenchido
            if(c.CPF.Equals(msg))
            {
                c.CPF = Session["cpf"].ToString();
            }
            
            //confere se campo RG foi preenchido
            if (c.RG.Equals(msg))
            {
                c.RG = Session["rg"].ToString();
            }
           
            //confere se campo data de nascimento foi preenchido
            if (c.DataNascimento.Equals(msg))
            {
                c.DataNascimento = Session["datanascimento"].ToString();
            }
            
            //confere se campo num cnh foi preenchido
            if (c.NCarteiraHabilitacao.Equals(msg))
            {
                c.NCarteiraHabilitacao = Session["cnh"].ToString();
            }
           
            //confere se campo telefone foi preenchido
            if (c.Telefone.Equals(msg))
            {
                c.Telefone = Session["telefone"].ToString();
            }
          
            //confere se campo celular foi preenchido
            if (c.Celular.Equals(msg))
            {
                c.Celular = Session["celular"].ToString();
            }
           

            c.Passaporte = c.CPF;
            Session["email"] = c.Email;

            cliente.Cadastrar(c.Email, c.Senha, c.Nome, c.CPF, c.DataNascimento, c.NCarteiraHabilitacao, c.Telefone, c.RG, c.Passaporte, c.Celular);
          
            lblMensagem.Text = cliente.mensagem;

            Session.Remove("senha");

            Response.Redirect("/Pages/areacliente.aspx");

            Session.Remove("nome");
            Session.Remove("cpf");
            Session.Remove("datanascimento");
            Session.Remove("cnh");
            Session.Remove("telefone");
            Session.Remove("rg");
            Session.Remove("celular");

        }
    }
}
          
        


     