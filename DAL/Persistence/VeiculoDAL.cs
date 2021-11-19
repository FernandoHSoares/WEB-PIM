using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;

namespace DAL.Persistence
{
    class VeiculoDAL : Conexao
    {
       /* public List<Veiculo> Listar()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from veiculos", Con);
                Dr = Cmd.ExecuteReader();

                List<Veiculo> lista = new List<Veiculo>(); //Lista vazia

                while (Dr.Read())
                {
                    Veiculo V = new Veiculo();

                    V.Categoria = Convert.ToString(Dr["Categoria"]);
                    V.Modelo = Convert.ToString(Dr["Modelo"]);
                    V.Placa = Convert.ToString(Dr["Placa"]);
                    V.Marca = Convert.ToString(Dr["Marca"]);
                    V.ID_carro = Convert.ToInt32(Dr["ID_Carro"]);
                    V.Ano = Convert.ToInt32(Dr["Ano"]);
                    V.Quilometragem = Convert.ToDouble(Dr["Quilometragem"]);

                    lista.Add(V);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("falha ao exibir veiculos" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
              

            
        }*/
    }
}
            
 