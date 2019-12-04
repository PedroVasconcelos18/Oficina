using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;
using System.Data;

namespace OFICINA3A42.UI
{
    public partial class FormVeiculo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ExibeDados();
                ListarDonos_e_Modelos();
            }

        }
        protected void ExibeDados()
            {
                dtgDados.DataSource = new VeiculoBLL().ListarTodosVeiculos();
                DataBind(); // exibe no navegador
            }
        protected void ListarDonos_e_Modelos()
        {
            drpDono.DataSource = new ClienteBLL().ListarTodosCliente();
            drpDono.DataValueField = "id";
            drpDono.DataTextField = "nome";

            drpModelo.DataSource = new ModeloBLL().ListarTodosModelos();
            drpModelo.DataValueField = "id";
            drpModelo.DataTextField = "nome";

            DataBind();
        }
        protected void DtgDados_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            VeiculoDTO dto = new VeiculoDTO();

            dto.Id = Convert.ToInt32(e.NewValues[0]);
            dto.Placa = e.NewValues[1].ToString();
            dto.Ano = e.NewValues[2].ToString();
            dto.Cor = e.NewValues[3].ToString();
            dto.Id_dono = Convert.ToInt32(e.NewValues[4].ToString());
            dto.Id_modelo = Convert.ToInt32(e.NewValues[5].ToString());

            new VeiculoBLL().AlterarVeiculo(dto);
            dtgDados .EditIndex = -1;
            ExibeDados();

        }

        protected void DtgDados_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dtgDados.EditIndex = e.NewEditIndex;
            ExibeDados();
        }

        protected void DtgDados_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            VeiculoDTO dto = new VeiculoDTO();

            dto.Id = Convert.ToInt32(e.Values[0]);
            new VeiculoBLL().ExcluirVeiculo(dto);
            dtgDados.EditIndex = -1;
            ExibeDados();
        }

        protected void DtgDados_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dtgDados.EditIndex = -1;
            ExibeDados();
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                VeiculoDTO VeiculoDTO = new VeiculoDTO();

                VeiculoDTO.Placa = txtPlaca.Text;
                VeiculoDTO.Ano = txtAno.Text;
                VeiculoDTO.Cor = txtCor.Text;
                VeiculoDTO.Id_dono = Convert.ToInt32(drpDono.SelectedValue);
                VeiculoDTO.Id_modelo = Convert.ToInt32(drpModelo.SelectedValue);

              

                if (txtID.Text == string.Empty)

                    new VeiculoBLL().InserirVeiculo(VeiculoDTO);

                ExibeDados();
                Response.Write("<script> alert('Dados gravador com sucesso!!')</script>");

            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
        }
    }
}