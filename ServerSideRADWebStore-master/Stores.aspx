<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Stores.aspx.cs" Inherits="Stores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsStoreList" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
    SelectCommand="SELECT [StoreID], [location], [phoneNo], [managerID], [contactEmail] FROM [Store]">
</asp:SqlDataSource>
<asp:SqlDataSource ID="dsStore" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
    SelectCommand="SELECT [StoreID], [location], [phoneNo], [contactEmail] FROM [Store] WHERE ([StoreID] = @StoreID)">
    <SelectParameters>
        <asp:ControlParameter ControlID="ddlStore" Name="StoreID" 
            PropertyName="SelectedValue" Type="Int16" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
<asp:Label ID="lblStore" runat="server" Text="Select a Store: "></asp:Label>
<asp:DropDownList ID="ddlStore" runat="server" AutoPostBack="True" 
    DataSourceID="dsStoreList" DataTextField="location" DataValueField="StoreID">
</asp:DropDownList>
<br />
<br />
<asp:DetailsView ID="dvStore" runat="server" AutoGenerateRows="False" 
    CellPadding="4" DataKeyNames="StoreID" DataSourceID="dsStore" 
    ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
    <EditRowStyle BackColor="#2461BF" />
    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="location" HeaderText="Location" 
            SortExpression="location" />
        <asp:BoundField DataField="StoreID" HeaderText="Store Id" InsertVisible="False" 
            ReadOnly="True" SortExpression="StoreID" />
        <asp:BoundField DataField="phoneNo" HeaderText="phone No" 
            SortExpression="phoneNo" />
        <asp:BoundField DataField="contactEmail" HeaderText="Email" 
            SortExpression="contactEmail" />
    </Fields>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
</asp:Content>

