<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/masuta.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DaftarKlien.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server" style="margin-left: 133px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 135px" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" />
    <br />
    <br />
    <br />
</asp:Content>
