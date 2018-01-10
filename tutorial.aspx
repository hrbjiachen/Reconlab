<%@ Page Title="Tutorial - Reckonlab" Language="VB" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="false" CodeFile="tutorial.aspx.vb" Inherits="tutorial" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>Tutorial for Using ReckonLab Services</h2><br />

    <h3>1.) Create a new project and enter your information as directed</h3><br />
    <center><p>
       
    <asp:Image ID="Tutorial1" width="800px" height="329px" runat="server" ImageURL="~/images/create-project.jpg" />
        </p></center><br />

        <h3>2.) View your projects that you've created</h3><br />
   <center> <p>
        <asp:Image ID="Tutorial2" width="800px" height="126px" runat="server" ImageURL="~/images/my-project.jpg" />
    </p></center><br />

    <h3>1.) View the results and know how your projects are performing!</h3><br />
       <center> <p>
        <asp:Image ID="Image1" width="800px" height="593px" runat="server" ImageURL="~/images/results.jpg" />
    </p></center>
<center><asp:Button ID="Button1" runat="server" Text="Get Started" 
        PostBackUrl="~/Products/Project/AddEditProjectVariance.aspx" /></center><br />

</asp:Content>