<%@ Page Title="" Language="C#" MasterPageFile="~/masuta.Master" AutoEventWireup="true" CodeBehind="TambahKlien.aspx.cs" Inherits="DaftarKlien.TambahKlien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 255px;
        }
        .auto-style6 {
            width: 265px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
        TAMBAH KLIEN</p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
        <asp:Label ID="Label1" runat="server" Text="Nama"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtNama" runat="server" style="margin-left: 0px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
        <asp:Label ID="Label2" runat="server" Text="Alamat"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtAlamat" runat="server" style="margin-left: 0px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
        <asp:Label ID="Label3" runat="server" Text="Tanggal"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="txtTanggal" runat="server" style="margin-left: 0px" Width="130px"></asp:TextBox>
            </td>
        </tr>
    </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 5px; height: 26px;" Text="Tambah" />
                </td>
            </tr>
    </table>
    <p style="text-align: left">
        &nbsp;</p>
    <p style="text-align: left">
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 353px">
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
    <p style="text-align: left">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
</asp:Content>
