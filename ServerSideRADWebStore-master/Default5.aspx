<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <asp:Label ID="lblClicks" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="lblSessionClicks" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:HyperLink ID="hlnkDefault" runat="server" NavigateUrl="Vegetables.aspx">Back to Home Page</asp:HyperLink>
    <br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
</asp:Content>

