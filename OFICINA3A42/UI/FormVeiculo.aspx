<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormVeiculo.aspx.cs" Inherits="OFICINA3A42.UI.FormVeiculo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
            <br />
        <asp:TextBox ID="txtID" runat="server" Enabled="False"></asp:TextBox> 
            <br />
             <asp:Label ID="Label2" runat="server" Text="Placa:"></asp:Label>
            <br />
        <asp:TextBox ID="txtPlaca" runat="server"></asp:TextBox> 
            <br />
             <asp:Label ID="Label3" runat="server" Text="Ano:"></asp:Label>
            <br />
        <asp:TextBox ID="txtAno" runat="server"></asp:TextBox> 
            <br />
             <asp:Label ID="Label4" runat="server" Text="Cor:"></asp:Label>
            <br />
        <asp:TextBox ID="txtCor" runat="server"></asp:TextBox> 
            <br />
            <asp:Label ID="Label5" runat="server" Text=" ID do dono:"></asp:Label>
            <br />
            <asp:DropDownList ID="drpDono" runat="server"> 

            </asp:DropDownList>
            <br />
            <asp:Label ID="Label6" runat="server" Text=" ID do modelo:"></asp:Label>
            <br />
            <asp:DropDownList ID="drpModelo" runat="server"> 

            </asp:DropDownList>

            <br /><br />            
             <asp:GridView ID="dtgDados" runat="server"  OnRowEditing="DtgDados_RowEditing" 
                                                         OnRowUpdating="DtgDados_RowUpdating" 
                                                         OnRowDeleting="DtgDados_RowDeleting" 
                                                         OnRowCancelingEdit="DtgDados_RowCancelingEdit">
                 <Columns>
                     <asp:TemplateField HeaderText="Selecionar">
                         <ItemTemplate>
                             <a href="VisualizarVeiculo.apsx?id=<%# Eval("id") %>">Detalhes</a>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:CommandField ShowEditButton="True" />
                     <asp:CommandField ShowDeleteButton="True" />
                 </Columns>
             </asp:GridView>
      </div>  
         <br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
    </form>
</body>
</html>
