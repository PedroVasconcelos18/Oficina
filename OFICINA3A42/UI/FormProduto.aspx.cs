using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;

namespace OFICINA3A42.UI
{
    public partial class FormProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ExibeDados();
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                ProdutoDTO produtoDTO = new ProdutoDTO();

                produtoDTO.Nome = txtNome.Text;
                produtoDTO.Preco = Convert.ToDouble(txtPreco.Text);
                produtoDTO.Qtde_estoque = Convert.ToInt32(txtQuantidade.Text);

                if (txtId.Text == string.Empty)
                
                    new ProdutoBLL().InserirProduto(produtoDTO);
               
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
            dtgDados.DataSource = new ProdutoBLL().ListarTodasProdutos();
            DataBind(); // exibe no navegador
        }

        protected void DtgDados_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ProdutoDTO dto = new ProdutoDTO();

            dto.Id = Convert.ToInt32(e.NewValues[0]);
            dto.Nome = e.NewValues[1].ToString();
            dto.Preco = Convert.ToDouble(e.NewValues[2]);
            dto.Qtde_estoque = Convert.ToInt32(e.NewValues[3]);

            new ProdutoBLL().AlterarProduto(dto);
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
            ProdutoDTO dto = new ProdutoDTO();

            dto.Id = Convert.ToInt32(e.Values[0]);
            new ProdutoBLL().ExcluirProduto(dto);
            dtgDados.EditIndex = -1;
            ExibeDados();
        }

        protected void DtgDados_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dtgDados.EditIndex = -1;
            ExibeDados();
        }

     
    }
}