using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace OFICINA3A42.UI
{
    public partial class VisualizarVeiculo : System.Web.UI.Page
    {
        protected void ListarDonos_e_Modelos()
        {
            ddlDono.DataSource = new ClienteBLL().ListarTodosCliente();
            ddlDono.DataValueField = "id";
            ddlDono.DataTextField = "nome";

            ddlModelo.DataSource = new ModeloBLL().ListarTodosModelos();
            ddlModelo.DataValueField = "id";
            ddlModelo.DataTextField = "nome";

            DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListarDonos_e_Modelos();
               
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    DataTable dt = new VeiculoBLL().ListarTodosVeiculos();

                    if (dt.Rows.Count > 0)
                    {
                        txtPlaca.Text = dt.Rows[0][1].ToString();
                        txtAno.Text = Convert.ToInt32(dt.Rows[0][2]).ToString();
                        txtCor.Text = dt.Rows[0][3].ToString();
                        ddlDono.SelectedValue = Convert.ToInt32(dt.Rows[0][4]).ToString();
                        ddlModelo.SelectedValue = Convert.ToInt32(dt.Rows[0][5]).ToString();
                    }
                    else
                    {
                        Response.Redirect("frmveiculo.aspx");
                    }
                }
                else
                {
                    Response.Redirect("frmveiculo.aspx");
                }
        }
    }
}
