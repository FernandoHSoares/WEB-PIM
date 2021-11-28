using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    class Reserva
    {
        int IDCliente { get; set; }
        int IDVeiculo { get; set; }
        DateTime DataReserva { get; set; }
        DateTime DataDevolucao { get; set; }
        string ValorDiaria { get; set; }
        int DiasPrevistos { get; set; }
        string ValorPrevisto { get; set; }
        string Observacao { get; set; }

        public Reserva()
        {

        }

    }
}
