<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Alcohol.aspx.cs" Inherits="Alcohol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsAlcohol" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        
        SelectCommand="SELECT * FROM [Product] WHERE ([category] = @category)" 
        ConflictDetection="OverwriteChanges" 
        DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @original_ProductID" 
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
            <asp:Parameter DefaultValue="Alcohol" Name="category" Type="String" />
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
    <asp:ListView ID="lvAlcohol" runat="server" DataSourceID="dsAlcohol" 
        DataKeyNames="ProductID" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                </td>
                <td>
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                </td>
                <td>
                    <asp:Label ID="stock_soldLabel" runat="server" 
                        Text='<%# Eval("stock_sold") %>' />
                </td>
                <td>
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                </td>
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ProductIDLabel1" runat="server" 
                        Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                </td>
                <td>
                    <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
                </td>
                <td>
                    <asp:TextBox ID="stock_soldTextBox" runat="server" 
                        Text='<%# Bind("stock_sold") %>' />
                </td>
                <td>
                    <asp:TextBox ID="categoryTextBox" runat="server" 
                        Text='<%# Bind("category") %>' />
                </td>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                </td>
                <td>
                    <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
                </td>
                <td>
                    <asp:TextBox ID="stock_soldTextBox" runat="server" 
                        Text='<%# Bind("stock_sold") %>' />
                </td>
                <td>
                    <asp:TextBox ID="categoryTextBox" runat="server" 
                        Text='<%# Bind("category") %>' />
                </td>
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                </td>
                <td>
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                </td>
                <td>
                    <asp:Label ID="stock_soldLabel" runat="server" 
                        Text='<%# Eval("stock_sold") %>' />
                </td>
                <td>
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                </td>
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    ProductID</th>
                                <th runat="server">
                                    <asp:LinkButton ID="lnkId" runat="server"
                                    CommandName="Sort" CommandArgument="name">Name
                                    </asp:LinkButton></th>
                                <th runat="server">
                                    price</th>
                                <th runat="server">
                                    stock</th>
  
                                <th runat="server">
                                    stock_sold</th>
                                <th runat="server">
                                    category</th>
                                <th id="Th1" runat="server">
                                 </th>
  
                            </tr>
                            <tr runat="server" ID="itemPlaceholder">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                </td>
                <td>
                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                </td>
                <td>
                    <asp:Label ID="stock_soldLabel" runat="server" 
                        Text='<%# Eval("stock_sold") %>' />
                </td>
                <td>
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                </td>
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
</asp:Content>

