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
        public string msgemail = "";
        public string msgcpf = "";
        public string msgrg = "";
        public string msgpassaporte = "";
        public string msgcnh = "";

        public string Nome;
        public string Email;
        public string Telefone;
        public string Celular;
        public string DNascimento;
        public string CNH;
        public string CPF;
        


        SqlDataReader dr;

        /// <summary>
        /// Metodo de cadastro de cliente
        /// </summary>
        /// <param name="email"></param>
        /// <param name="senha"></param>
        /// <param name="nome"></param>
        /// <param name="cpf"></param>
        /// <param name="datadenascimento"></param>
        /// <param name="cnh"></param>
        /// <param name="telefone"></param>
        /// <param name="rg"></param>
        /// <param name="passaporte"></param>
        /// <param name="celular"></param>
        /// <returns></returns>
        public string Cadastrar(string email, string senha, string nome, string cpf, string datadenascimento, string cnh, string telefone, string rg, string passaporte, string celular)
        {
        
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
            catch ( SqlException)
            {

                this.mensagem = "erro com banco de dados! ";
            }


            return mensagem;

        }

        /// <summary>
        /// Metodo de login de cliente
        /// </summary>
        /// <param name="Email">Email do usuario</param>
        /// <param name="Senha">senha para conectar</param>
        /// <returns></returns>
        public bool Login(string Email, string Senha)
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

        
        /// <summary>
        /// Metodo de exclusao de cliente
        /// </summary>
        /// <param name="Email"></param>
        /// <param name="Senha"></param>
        /// <returns></returns>
        public string Deletar(string Email)
           {
               SqlConnection con = new SqlConnection(strConexao);

               string Query = @"DELETE FROM Clientes WHERE email = @Email";
               SqlCommand cmd = new SqlCommand(Query, con);
               cmd.Parameters.AddWithValue("@Email", Email);
              

               try
               {
                   con.Open();
                   dr = cmd.ExecuteReader();      
                   con.Close();
                this.mensagem = "";
               }
               catch (SqlException ex)
               {
                    
                   this.mensagem = "Erro, não foi possivel deletar o cadastro!" + ex.Message;
               }          

               return mensagem;
           }
      
        
        //Verifica se o email ja esta cadastrado
        public string VerificaEmail(string email)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"SELECT * FROM Clientes WHERE email = @Email";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@Email", email);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    msgemail = "Email ja cadastradado no sistema!";
                }
                else
                {
                    msgemail = "";
                }
                con.Close();
                dr.Close();
            }
            catch (SqlException)
            {

                this.msgemail = "erro na verificação com o banco de dados";
            }
            return msgemail;
        }

        //Verifica se o CPF ja esta cadastrado
        public string VerificaCPF(string cpf)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"SELECT * FROM Clientes WHERE cpf = @cpf";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@cpf", cpf);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    this.msgcpf = "CPF ja cadastradado no sistema!";
                }
                else
                {
                    this.msgcpf = "";
                }
                con.Close();
                dr.Close();
            }
            catch (SqlException)
            {

                this.msgcpf = "erro na verificação com o banco de dados";
            }
            return msgcpf;
        }

        //Verifica se o RG ja esta cadastrado
        public string VerificaRG(string rg)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"SELECT * FROM Clientes WHERE rg = @rg";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@rg", rg);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    msgrg = "RG ja cadastradado no sistema!";
                }
                else
                {
                    msgrg = "";
                }
                con.Close();
                dr.Close();
            }
            catch (SqlException)
            {

                this.msgcpf = "erro na verificação com o banco de dados";
            }
            return msgrg;
        }

        //Verifica se a CNH ja esta cadastrada
        public string VerificaCNH(string cnh)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"SELECT * FROM Clientes WHERE cnh = @cnh";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@cnh", cnh);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    msgcnh = "CNH ja cadastradado no sistema!";
                }
                else
                {
                    msgcnh = "";
                }
                con.Close();
                dr.Close();
            }
            catch (SqlException)
            {

                this.msgcnh = "erro na verificação com o banco de dados";
            }
            return msgcnh;
        }

        //Verifica se o Passaporte ja esta cadastrado
        public string VerificaPassaporte(string passaporte)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"SELECT * FROM Clientes WHERE passaporte = @passaporte";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@passaporte", passaporte);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    msgpassaporte = "Passaporte ja cadastradado no sistema!";
                }
                else
                {
                    msgpassaporte = "";
                }
                con.Close();
                dr.Close();
            }
            catch (SqlException)
            {

                this.msgpassaporte = "erro na verificação com o banco de dados";
            }
            return msgpassaporte;
        }

        //Altera o email do cliente
        public string AlterarEmail(string dado, string email)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"UPDATE  Clientes SET email = @dado WHERE email = @email";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@dado", dado);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                
                con.Close();
                dr.Close();
                this.mensagem = "dados alterados com sucesso!";
            }
            catch (SqlException)
            {

                this.mensagem = "Erro ao alterar dados!";
            }

            return mensagem;
        }

        //Altera a senha do cliente
        public string AlterarSenha(string senha, string login)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"UPDATE  Clientes SET senha = @senha WHERE email = @email";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@email", login);
            cmd.Parameters.AddWithValue("@senha", senha);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();

                con.Close();
                dr.Close();
                this.mensagem = "dados alterados com sucesso!";
            }
            catch (SqlException ex)
            {

                this.mensagem = "Falha ao alterar senha! " + ex.Message;
            }

            return mensagem;
        }

        //Altera o telefone do cliente
        public string AlterarTelefone(string telefone, string login)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"UPDATE  Clientes SET telefone = @telefone WHERE email = @email";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@email", login);
            cmd.Parameters.AddWithValue("@telefone", telefone);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();

                con.Close();
                dr.Close();
                this.mensagem = "dados alterados com sucesso!";
            }
            catch (SqlException ex)
            {

                this.mensagem = "Falha ao alterar nome! " + ex.Message;
            }

            return mensagem;
        }

        //Altera o nome do cliente
        public string AlterarNome(string nome, string login)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"UPDATE  Clientes SET nome = @nome WHERE email = @email";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@email", login);
            cmd.Parameters.AddWithValue("@nome", nome);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();

                con.Close();
                dr.Close();
                this.mensagem = "dados alterados com sucesso!";
            }
            catch (SqlException ex)
            {

                this.mensagem = "Falha ao alterar nome! " + ex.Message;
            }

            return mensagem;
        }

        //Altera o celular  do cliente
        public string AlterarCelular(string celular, string login)
        {
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"UPDATE  Clientes SET celular = @celular WHERE email = @email";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@email", login);
            cmd.Parameters.AddWithValue("@celular", celular);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();

                con.Close();
                dr.Close();
                this.mensagem = "dados alterados com sucesso!";
            }
            catch (SqlException ex)
            {

                this.mensagem = "Falha ao alterar celular! " + ex.Message;
            }

            return mensagem;
        }

        //imprime os dados do cliente
        public string ImprimirCadastro(string email)
       {
           
            
            SqlConnection con = new SqlConnection(strConexao);

            string Query = @"SELECT nome, email, telefone, celular, datadenascimento, cnh, cpf from dbo.Clientes WHERE email = @email";

            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@email", email);

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                dr.Read();

                Nome = dr.GetString(0);
                Email = dr.GetString(1);
                Telefone = dr.GetString(2);
                Celular = dr.GetString(3);
                DNascimento = dr.GetString(4);
                CNH = dr.GetString(5);
                CPF = dr.GetString(6);

                

                con.Close();
                dr.Close();
            }
            catch (Exception ex)
            {

                mensagem = "Erro na busca de dados! " + ex;
            }

            return Nome + Email + Telefone + Celular + DNascimento + CNH + CPF;
           




        }
    }

}


