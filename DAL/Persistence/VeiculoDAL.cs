using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;
using System.Data;

namespace DAL.Persistence
{
    public class VeiculoDAL 
    {

        const string strConexao = @"Data Source=DESKTOP-4HDM4D7\SQLEXPRESS;Initial Catalog=BD_Alucar;Integrated Security=True";

        SqlDataReader dr;
        /*
       
        public DataTable Listar()
        {
            string Query = @"SELECT * FROM Veiculos ";

            SqlConnection con = new SqlConnection(strConexao);
            SqlCommand cmd = new SqlCommand(Query, con);

            SqlDataAdapter ad = new SqlDataAdapter(cmd);

            DataTable datatable = new DataTable();
      



        }
        */
    }
}
            
 