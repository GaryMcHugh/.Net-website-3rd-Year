<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Vegetables.aspx.cs" Inherits="Vegetables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsVegetables" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT [name], [price], [stock], [category] FROM [Product] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Vegetable" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataSourceID="dsVegetables" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="Price" 
                SortExpression="price">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="category" HeaderText="Type" 
                SortExpression="category" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerSettings Mode="NextPrevious" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <br />
    <br />
    <asp:Label ID="lblClicks" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="lblSessionClicks" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:HyperLink ID="hlnkPage2" runat="server" NavigateUrl="Default5.aspx">Page 2</asp:HyperLink>
    <br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
</asp:Content>

