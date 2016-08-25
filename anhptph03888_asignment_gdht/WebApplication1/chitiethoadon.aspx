<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="chitiethoadon.aspx.cs" Inherits="WebApplication1.chitiethoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_chitiethoadon" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="362px" Width="572px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            <asp:BoundField DataField="id_chitiethoadon" HeaderText="id_chitiethoadon" ReadOnly="True" SortExpression="id_chitiethoadon" />
            <asp:BoundField DataField="id_sanpham" HeaderText="id_sanpham" SortExpression="id_sanpham" />
            <asp:BoundField DataField="id_loaisanpham" HeaderText="id_loaisanpham" SortExpression="id_loaisanpham" />
            <asp:BoundField DataField="id_khachhang" HeaderText="id_khachhang" SortExpression="id_khachhang" />
            <asp:BoundField DataField="so_luong" HeaderText="so_luong" SortExpression="so_luong" />
            <asp:BoundField DataField="donvi" HeaderText="donvi" SortExpression="donvi" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [chitiet_hoadon] WHERE [id_chitiethoadon] = @original_id_chitiethoadon AND [id_sanpham] = @original_id_sanpham AND [id_loaisanpham] = @original_id_loaisanpham AND [id_khachhang] = @original_id_khachhang AND [so_luong] = @original_so_luong AND [donvi] = @original_donvi" InsertCommand="INSERT INTO [chitiet_hoadon] ([id_chitiethoadon], [id_sanpham], [id_loaisanpham], [id_khachhang], [so_luong], [donvi]) VALUES (@id_chitiethoadon, @id_sanpham, @id_loaisanpham, @id_khachhang, @so_luong, @donvi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [chitiet_hoadon]" UpdateCommand="UPDATE [chitiet_hoadon] SET [id_sanpham] = @id_sanpham, [id_loaisanpham] = @id_loaisanpham, [id_khachhang] = @id_khachhang, [so_luong] = @so_luong, [donvi] = @donvi WHERE [id_chitiethoadon] = @original_id_chitiethoadon AND [id_sanpham] = @original_id_sanpham AND [id_loaisanpham] = @original_id_loaisanpham AND [id_khachhang] = @original_id_khachhang AND [so_luong] = @original_so_luong AND [donvi] = @original_donvi">
        <DeleteParameters>
            <asp:Parameter Name="original_id_chitiethoadon" Type="Int32" />
            <asp:Parameter Name="original_id_sanpham" Type="Int32" />
            <asp:Parameter Name="original_id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="original_id_khachhang" Type="Int32" />
            <asp:Parameter Name="original_so_luong" Type="Int32" />
            <asp:Parameter Name="original_donvi" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_chitiethoadon" Type="Int32" />
            <asp:Parameter Name="id_sanpham" Type="Int32" />
            <asp:Parameter Name="id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="id_khachhang" Type="Int32" />
            <asp:Parameter Name="so_luong" Type="Int32" />
            <asp:Parameter Name="donvi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_sanpham" Type="Int32" />
            <asp:Parameter Name="id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="id_khachhang" Type="Int32" />
            <asp:Parameter Name="so_luong" Type="Int32" />
            <asp:Parameter Name="donvi" Type="String" />
            <asp:Parameter Name="original_id_chitiethoadon" Type="Int32" />
            <asp:Parameter Name="original_id_sanpham" Type="Int32" />
            <asp:Parameter Name="original_id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="original_id_khachhang" Type="Int32" />
            <asp:Parameter Name="original_so_luong" Type="Int32" />
            <asp:Parameter Name="original_donvi" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
