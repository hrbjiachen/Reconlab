<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="PriceCalculatorSummary.aspx.vb" Inherits="Products_PriceCalculatorSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   <br />
     Select the user    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="CustomerName" 
        DataValueField="CustomerID">
    </asp:DropDownList>
    <br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [CustomerID], [CustomerName] FROM [Customer]">
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CalculationID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="CalculationID" DataNavigateUrlFormatString="EditPriceCalculator.aspx?CalculationID={0}" DataTextField="CalculationName" HeaderText="Choose your work" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [CalculationID], [CalculationName] FROM [Calculation] WHERE ([CustomerID] = @CustomerID)" DeleteCommand="DELETE FROM [Calculation] WHERE [CalculationID] = @CalculationID" InsertCommand="INSERT INTO [Calculation] ([CalculationName]) VALUES (@CalculationName)" UpdateCommand="UPDATE [Calculation] SET [CalculationName] = @CalculationName WHERE [CalculationID] = @CalculationID">
        <DeleteParameters>
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CalculationName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CustomerID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CalculationName" Type="String" />
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="AddNewCalculation.aspx">Start new price calculation</a>

</asp:Content>

