<%@ Page Title="My Profile - Reckonlab" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="MyProfile.aspx.vb" Inherits="MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 30px;
            width: 586px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h1>My Profile</h1><br /><br />
    <table class="style2">
    <tr>
        <td class="style2">
            <asp:Label ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName" 
                Text="First Name"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
        </td>
        <td class="style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="FirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName" 
                Text="Last Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="LastName" ErrorMessage="*"></asp:RequiredFieldValidator>
           </td>
    </tr>
    <tr>
        <td>
           </td>
        <td>
        
            <asp:Button ID="Button1" runat="server" Text="Save Profile" 
                style="height: 29px" />
                <br />

        </td>
        <td>
            </td>
    </tr>
</table>
<br />
    <a href="account/changepassword.aspx">Change your password
</a>
    <br />
    <br />
    <br />Upgrade to Premium: <br /><br />
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="2WGEWCNMHKQ62">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<br />
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
</asp:Content>

