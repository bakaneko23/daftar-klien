<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DaftarKlien.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/bootstrap-theme.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 542px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            Silahkan Login
        <br />
        <br />
        <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Username" style="text-align: right"></asp:Label>
                </td>
                <td style="color: #FF6600">
        <asp:TextBox ID="txtUsername" runat="server" style="margin-left: 0px; color: #FF6600;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label2" runat="server" Text="Password" style="text-align: right"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 0px; color: #FF6600;" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" class="btn btn-default navbar-btn" style="text-align: center; margin-left: 424px" Text="Login" Width="59px" />
         <br />
         <br />
        <br />
        <asp:Label ID="lbUser" runat="server"></asp:Label>
         <p>
             &nbsp;</p>
         </form>
</body>
</html>