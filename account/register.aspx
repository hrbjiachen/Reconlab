<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="account_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 30px;
        }
        .style3
        {
            width: 289px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
    <MailDefinition BodyFileName="~/account/SignUpConfirmation.txt" 
        Subject="Your account at Reckonlab.com">
    </MailDefinition>
    <WizardSteps>
        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
        </asp:CreateUserWizardStep>
        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            <ContentTemplate>
                <table>
                    <tr>
                        <td align="center">
                            Complete</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Your account has been successfully created. A confirmation e-mail has been sent.</td>
                    </tr>
                    <tr>
                        <td align="middle">
                            <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard1" 
                                onclick="ContinueButton_Click" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:CompleteWizardStep>
    </WizardSteps>
</asp:CreateUserWizard>
</asp:Content>

