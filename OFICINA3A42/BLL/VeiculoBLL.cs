using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class VeiculoBLL
    {
        DALProjeto dao;

        public VeiculoBLL()
        {
            dao = new DALProjeto("localhost", "oficina", "root", "");
        }

        public void InserirVeiculo(VeiculoDTO dto)
        {
            dao.Insert("tbl_veiculo", dto);
        }

        public void AlterarVeiculo(VeiculoDTO dto)
        {
            dao.Update("tbl_veiculo", dto, 0);
        }

        public void ExcluirVeiculo(VeiculoDTO dto)
        {
            dao.Delete("tbl_veiculo", dto, 0);
        }

        public DataTable ListarTodosVeiculos()
        {
            return dao.SelectAll("tbl_veiculo");
        }

        public DataTable ListarVeiculo(int id)
        {
            return dao.SelectWhere("tbl_veiculo", $"id = '{id}'");
        }
        {

        }


    }
}