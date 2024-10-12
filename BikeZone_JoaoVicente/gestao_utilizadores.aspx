<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestao_utilizadores.aspx.cs" Inherits="BikeZone_JoaoVicente.gestao_utilizadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Gestão de Utilizadores!<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceBikeZone">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceBikeZone" runat="server" ConnectionString="<%$ ConnectionStrings:BikeZoneConnectionString3 %>" SelectCommand="SELECT * FROM [users]" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([email], [password]) VALUES (@email, @password)" UpdateCommand="UPDATE [users] SET [email] = @email, [password] = @password WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
        </div>
    </form>
</body>
</html>
