<%@ Page Title="Login" Language="C#" MasterPageFile="~/public.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DaftarKlien.Login" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <form id="form1" runat="server" style="height: 213px; margin-top: 65px">
    <br />
    <br />
    <br />
        <table style="width: 40%; margin-left: 320px;">
            <tr>
                <td style="height: 27px; text-align: center; width: 20px">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td style="height: 27px; text-align: center; width: 296px;">
    <asp:TextBox ID="txtUsername" runat="server" Width="126px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 20px">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="text-align: center; width: 296px;">
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="126px"></asp:TextBox>
                </td>
            </tr>
        </table>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" style="margin-left: 385px" />
    <br />
    <br />
    <br />
    <asp:Label ID="lbUser" runat="server"></asp:Label>
</form>
</asp:Content>

