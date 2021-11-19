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
    public partial class cadastro_cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Prosseguir_ServerClick(object sender, EventArgs e)
        {
           
            
                 Cliente C = new Cliente();

                 C.Email = txEmail.Text;
                 C.Senha = txSenha.Text;
                 C.Nome = txNome.Text;
                 C.CPF = txCPF.Text;
                 C.DataNascimento = txDataNascimento.Text;
                 C.NCarteiraHabilitacao = txNumCNH.Text;
                 C.Telefone = txTel1.Text;
                 C.RG = txtRG.Text;
                 C.Passaporte = txCPF.Text;
                 C.Celular = txCelular.Text;
                 string confsenha = txConfSenha.Text;
                

            


                 ClienteDAL d = new ClienteDAL();


                 d.Cadastrar(C.Email, C.Senha, confsenha, C.Nome, C.CPF, C.DataNascimento, C.NCarteiraHabilitacao, C.Telefone, C.RG, C.Passaporte, C.Celular); 

                 lblMensagem.Text = ""+ d.mensagem + "";


            
         }

         protected void Unnamed_ServerClick(object sender, EventArgs e)
         {

         }
    }
}