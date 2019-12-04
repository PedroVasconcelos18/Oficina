using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using DTO;
using System.Data;

namespace BLL
{
    public class ClienteBLL
    {
        DALProjeto dao;

        public ClienteBLL()
        {
            dao = new DALProjeto("localhost", "oficina", "root", "");
        }

        public void InserirCliente(ClienteDTO dto)
        {
            dao.Insert("tbl_cliente", dto);
        }

        public void AlterarCliente(ClienteDTO dto)
        {
            dao.Update("tbl_cliente", dto, 0);
        }

        public void ExcluirCliente(ClienteDTO dto)
        {
            dao.Delete("tbl_cliente", dto, 0);
        }

        public DataTable ListarTodosCliente()
        {
            return dao.SelectAll("tbl_cliente");
        }
    }
}