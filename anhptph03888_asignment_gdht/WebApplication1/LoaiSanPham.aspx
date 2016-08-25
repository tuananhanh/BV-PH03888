<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoaiSanPham.aspx.cs" Inherits="WebApplication1.LoáianPham" %>
                

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Trang Loại Sản Phẩm"></asp:Label>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_loaisanpham" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="380px" Width="725px">
        <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            <asp:BoundField DataField="id_loaisanpham" HeaderText="id_loaisanpham" ReadOnly="True" SortExpression="id_loaisanpham" />
            <asp:BoundField DataField="ten_loaisanpham" HeaderText="ten_loaisanpham" SortExpression="ten_loaisanpham" />
            <asp:BoundField DataField="donvi" HeaderText="donvi" SortExpression="donvi" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [loai_sanpham] WHERE [id_loaisanpham] = @original_id_loaisanpham AND [ten_loaisanpham] = @original_ten_loaisanpham AND (([donvi] = @original_donvi) OR ([donvi] IS NULL AND @original_donvi IS NULL))" InsertCommand="INSERT INTO [loai_sanpham] ([id_loaisanpham], [ten_loaisanpham], [donvi]) VALUES (@id_loaisanpham, @ten_loaisanpham, @donvi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [loai_sanpham]" UpdateCommand="UPDATE [loai_sanpham] SET [ten_loaisanpham] = @ten_loaisanpham, [donvi] = @donvi WHERE [id_loaisanpham] = @original_id_loaisanpham AND [ten_loaisanpham] = @original_ten_loaisanpham AND (([donvi] = @original_donvi) OR ([donvi] IS NULL AND @original_donvi IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="original_ten_loaisanpham" Type="String" />
            <asp:Parameter Name="original_donvi" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="ten_loaisanpham" Type="String" />
            <asp:Parameter Name="donvi" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ten_loaisanpham" Type="String" />
            <asp:Parameter Name="donvi" Type="Int32" />
            <asp:Parameter Name="original_id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="original_ten_loaisanpham" Type="String" />
            <asp:Parameter Name="original_donvi" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
