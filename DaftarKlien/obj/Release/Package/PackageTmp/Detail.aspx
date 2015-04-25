<%@ Page Title="" Language="C#" MasterPageFile="~/masuta.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="DaftarKlien.Detail" %>
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        </p>
    <table class="auto-style6">
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
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Tanggal"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbTampilTanggal" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        </p>
    <p>
        </p>
    <p>

    </p>
</asp:Content>

