using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    class Veiculo
    {
        public string Modelo { get; set; }
        public string Placa { get; set; }
        public string Marca { get; set; }
        public int ID_carro;
        public int Ano { get; set; }
        public double Quilometragem { get; set; }
        public string Categoria { get; set; }
        public bool Disponibilidade { get; set; }
    }
}
