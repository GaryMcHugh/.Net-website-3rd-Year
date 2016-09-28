<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Drinks.aspx.cs" Inherits="Drinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsProducts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT * FROM [Product] WHERE ([category] = @category)" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @original_ProductID AND [name] = @original_name AND [price] = @original_price AND [stock] = @original_stock AND [stock_sold] = @original_stock_sold AND [category] = @original_category" 
        InsertCommand="INSERT INTO [Product] ([name], [price], [stock], [stock_sold], [category]) VALUES (@name, @price, @stock, @stock_sold, @category)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [Product] SET [name] = @name, [price] = @price, [stock] = @stock, [stock_sold] = @stock_sold, [category] = @category WHERE [ProductID] = @original_ProductID AND [name] = @original_name AND [price] = @original_price AND [stock] = @original_stock AND [stock_sold] = @original_stock_sold AND [category] = @original_category">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int16" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Decimal" />
            <asp:Parameter Name="original_stock" Type="Int32" />
            <asp:Parameter Name="original_stock_sold" Type="Int32" />
            <asp:Parameter Name="original_category" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="stock" Type="Int32" />
            <asp:Parameter Name="stock_sold" Type="Int32" />
            <asp:Parameter Name="category" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Soft Drink" Name="category" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="stock" Type="Int32" />
            <asp:Parameter Name="stock_sold" Type="Int32" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="original_ProductID" Type="Int16" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="Decimal" />
            <asp:Parameter Name="original_stock" Type="Int32" />
            <asp:Parameter Name="original_stock_sold" Type="Int32" />
            <asp:Parameter Name="original_category" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="dvwDrinks" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="dsProducts" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="Product Id" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="Price" 
                SortExpression="price" />
            <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
            <asp:BoundField DataField="stock_sold" HeaderText="Sold" 
                SortExpression="stock_sold" />
            <asp:BoundField DataField="category" HeaderText="Type" 
                SortExpression="category" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

