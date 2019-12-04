using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class FuncionarioBLL
    {
        DALProjeto dao;

        public FuncionarioBLL()
        {       
                dao = new DALProjeto("localhost", "oficina", "root", "");          
        }

        public void InserirFuncionario(FuncionarioDTO dto)
        {
            dao.Insert("tbl_funcionario", dto);
        }

        public void AlterarFuncionario(FuncionarioDTO dto)
        {
            dao.Update("tbl_funcionario", dto, 0);
        }

        public void ExcluirFuncionario(FuncionarioDTO dto)
        {
            dao.Delete("tbl_funcionario", dto, 0);
        }

        public DataTable ListarTodasFuncionarios()
        {
            return dao.SelectAll("tbl_funcionario");
        }

    }
}