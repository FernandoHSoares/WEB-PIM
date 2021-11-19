/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; //ADOT.NET SQL server



namespace DAL.Persistence
{
    public class Conexao
    {
        //SqlConnection con = new SqlConnection();
        protected SqlConnection Con;
        protected SqlCommand Cmd;
        protected SqlDataReader Dr;

        //Metodo que abre a conexao
        protected void AbrirConexao()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=ProjetoLogin;Integrated Security=True";
            try
            {
                //String de conexao
                con.ConnectionString = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=ProjetoLogin;Integrated Security=True";
                Con.Open();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        //Metodo para fechamento do banco

        protected void FecharConexao()
        {
            try
            {
                Con.Close();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }
    }
}*/
