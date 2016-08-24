<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="khachhang.aspx.cs" Inherits="WebApplication1.khachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_khachhang" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="371px" Width="518px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="id_khachhang" HeaderText="id_khachhang" ReadOnly="True" SortExpression="id_khachhang" />
            <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [Khach_hang] WHERE [id_khachhang] = @original_id_khachhang AND [full_name] = @original_full_name AND [email] = @original_email" InsertCommand="INSERT INTO [Khach_hang] ([id_khachhang], [full_name], [email]) VALUES (@id_khachhang, @full_name, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Khach_hang]" UpdateCommand="UPDATE [Khach_hang] SET [full_name] = @full_name, [email] = @email WHERE [id_khachhang] = @original_id_khachhang AND [full_name] = @original_full_name AND [email] = @original_email">
        <DeleteParameters>
            <asp:Parameter Name="original_id_khachhang" Type="Int32" />
            <asp:Parameter Name="original_full_name" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_khachhang" Type="Int32" />
            <asp:Parameter Name="full_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="full_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="original_id_khachhang" Type="Int32" />
            <asp:Parameter Name="original_full_name" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
