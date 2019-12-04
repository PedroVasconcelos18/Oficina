using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
    public class FuncionarioDTO
    {
        private int id;
        private string nome;
        private DateTime data_nascimento;
        private string telefone;
        private string cpf;

        public int Id { get => id; set => id = value; }
        public string Nome { get => nome; set => nome = value; }
        public DateTime Data_nascimento { get => data_nascimento; set => data_nascimento = value; }
        public string Telefone { get => telefone; set => telefone = value; }
        public string Cpf { get => cpf; set => cpf = value; }
    }
}