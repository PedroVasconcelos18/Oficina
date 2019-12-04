using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
    public class ProdutoDTO
    {
        private int id;
        private string nome;
        private double preco;
        private int qtde_estoque;

        public int Id { get => id; set => id = value; }
        public string Nome { get => nome; set => nome = value; }
        public double Preco { get => preco; set => preco = value; }
        public int Qtde_estoque { get => qtde_estoque; set => qtde_estoque = value; }
    }
}