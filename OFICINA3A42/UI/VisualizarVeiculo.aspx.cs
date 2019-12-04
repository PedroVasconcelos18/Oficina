using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OFICINA3A42.UI
{
    public partial class VisualizarVeiculo : System.Web.UI.Page
    {
        protected void ListarDonos_e_Modelos()
        {
            //drpDono.DataSource = new ClienteBLL().ListarTodosCliente();
            //drpDono.DataValueField = "id";
            //drpDono.DataTextField = "nome";

            //drpModelo.DataSource = new ModeloBLL().ListarTodosModelos();
            //drpModelo.DataValueField = "id";
            //drpModelo.DataTextField = "nome";

            //DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    ListarDonos_e_Modelos();
            //    ExibeDados();
            //    if (Request.QueryString["id"] != null)
            //    {
            //        int id = int.Parse(Request.QueryString["id"]);
            //        DataTable dt = new VeiculoBLL().ListarTodosVeiculos();

            //        if (dt.Rows.Count > 0)
            //        {
            //            txtPlaca.Text = dt.Rows[0][1].ToString();
            //            txtAno.Text = Convert.ToInt32(dt.Rows[0][2]).ToString();
            //            txtCor.Text = dt.Rows[0][3].ToString();
            //            drpDono.SelectedValue = Convert.ToInt32(dt.Rows[0][4]).ToString();
            //            drpModelo.SelectedValue = Convert.ToInt32(dt.Rows[0][5]).ToString();
            //        }
            //        else
            //        {
            //            Response.Redirect("FrmVeiculo.aspx");
            //        }
            //    }
            //    else
            //    {
            //        Response.Redirect("FrmVeiculo.aspx");
            //    }
        }
    }
}
