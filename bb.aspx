<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication24.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       Rollno:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="Select" OnClick="Button4_Click" />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
