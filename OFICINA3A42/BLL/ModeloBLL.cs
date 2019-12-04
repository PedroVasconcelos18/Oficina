using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class ModeloBLL
    {

        DALProjeto dao;

        public ModeloBLL()
        {
            dao = new DALProjeto("localhost", "oficina", "root", "");
        }

        public void InserirModelo(ModeloDTO dto)
        {
            dao.Insert("tbl_modelo", dto);
        }

        public void AlterarModelo(ModeloDTO dto)
        {
            dao.Update("tbl_modelo", dto, 0);
        }

        public void ExcluirModelo(ModeloDTO dto)
        {
            dao.Delete("tbl_modelo", dto, 0);
        }

        public DataTable ListarTodosModelos()
        {
            return dao.SelectAll("tbl_modelo");
        }
    }
}