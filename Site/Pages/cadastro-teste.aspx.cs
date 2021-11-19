using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;
using System.Data.SqlClient;

namespace Site.Pages
{
    public partial class cadastro_teste : System.Web.UI.Page
    {
        

        public void Page_Load(object sender, EventArgs e)
        {

        }

        public void Unnamed_ServerClick(object sender, EventArgs e)
        {
            PersonDAL person = new PersonDAL();



            Person p = new Person();

            p.Email = txEmail.Text;
            p.Senha = txSenha.Text;
            string confsenha = txConfSenha.Text;

            
            person.cadastrar(p.Email, p.Senha,confsenha);

            lblMensagem2.Text = " email " + person.mensagem ;


            /*
            //string strConexao = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=ProjetoLogin;Integrated Security=True";
            string Query = "INSERT INTO Logins(email, senha) VALUES('" + txEmail.Text + "', '" + txSenha.Text + "')";

            SqlConnection conexao = new SqlConnection(strConexao);
            SqlCommand comando = new SqlCommand(Query, conexao);

            conexao.Open();
            comando.ExecuteNonQuery();
            conexao.Close();*/


        }

            
    }
}
