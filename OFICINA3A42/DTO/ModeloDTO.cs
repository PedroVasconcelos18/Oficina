using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
    public class ModeloDTO
    {
        private int id;
        private string nome;
        private int id_marca;

        public int Id { get => id; set => id = value; }
        public string Nome { get => nome; set => nome = value; }
        public int Id_marca { get => id_marca; set => id_marca = value; }
    }
}