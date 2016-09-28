<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ClubCard.aspx.cs" Inherits="Clubcard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsClubCardGrid" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT * FROM [Clubcard]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="dsClubCardDetails" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT * FROM [Clubcard] WHERE ([ClubcardID] = @ClubcardID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="gvwClubCard" Name="ClubcardID" 
                PropertyName="SelectedValue" Type="Int16" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gvwClubCard" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ClubcardID" 
        DataSourceID="dsClubCardGrid" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ClubcardID" HeaderText="Clubcard ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ClubcardID">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="points" HeaderText="Points" SortExpression="points">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_Name" HeaderText="Name" 
                SortExpression="customer_Name" />
            <asp:BoundField DataField="street" HeaderText="Street" 
                SortExpression="street" />
            <asp:BoundField DataField="town" HeaderText="Town" SortExpression="town" />
            <asp:BoundField DataField="county" HeaderText="County" 
                SortExpression="county" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="phoneNo" HeaderText="Phone No" 
                SortExpression="phoneNo" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
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
    <asp:DetailsView ID="dvwClubcard" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="ClubcardID" DataSourceID="dsClubCardDetails" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ClubcardID" HeaderText="Clubcard Id" 
                InsertVisible="False" ReadOnly="True" SortExpression="ClubcardID" />
            <asp:BoundField DataField="points" HeaderText="Points" 
                SortExpression="points" />
            <asp:BoundField DataField="customer_Name" HeaderText="Customer Name" 
                SortExpression="customer_Name" />
            <asp:BoundField DataField="street" HeaderText="Street" 
                SortExpression="street" />
            <asp:BoundField DataField="town" HeaderText="Town" SortExpression="town" />
            <asp:BoundField DataField="county" HeaderText="County" 
                SortExpression="county" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="phoneNo" HeaderText="Phone No" 
                SortExpression="phoneNo" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</asp:Content>

