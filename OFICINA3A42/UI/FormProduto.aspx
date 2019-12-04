<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormProduto.aspx.cs" Inherits="OFICINA3A42.UI.FormProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <p>
            <asp:Label ID="Label5" runat="server" Text="ID:"></asp:Label>
        </p>
            <p>
            <asp:TextBox ID="txtId" runat="server" Enabled="False"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label2" runat="server" Text="Preço:"></asp:Label>
        <p>
            <asp:TextBox ID="txtPreco" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Quantidade:"></asp:Label>
        </p>
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
           <div><br />
             <asp:GridView ID="dtgDados" runat="server" OnRowEditing="DtgDados_RowEditing" OnRowUpdating="DtgDados_RowUpdating" OnRowDeleting="DtgDados_RowDeleting" OnRowCancelingEdit="DtgDados_RowCancelingEdit">
                 <Columns>
                     <asp:CommandField ShowEditButton="True" />
                     <asp:CommandField ShowDeleteButton="True" />
                 </Columns>
             </asp:GridView>
               </div>
           
        </div>   
        <br />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" Width="201px" OnClick="btnCadastrar_Click" />
    </form>
</body>
</html>
