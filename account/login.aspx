﻿<%@ Page Title="Log In" Language="VB" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="false"
    CodeFile="login.aspx.vb" Inherits="Account_Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                CreateUserText="create new account" CreateUserUrl="~/account/register.aspx" 
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="212px" 
               
                onloggedin="Login1_LoggedIn1">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LayoutTemplate>
                    <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0" style="height:212px;width:389px;">
                                    <tr>
                                        <br /><td align="center" colspan="2" 
                                            style="color:White;background-color:#5D7B9D;font-size:0.9em;font-weight:bold;">
                                            Log In</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="ctl25$Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                ToolTip="Password is required." ValidationGroup="ctl25$Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" BackColor="#FFFBFF" 
                                                BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" 
                                                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Log In" 
                                                ValidationGroup="ctl25$Login1" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:HyperLink ID="CreateUserLink" runat="server" 
                                                NavigateUrl="~/account/register.aspx">Create new account</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
            <br />
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
                <MailDefinition Subject="Your password for Reckonlab.Com">
                </MailDefinition>
                <UserNameTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2">
                                            Forgot Your Password?</td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            Enter your User Name to receive your password.</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="ctl05$PasswordRecovery1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" 
                                                ValidationGroup="ctl05$PasswordRecovery1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </UserNameTemplate>
            </asp:PasswordRecovery>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <br />
            <br />
            <h1>Welcome to Reckonlab.com</h1><br />
            <a href="../Products/Project/ProjectSummary.aspx">Go to My Project</a><br /> <br />
            <a href="../MyProfile.aspx">Go to My Profile</a><br /> <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            <br />
            <br />
           
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>

