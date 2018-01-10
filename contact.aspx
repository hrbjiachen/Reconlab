<%@ Page Title="Contact Us - Reckonlab" Language="VB" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>


<%@ Register src="Controls/ContactForm.ascx" tagname="ContactForm" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:ContactForm ID="ContactForm1" runat="server" />
</asp:Content>

