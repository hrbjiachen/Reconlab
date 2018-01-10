<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Products_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Choose a Tool</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Price Calculator" />
        <br /><br />
        <asp:Button ID="Button2" runat="server" Text="Project Variance Calculator" />
    </p>
</asp:Content>

