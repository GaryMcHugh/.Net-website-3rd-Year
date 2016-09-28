<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsCategories" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
    SelectCommand="SELECT * FROM [Category]" ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Category] WHERE [CategoryID] = @original_CategoryID AND [shortName] = @original_shortName AND [longName] = @original_longName" 
        InsertCommand="INSERT INTO [Category] ([shortName], [longName]) VALUES (@shortName, @longName)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [Category] SET [shortName] = @shortName, [longName] = @longName WHERE [CategoryID] = @original_CategoryID AND [shortName] = @original_shortName AND [longName] = @original_longName">
        <DeleteParameters>
            <asp:Parameter Name="original_CategoryID" Type="Int16" />
            <asp:Parameter Name="original_shortName" Type="String" />
            <asp:Parameter Name="original_longName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="shortName" Type="String" />
            <asp:Parameter Name="longName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="shortName" Type="String" />
            <asp:Parameter Name="longName" Type="String" />
            <asp:Parameter Name="original_CategoryID" Type="Int16" />
            <asp:Parameter Name="original_shortName" Type="String" />
            <asp:Parameter Name="original_longName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:GridView ID="gvwCategory" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CategoryID" 
    DataSourceID="dsCategories" ForeColor="#333333" GridLines="None" 
        AllowPaging="True" onrowdeleted="gvwCategory_RowDeleted" PageSize="4">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="CategoryID" HeaderText="Category Id" 
            InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
        <asp:BoundField DataField="shortName" HeaderText="Short Name" 
            SortExpression="shortName" />
        <asp:BoundField DataField="longName" HeaderText="Name" 
            SortExpression="longName" />
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
            ShowEditButton="True" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <br />
    <asp:Label ID="lblShortName" runat="server" style="font-weight: 700" 
        Text="Short Name: "></asp:Label>
    <asp:TextBox ID="txtName" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lnlLongName" runat="server" style="font-weight: 700" 
        Text="Long Name: "></asp:Label>
    <asp:TextBox ID="txtNameLong" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnInsert" runat="server" onclick="btnInsert_Click" 
        Text="insert" />
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
</asp:Content>

