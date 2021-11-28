using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    class Veiculo
    {
        public string Renavam { get; set; }
        public string Placa { get; set; }
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public int Ano { get; set; }
        public string Cor { get; set; }
        public string Categoria { get; set; }
        public int NumeroPortas { get; set; }
        public string KmAtual { get; set; }
        public float ValorDiaria { get; set; }
        public float Fipe { get; set; }
    }
   
}
