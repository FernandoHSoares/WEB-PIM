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


            /*
            clie.ImprimirCadastro(email);
            c.Nome = clie.Nome;
            c.CPF = clie.CPF;
            c.DataNascimento = clie.DNascimento;
            c.Email = clie.Email;
            */

            

           

        }
    }
}