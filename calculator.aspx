<%@ Page Title="Calculator - Reckonlab" Language="VB" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="false" CodeFile="calculator.aspx.vb" Inherits="calculator" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Business Model Calculator</h2>
    <p>Choose your industry
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Retail</asp:ListItem>
            <asp:ListItem>Manufacturing</asp:ListItem>
            <asp:ListItem>Service</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server"></asp:Label>
    </p>

    <h3>General Input</h3>
    <p>
        Markup Rate
        <asp:TextBox ID="MarkupRate" runat="server" style="margin-left: 31px" 
            Width="141px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="update" />
    </p>

    <h3>Variable Costs</h3>
    <table>
        <tr>
            <td>
                Item</td>
            <td>
                Price ($)</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="VariableName1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="VariablePrice1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save1" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete1" runat="server" Text="delete" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="VariableName2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="VariablePrice2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save2" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete2" runat="server" Text="delete" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="VariableName3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="VariablePrice3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save3" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete3" runat="server" Text="delete" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="VariableName4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="VariablePrice4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save4" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete4" runat="server" Text="delete" />
            </td>
        </tr>
    </table>
    <br />
        <asp:Label ID="Label1" runat="server" Text="Suggested Price"></asp:Label>

        <asp:TextBox ID="PriceResult" runat="server" ReadOnly="True"></asp:TextBox>

        <asp:Button ID="Button8" runat="server" style="text-align: right" 
            Text="Compute" />
<br />
    <h3>Fixed Costs</h3>
    <table>
        <tr>
            <td>
                Item</td>
            <td>
                Price</td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="FixedName1" runat="server"></asp:TextBox>
            </td>
           <td>
                <asp:TextBox ID="FixedPrice1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save5" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete5" runat="server" Text="delete" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="FixedName2" runat="server"></asp:TextBox>
            </td>
           <td>
                <asp:TextBox ID="FixedPrice2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save6" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete6" runat="server" Text="delete" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="FixedName3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="FixedPrice3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save7" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete7" runat="server" Text="delete" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="FixedName4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="FixedPrice4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Save8" runat="server" Text="save" />
            </td>
            <td>
                <asp:Button ID="Delete8" runat="server" Text="delete" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="BreakevenResult" runat="server" 
        Text="Show Break-even Analysis" />
    <br />
    <br />
    
    Break even point in dollars: <asp:Label ID="label2" runat="server"></asp:Label>
    <br />
    Break even point in units: <asp:Label ID="label3" runat="server"></asp:Label>
    <br />
    <p><img alt="" src="images/Break%20even%20chart.jpg" /></p>


        
    <asp:Button ID="Button3" runat="server" Text="Save Data" /><br/>

</asp:Content>

