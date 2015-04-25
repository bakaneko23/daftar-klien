<%@ Page Title="" Language="C#" MasterPageFile="~/Private.Master" AutoEventWireup="true" CodeBehind="Cari.aspx.cs" Inherits="DaftarKlien.Cari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <br />
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: left">
    <br />
    <asp:TextBox ID="txtCari" runat="server" style="text-align: left; margin-left: 0px" Width="120px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 191px" Text="Cari" />
</p>
<p>
</p>
    <table class="auto-style5">
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
        <asp:TextBox ID="txtTanggal" runat="server" style="margin-left: 0px" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="text-align: left" CellPadding="4" ForeColor="#333333" GridLines="None">
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
             <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        
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
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
