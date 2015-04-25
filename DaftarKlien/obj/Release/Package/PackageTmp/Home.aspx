<%@ Page Title="" Language="C#" MasterPageFile="~/masuta.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DaftarKlien.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        DAFTAR KLIEN PT. INDOTECH MEDIALINK<br />
    </p>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 362px;" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="590px" DataKeyNames="id">
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Edit" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 979px; text-align: right;" Text="Logout" />
    </p>
    </asp:Content>
