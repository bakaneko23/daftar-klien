<%@ Page Title="Detail" Language="C#" MasterPageFile="~/Privatea.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="DaftarKlien.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
        DETAIL<br />

    </p>
    <table class="auto-style6" border="1">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lbId" runat="server" style="text-align: left" Text="id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbTampilId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lbNama" runat="server" Text="Nama"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbTampilNama" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lbAlamat" runat="server" Text="Alamat"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbTampilAlamat" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style6" border="1">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Tanggal"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lbTampilTanggal" runat="server" TextMode="DateTime"></asp:TextBox>
            </td>
        </tr>
    </table>
    </asp:Content>

