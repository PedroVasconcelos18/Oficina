<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisualizarVeiculo.aspx.cs" Inherits="OFICINA3A42.UI.VisualizarVeiculo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            
             <asp:Label ID="Label2" runat="server" Text="Placa:"></asp:Label>
            <br />
        <asp:TextBox ID="txtPlaca" runat="server" Enabled="False"></asp:TextBox>
            <br />
             <asp:Label ID="Label3" runat="server" Text="Ano:"></asp:Label>
            <br />
        <asp:TextBox ID="txtAno" runat="server" Enabled="False"></asp:TextBox> 
            <br />
             <asp:Label ID="Label4" runat="server" Text="Cor:"></asp:Label>
            <br />
        <asp:TextBox ID="txtCor" runat="server" Enabled="False"></asp:TextBox> 
            <br />
            <asp:Label ID="Label5" runat="server" Text=" ID do dono:"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlDono" runat="server" Enabled="False"> 

            </asp:DropDownList>
            <br />
            <asp:Label ID="Label6" runat="server" Text=" ID do modelo:"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlModelo" runat="server" Enabled="False"> 

            </asp:DropDownList>

        </div>
            <br /><br />      
    </form>
</body>
</html>
