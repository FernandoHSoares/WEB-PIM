using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace DAL.Persistence
{
    public class Conexao
    {
        const string strConexao = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=ProjetoLogin;Integrated Security=True";
        SqlConnection con = new SqlConnection(strConexao);

        public SqlConnection Conectar()
        {
            if(con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }

        public void Desconectar()
        {
            if(con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
        }
    }
}
   