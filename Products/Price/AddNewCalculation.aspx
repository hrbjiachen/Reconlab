<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="AddNewCalculation.aspx.vb" Inherits="Products_Price_AddNewCalculation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CalculationID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="413px">
        <Fields>
            <asp:BoundField DataField="CalculationID" HeaderText="CalculationID" InsertVisible="False" ReadOnly="True" SortExpression="CalculationID" />
            <asp:TemplateField HeaderText="CustomerID" SortExpression="CustomerID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="CustomerDataSource" DataTextField="CustomerName" DataValueField="CustomerID" SelectedValue='<%# Bind("CustomerID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="CustomerDataSource" DataTextField="CustomerName" DataValueField="CustomerID" SelectedValue='<%# Bind("CustomerID") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IndustryID" SortExpression="IndustryID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="IndustryDataSource" DataTextField="IndustryName" DataValueField="IndustryID" SelectedValue='<%# Bind("IndustryID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="IndustryDataSource" DataTextField="IndustryName" DataValueField="IndustryID" SelectedValue='<%# Bind("IndustryID") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("IndustryID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CalculationName" SortExpression="CalculationName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CalculationName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CalculationName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CalculationName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MarkupRate" SortExpression="MarkupRate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MarkupRate") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MarkupRate") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MarkupRate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="CustomerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CustomerID], [CustomerName] FROM [Customer]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="IndustryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IndustryID], [IndustryName] FROM [Industry]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [CalculationID], [CustomerID], [IndustryID], [CalculationName], [MarkupRate] FROM [Calculation]" DeleteCommand="DELETE FROM [Calculation] WHERE [CalculationID] = @CalculationID" InsertCommand="INSERT INTO [Calculation] ([CustomerID], [IndustryID], [CalculationName], [MarkupRate]) VALUES (@CustomerID, @IndustryID, @CalculationName, @MarkupRate)" UpdateCommand="UPDATE [Calculation] SET [CustomerID] = @CustomerID, [IndustryID] = @IndustryID, [CalculationName] = @CalculationName, [MarkupRate] = @MarkupRate WHERE [CalculationID] = @CalculationID">
        <DeleteParameters>
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="IndustryID" Type="Int32" />
            <asp:Parameter Name="CalculationName" Type="String" />
            <asp:Parameter Name="MarkupRate" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="IndustryID" Type="Int32" />
            <asp:Parameter Name="CalculationName" Type="String" />
            <asp:Parameter Name="MarkupRate" Type="Decimal" />
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

