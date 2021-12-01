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
    public partial class pagina_crud_cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Session["email"].ToString();
            Cliente c = new Cliente();
            ClienteDAL clie = new ClienteDAL();

            clie.ImprimirCadastro(email);
            c.Nome = clie.Nome;
            c.CPF = clie.CPF;
            c.DataNascimento = clie.DNascimento.ToString();
            c.Email = clie.Email;
            c.Celular = clie.Celular;
            c.Telefone = clie.Telefone;
            c.NCarteiraHabilitacao = clie.CNH;

            if (c.DataNascimento.Length > 10)
            {
                c.DataNascimento = c.DataNascimento.Substring(0, 10);
            }


            lblTelefone1.Text = c.Telefone;
            lblcelular.Text = c.Celular;
            lblCPF.Text = c.CPF;
            lblNome.Text = c.Nome;
            lblDataNasc.Text = clie.DNascimento.ToString();
            lblemail.Text = c.Email;
            lblNumCNH.Text = c.NCarteiraHabilitacao;

        }

        protected void BtnEditar(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/crud-cadastro-cliente.aspx");
        }

        protected void btnAlugar(object sender, EventArgs e)
        {
           Response.Redirect("/Pages/reserva-veiculo.aspx");
        }
    }
}