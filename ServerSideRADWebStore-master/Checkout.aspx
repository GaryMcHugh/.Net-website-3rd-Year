<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <asp:Label ID="lblClicks" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:HyperLink ID="hlnkPage2" runat="server" 
            NavigateUrl="Default3.aspx">Page 2</asp:HyperLink>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
            Text="Submit" />
    </div>
    <asp:HiddenField ID="hidField" runat="server" />
</asp:Content>

