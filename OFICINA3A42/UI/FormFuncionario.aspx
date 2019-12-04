<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormFuncionario.aspx.cs" Inherits="OFICINA3A42.UI.FormFuncionario" %>

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
        <asp:Label ID="Label2" runat="server" Text="CPF:"></asp:Label>
        <p>
            <asp:TextBox ID="txtCPF" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Telefone:"></asp:Label>
        </p>
        <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Data de Nascimento:"></asp:Label>
            </p>
            
        </div>
        <div>
        <asp:Calendar ID="DateFunc" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>

        
       <div>  
           <br />
        <asp:GridView ID="DtgDados" runat="server" OnRowEditing="DtgDados_RowEditing" OnRowUpdating="DtgDados_RowUpdating" OnRowDeleting="DtgDados_RowDeleting" OnRowCancelingEdit="DtgDados_RowCancelingEdit">
            <Columns>
                <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
            </Columns>
        </asp:GridView>
       </div>
</div>
        <br />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" Width="201px" OnClick="btnCadastrar_Click" />
    </form>
</body>
</html>
