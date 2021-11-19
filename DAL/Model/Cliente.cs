using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace DAL.Model
{
    public class Cliente : Pessoa
    {
        public string Passaporte { get; set; }
        public string NCarteiraHabilitacao { get; set; }
        public string CPF { get; set; }
        public Endereco Endereco { get; set; }
        


    }
}

