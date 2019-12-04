using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BLL;

namespace OFICINA3A42.UI
{
    public partial class FormFuncionario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ExibeDados();
            }
        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                FuncionarioDTO funcionarioDTO = new FuncionarioDTO();

                funcionarioDTO.Nome = txtNome.Text;
                funcionarioDTO.Data_nascimento = DateFunc.SelectedDate;
                funcionarioDTO.Telefone = txtTelefone.Text;
                funcionarioDTO.Cpf = txtCPF.Text;

                if (txtId.Text == string.Empty)
                
                    new FuncionarioBLL().InserirFuncionario(funcionarioDTO);

                ExibeDados();
                Response.Write("<script> alert('Dados gravador com sucesso!!')</script>");
            

            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }            
        }
        protected void ExibeDados()
            {
            DtgDados.DataSource = new FuncionarioBLL().ListarTodasFuncionarios();
            DataBind(); // exibe no navegador
            }

        protected void DtgDados_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FuncionarioDTO dto = new FuncionarioDTO();

            dto.Id = Convert.ToInt32(e.NewValues[0]);
            dto.Nome = e.NewValues[1].ToString();
            dto.Data_nascimento = Convert.ToDateTime(e.NewValues[2]);
            dto.Telefone = e.NewValues[3].ToString();
            dto.Cpf = e.NewValues[4].ToString();

            new FuncionarioBLL().AlterarFuncionario(dto);
            DtgDados.EditIndex = -1;
            ExibeDados();
        }

        protected void DtgDados_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DtgDados.EditIndex = e.NewEditIndex;
            ExibeDados();
        }

        protected void DtgDados_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            FuncionarioDTO dto = new FuncionarioDTO();

            dto.Id = Convert.ToInt32(e.Values[0]);
            new FuncionarioBLL().ExcluirFuncionario(dto);
            DtgDados.EditIndex = -1;
            ExibeDados();
        }

        protected void DtgDados_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DtgDados.EditIndex = -1;
            ExibeDados();
        }
    }
}