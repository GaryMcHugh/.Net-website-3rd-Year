<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bakery.aspx.cs" Inherits="Bakery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsProducts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Grocery_StoreConnectionString %>" 
        SelectCommand="SELECT [name], [price], [stock], [category] FROM [Product] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Bakery" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:ListView ID="lvwBakery" runat="server" DataSourceID="dsProducts">
 <AlternatingItemTemplate>

                <tr style="font-size: 12px; background-color: Silver">
 
                    <td style="width: 150px">
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
             
                        <td style="width: 125px; font-family: Arial">
                            price: </td>
                        <td style="width: 400px">
                            <asp:Label ID="priceLabel" runat="server" 
                                Text='<%# Eval("price","{0:c}") %>' />
                        </td>
                    </td>
                 </tr>

                 <tr style="font-size: 12px; background-color: Silver">
                    <td></td>
                    <td style="width: 125px; font-family: Arial">
                            stock: </td>
                        <td style="width: 400px">
                            <asp:Label ID="stockLabel" runat="server" 
                                Text='<%# Eval("stock") %>' />
                        </td>
                 </tr>

                 <tr style="font-size: 12px; background-color: Silver">
                    <td></td>
                    <td style="width: 125px; font-family: Arial">
                            category: </td>
                        <td style="width: 400px">
                            <asp:Label ID="categoryLabel" runat="server" 
                                Text='<%# Eval("category") %>' />
                        </td>
                 </tr>

            </AlternatingItemTemplate>
        
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        
                    <ItemTemplate>

                <tr style="font-size: 12px">
                    <td style="width: 150px">
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
             
                        <td style="width: 125px; font-family: Arial">
                            price: </td>
                        <td style="width: 400px">
                            <asp:Label ID="priceLabel" runat="server" 
                                Text='<%# Eval("price", "{0:c}") %>' />
                        </td>
                    </td>
                 </tr>

                 <tr style="font-size: 12px">
                    <td></td>
                    <td style="width: 125px; font-family: Arial">
                            stock: </td>
                        <td style="width: 400px">
                            <asp:Label ID="stockLabel" runat="server" 
                                Text='<%# Eval("stock") %>' />
                        </td>
                 </tr>

                 <tr style="font-size: 12px">
                    <td></td>
                    <td style="width: 125px; font-family: Arial">
                            category: </td>
                        <td style="width: 400px">
                            <asp:Label ID="categoryLabel" runat="server" 
                                Text='<%# Eval("category") %>' />
                        </td>
          
            </ItemTemplate>

            <LayoutTemplate>

                <table id="Table1" runat="server" border="1" cellspacing="0" cellpadding="0">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table ID="itemPlaceholderContainer" 
                                runat="server" border="0" cellspacing="0" cellpadding="2" style="">
                                <tr id="Tr2" runat="server" style="background-color: Silver">
                                    <td id="Td2" runat="server" style="color: White;
                                        font-family: Arial; font-size: 14px; font-weight: bold" 
                                        colspan="4"> Product 
                                    </td>
                                </tr>

                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr3" runat="server">
                        <td id="Td3" runat="server" style="background-color: Silver" align="center">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" 
                                        ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" 
                                        FirstPageText="&lt;&lt;"
                                        PreviousPageText="&lt;"
                                        NextPageText="&gt;"
                                        LastPageText="&gt;&gt;"/>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        
    </asp:ListView>
</asp:Content>

