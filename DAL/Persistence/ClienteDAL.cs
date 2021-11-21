using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;




namespace DAL.Persistence
{
    public class ClienteDAL
    {
        //String de conexão com banco de dados!
        const string strConexao = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=BD_Alucar;Integrated Security=True";

        const string Query = "";
        public bool tem;
        public string mensagem = "";
        public string mensagem1 = "";
        SqlDataReader dr;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="email"></param>
        /// <param name="senha"></param>
        /// <param name="confsenha">para confirmar senha</param>
        /// <param name="nome"></param>
        /// <param name="cpf"></param>
        /// <param name="datadenascimento"></param>
        /// <param name="cnh"></param>
        /// <param name="telefone"></param>
        /// <param name="rg"></param>
        /// <param name="passaporte">caso seja estranjeiro</param>
        /// <param name="celular"></param>
        /// <returns></returns>
        public string Cadastrar(string email, string senha, string nome, string cpf, string datadenascimento, string cnh, string telefone, string rg, string passaporte, string celular)
        {

            string strConexao = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=BD_Alucar;Integrated Security=True";
            string Query = "INSERT INTO Clientes(nome, cpf, rg, cnh, passaporte, datadenascimento, email, senha, telefone, celular) VALUES('" + nome + "', '" + cpf + "', '" + rg + "', '" + cnh + "', '" + passaporte + "', '" + datadenascimento + "', '" + email + "', '" + senha + "', '" + telefone + "', '" + celular + "')";
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
            catch ( SqlException ex)
            {

                this.mensagem1 = ex.Message;
                this.mensagem = "erro com banco de dados! ";
            }


            return mensagem;

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Email">Email do usuario</param>
        /// <param name="Senha">senha para conectar</param>
        /// <returns></returns>
        public bool VerificaLogin(string Email, string Senha)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"SELECT * FROM Clientes WHERE email = @Email AND senha = @Senha";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Senha", Senha);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    tem = true;
                }
                else
                {
                    tem = false;
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


           public string Deletar(string Email, string Senha)
           {
               SqlConnection con = new SqlConnection(strConexao);

               string Query = @"DELETE * FROM Clientes WHERE email = @Email AND senha = @Senha";
               SqlCommand cmd = new SqlCommand(Query, con);
               cmd.Parameters.AddWithValue("@Email", Email);
               cmd.Parameters.AddWithValue("@Senha", Senha);

               try
               {
                   con.Open();
                   dr = cmd.ExecuteReader();
                   if (dr.HasRows)
                   {
                       this.mensagem = "Cadastro excluido";
                   }
                   else
                   {

                   }
                   con.Close();
                   dr.Close();
               }
               catch (SqlException)
               {

                   this.mensagem = "Erro com banco de dados!";
               }          

               return mensagem;
           }
           
    }
}


