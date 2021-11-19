using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;


namespace DAL.Persistence
{
    public class PersonDAL
    {
        //String de conexao com o banco de dados!
        const string strConexao = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=ProjetoLogin;Integrated Security=True";
       

        const string Query = "";
        public bool tem = false;
        public string mensagem = "";
        SqlDataReader dr;


        public bool VerificarLogin(string Email, string Senha)
        {

            //  cmd.CommandText = "SELECT * FROM Logins WHERE email = @email and senha= @senha";
            string Query = @"SELECT* FROM Clientes WHERE email = Email AND senha = Senha";
            SqlConnection con = new SqlConnection(strConexao);
            SqlCommand cmd = new SqlCommand(Query, con);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    tem = true;
                }
                con.Close();
                dr.Close();
            }
            catch (SqlException)
            {

                this.mensagem = "Erro com banco de dados!";
            }

            return tem;

        }





        public string cadastrar(string email, string senha, string confsenha)
        {
          

            if (senha.Equals(confsenha))
            {

         
                string Query = "INSERT INTO Logins(email, senha) VALUES('" + email + "', '" + senha + "')";
                SqlConnection con = new SqlConnection(strConexao);
                SqlCommand cmd = new SqlCommand(Query, con);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    this.mensagem = "cadastrado com sucesso! ";
                    tem = true;

                }
                catch (SqlException)
                {

                    this.mensagem = "erro com banco de dados! ";
                }
            }
            else
            {
                this.mensagem = "Senhas nao correspondem";
            }
            return mensagem;

        }

    }

}