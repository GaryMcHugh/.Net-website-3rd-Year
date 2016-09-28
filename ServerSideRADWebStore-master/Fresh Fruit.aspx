<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Fresh Fruit.aspx.cs" Inherits="FreshFruit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsFreshFruit" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT * FROM [Product] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlFruit" Name="ProductID" 
                PropertyName="SelectedValue" Type="Int16" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="dsFreshFruitList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT [productid],[name], [price], [stock], [category] FROM [Product] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Fruit" Name="category" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="lblFruit" runat="server" style="font-weight: 700" 
        Text="select a fruit: "></asp:Label>
    <asp:DropDownList ID="ddlFruit" runat="server" AutoPostBack="True" 
        DataSourceID="dsFreshFruitList" DataTextField="name" DataValueField="productid">
    </asp:DropDownList>
    <asp:FormView ID="fvwFruit" runat="server" CellPadding="4" 
        DataSourceID="dsFreshFruit" ForeColor="#333333" DataKeyNames="ProductID">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" 
                Text='<%# Eval("ProductID") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            stock:
            <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
            <br />
            stock_sold:
            <asp:TextBox ID="stock_soldTextBox" runat="server" 
                Text='<%# Bind("stock_sold") %>' />
            <br />
            category:
            <asp:TextBox ID="categoryTextBox" runat="server" 
                Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            stock:
            <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
            <br />
            stock_sold:
            <asp:TextBox ID="stock_soldTextBox" runat="server" 
                Text='<%# Bind("stock_sold") %>' />
            <br />
            category:
            <asp:TextBox ID="categoryTextBox" runat="server" 
                Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price", "{0:c}") %>' />
            <br />
            stock:
            <asp:Label ID="stockLabel" runat="server" Text='<%# Bind("stock") %>' />
            <br />
            stock_sold:
            <asp:Label ID="stock_soldLabel" runat="server" 
                Text='<%# Bind("stock_sold") %>' />
            <br />
            category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>
    <br />
    <br />
    <asp:Label ID="lblClicks" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:HyperLink ID="hlnkPage2" runat="server" NavigateUrl="Default4.aspx">Page 2</asp:HyperLink>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
</asp:Content>

