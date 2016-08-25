<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hoadon.aspx.cs" Inherits="WebApplication1.hoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_hoadon" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="298px" Width="508px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            <asp:BoundField DataField="id_hoadon" HeaderText="id_hoadon" ReadOnly="True" SortExpression="id_hoadon" />
            <asp:BoundField DataField="ngaylap_hoadong" HeaderText="ngaylap_hoadong" SortExpression="ngaylap_hoadong" />
            <asp:BoundField DataField="id_khachhang" HeaderText="id_khachhang" SortExpression="id_khachhang" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [id_hoadon] = @original_id_hoadon AND [ngaylap_hoadong] = @original_ngaylap_hoadong AND [id_khachhang] = @original_id_khachhang" InsertCommand="INSERT INTO [hoa_don] ([id_hoadon], [ngaylap_hoadong], [id_khachhang]) VALUES (@id_hoadon, @ngaylap_hoadong, @id_khachhang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [ngaylap_hoadong] = @ngaylap_hoadong, [id_khachhang] = @id_khachhang WHERE [id_hoadon] = @original_id_hoadon AND [ngaylap_hoadong] = @original_ngaylap_hoadong AND [id_khachhang] = @original_id_khachhang">
        <DeleteParameters>
            <asp:Parameter Name="original_id_hoadon" Type="Int32" />
            <asp:Parameter Name="original_ngaylap_hoadong" Type="String" />
            <asp:Parameter Name="original_id_khachhang" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_hoadon" Type="Int32" />
            <asp:Parameter Name="ngaylap_hoadong" Type="String" />
            <asp:Parameter Name="id_khachhang" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ngaylap_hoadong" Type="String" />
            <asp:Parameter Name="id_khachhang" Type="Int32" />
            <asp:Parameter Name="original_id_hoadon" Type="Int32" />
            <asp:Parameter Name="original_ngaylap_hoadong" Type="String" />
            <asp:Parameter Name="original_id_khachhang" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
