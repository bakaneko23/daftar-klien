<%@ Page Title="Home" Language="C#" MasterPageFile="~/private.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DaftarKlien.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        DAFTAR KLIEN PT. INDOTECH MEDIALINK<br />
    </p>
    <br />
    <br />
    
    <%--<center>
        <div class="table-responsive">
  <table class="table">--%>
 
  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 327px;" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="815px" DataKeyNames="id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="426px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
            <asp:BoundField DataField="alamat" HeaderText="alamat" SortExpression="alamat" />
            <asp:BoundField DataField="tanggal" HeaderText="tanggal" SortExpression="tanggal" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <%--</center>
    </p>
            </table>--%>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:klienConnectionString %>" SelectCommand="SELECT * FROM [Daftar]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Daftar] WHERE [id] = @original_id AND [nama] = @original_nama AND [alamat] = @original_alamat AND [tanggal] = @original_tanggal" InsertCommand="INSERT INTO [Daftar] ([nama], [alamat], [tanggal]) VALUES (@nama, @alamat, @tanggal)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Daftar] SET [nama] = @nama, [alamat] = @alamat, [tanggal] = @tanggal WHERE [id] = @original_id AND [nama] = @original_nama AND [alamat] = @original_alamat AND [tanggal] = @original_tanggal">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_nama" Type="String" />
            <asp:Parameter Name="original_alamat" Type="String" />
            <asp:Parameter DbType="Date" Name="original_tanggal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nama" Type="String" />
            <asp:Parameter Name="alamat" Type="String" />
            <asp:Parameter DbType="Date" Name="tanggal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nama" Type="String" />
            <asp:Parameter Name="alamat" Type="String" />
            <asp:Parameter DbType="Date" Name="tanggal" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_nama" Type="String" />
            <asp:Parameter Name="original_alamat" Type="String" />
            <asp:Parameter DbType="Date" Name="original_tanggal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p style="text-align: left">
        &nbsp;</p>
    </asp:Content>
