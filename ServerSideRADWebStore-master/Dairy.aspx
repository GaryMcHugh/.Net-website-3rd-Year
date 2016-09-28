<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Dairy.aspx.cs" Inherits="Dairy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsDairy" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT [name], [price], [stock], [category] FROM [Product] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Dairy" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:ListView ID="lvwDairy" runat="server" DataSourceID="dsDairy" 
        GroupItemCount="2">
        
        
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        

        <ItemTemplate>
            <td>
                <table>
                    <tr>
                        <td style="font-family: Arial, Sans-Serif;
                            font-size: 12pt; font-weight: bold" align="center" valign="top">
                            <asp:Label ID="nameLabel" runat="server"
                                Text='<%# Eval("name") %>' />
                        </td>
                    </tr>
                    <br />
                    <tr>
                        <td style="font-family: Arial, Sans-Serif;
                            font-size: 12pt; font-weight: bold" align="center" valign="top">
                            <asp:Label ID="priceLabel" runat="server"
                                Text='<%# Eval("price","{0:c}") %>' />
                        </td>
                    </tr>
                    <br />
                    <tr>
                        <td style="font-family: Arial, Sans-Serif;
                            font-size: 12pt; font-weight: bold" align="center" valign="top">
                            <asp:Label ID="stockLabel" runat="server"
                                Text='<%# Eval("stock") %>' />
                        </td>
                    </tr>
                    <br />
                    <tr>
                        <td style="font-family: Arial, Sans-Serif;
                            font-size: 12pt; font-weight: bold" align="center" valign="top">
                            <asp:Label ID="categoryLabel" runat="server"
                                Text='<%# Eval("category") %>' />
                        </td>
                    </tr>
                    <br />
                </table>
            </td>
        </ItemTemplate>

        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
    </asp:ListView>
</asp:Content>

