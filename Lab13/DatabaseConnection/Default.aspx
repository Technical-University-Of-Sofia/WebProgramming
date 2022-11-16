<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DatabaseConnection.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT * FROM [Users]" InsertCommand="INSERT INTO Users(UserName, Password, Email, Age) VALUES(@username, @pass, @email, @age)">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="pass" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="email" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="age" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="209px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" DataFormatString="****" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        Register a new user:<br />
        <asp:Label ID="Label1" runat="server" Text="User name " Width="70px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" Width="70px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email" Width="70px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Age" Width="70px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Width="195px" />
    </form>
</body>
</html>
