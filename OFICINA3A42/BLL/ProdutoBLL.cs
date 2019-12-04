using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class ProdutoBLL
    {
        DALProjeto dao;

        public ProdutoBLL()
        {
            dao = new DALProjeto("localhost", "oficina", "root", "");
        }

        public void InserirProduto(ProdutoDTO dto)
        {
            dao.Insert("tbl_produto", dto);
        }

        public void AlterarProduto(ProdutoDTO dto)
        {
            dao.Update("tbl_produto", dto, 0);
        }

        public void ExcluirProduto(ProdutoDTO dto)
        {
            dao.Delete("tbl_produto", dto, 0);
        }

        public DataTable ListarTodasProdutos()
        {
            return dao.SelectAll("tbl_produto");
        }




    }
}