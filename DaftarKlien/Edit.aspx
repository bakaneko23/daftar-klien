<%@ Page Title="Edit" Language="C#" MasterPageFile="~/Private.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="DaftarKlien.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
        DAFTAR KLIEN PT. INDOTECH MEDIALINK<br />
        <br />
    </p>
    <table class="auto-style5">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lbStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label ID="Label4" runat="server" Text="ID"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtId" runat="server" style="margin-left: 0px" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label ID="Label1" runat="server" Text="Nama"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtNama" runat="server" style="margin-left: 0px" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label ID="Label2" runat="server" Text="Alamat"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtAlamat" runat="server" style="margin-left: 0px" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label ID="Label3" runat="server" Text="Tanggal"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtTanggal" runat="server" style="margin-left: 0px" Width="240px" OnTextChanged="txtTanggal_TextChanged" TextMode="DateTime"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Hapus" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Edit" />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" ForeColor="#333333" GridLines="None" style="margin-left: 330px; text-align: left;" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
            <asp:BoundField DataField="alamat" HeaderText="alamat" SortExpression="alamat" />
            <asp:BoundField DataField="tanggal" HeaderText="tanggal" SortExpression="tanggal" />
            <asp:TemplateField>
                    <ItemTemplate>
                    <a href="Detail.aspx?id=<%#Eval("id","{0}") %>">Detail</a>
                    </ItemTemplate>
                </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:klienConnectionString %>" SelectCommand="SELECT * FROM [Daftar]"></asp:SqlDataSource>
    </asp:Content>
