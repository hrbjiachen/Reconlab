<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="EditPriceCalculator.aspx.vb" Inherits="Products_AddEdiePriceCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <a href="PriceCalculatorSummary.aspx">Back to the project summary page</a>
    <br />
    <br />
    
    
      1.General Information<br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="CalculationID" DataSourceID="SqlDataSource3" DefaultMode="Edit" 
        Height="50px" Width="413px">
        <Fields>
            <asp:TemplateField HeaderText="Calculation Name" SortExpression="CalculationName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CalculationName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CalculationName") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CalculationName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IndustryID" SortExpression="IndustryID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="IndustryDataSource" DataTextField="IndustryName" DataValueField="IndustryID" SelectedValue='<%# Bind("IndustryID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="IndustryDataSource" DataTextField="IndustryName" DataValueField="IndustryID" SelectedValue='<%# Bind("IndustryID") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("IndustryID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MarkupRate" SortExpression="MarkupRate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MarkupRate") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MarkupRate") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MarkupRate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="See the industry average markup rate" AutoPostBack="True" />
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
    
                                        SelectCommand="SELECT Industry.BenchmarkMarkupRate FROM Calculation INNER JOIN Industry ON Calculation.IndustryID = Industry.IndustryID WHERE (Calculation.CalculationID = @CalculationID)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="CalculationID" QueryStringField="CalculationID" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
                                        <Columns>
                                            <asp:BoundField DataField="BenchmarkMarkupRate" HeaderText="BenchmarkMarkupRate" SortExpression="BenchmarkMarkupRate" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [CalculationID], [CustomerID], [IndustryID], [CalculationName], [MarkupRate] FROM [Calculation] WHERE ([CalculationID] = @CalculationID)" DeleteCommand="DELETE FROM [Calculation] WHERE [CalculationID] = @CalculationID" InsertCommand="INSERT INTO [Calculation] ([CustomerID], [IndustryID], [CalculationName], [MarkupRate]) VALUES (@CustomerID, @IndustryID, @CalculationName, @MarkupRate)" UpdateCommand="UPDATE [Calculation] SET [CustomerID] = @CustomerID, [IndustryID] = @IndustryID, [CalculationName] = @CalculationName, [MarkupRate] = @MarkupRate WHERE [CalculationID] = @CalculationID">
        <DeleteParameters>
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="IndustryID" Type="Int32" />
            <asp:Parameter Name="CalculationName" Type="String" />
            <asp:Parameter Name="MarkupRate" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="CalculationID" QueryStringField="CalculationID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="IndustryID" Type="Int32" />
            <asp:Parameter Name="CalculationName" Type="String" />
            <asp:Parameter Name="MarkupRate" Type="Decimal" />
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="CustomerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CustomerID], [CustomerName] FROM [Customer]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="IndustryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IndustryID], [IndustryName] FROM [Industry]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Calculation] WHERE [CalculationID] = @CalculationID" 
        InsertCommand="INSERT INTO [Calculation] ([CustomerID], [IndustryID], [CalculationName], [MarkupRate]) VALUES (@CustomerID, @IndustryID, @CalculationName, @MarkupRate)" 
        SelectCommand="SELECT [CalculationID], [CustomerID], [IndustryID], [CalculationName], [MarkupRate] FROM [Calculation] WHERE ([CalculationID] = @CalculationID)" 
        UpdateCommand="UPDATE [Calculation] SET [CustomerID] = @CustomerID, [IndustryID] = @IndustryID, [CalculationName] = @CalculationName, [MarkupRate] = @MarkupRate WHERE [CalculationID] = @CalculationID">
        <DeleteParameters>
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="IndustryID" Type="Int32" />
            <asp:Parameter Name="CalculationName" Type="String" />
            <asp:Parameter Name="MarkupRate" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="CalculationID" QueryStringField="CalculationID" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="IndustryID" Type="Int32" />
            <asp:Parameter Name="CalculationName" Type="String" />
            <asp:Parameter Name="MarkupRate" Type="Decimal" />
            <asp:Parameter Name="CalculationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    2.Enter your variable Cost Below<br />
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource4" DefaultMode="Insert" 
        Height="50px" Width="460px" DataKeyNames="CostInfoID">
        <Fields>
            <asp:TemplateField HeaderText="Calculation Name" SortExpression="CalculationID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CalculationID") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CalculationName" DataValueField="CalculationID" SelectedValue='<%# Bind("CalculationID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CalculationID], [CalculationName] FROM [Calculation]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CalculationID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CostName" SortExpression="CostName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CostName") %>'></asp:TextBox>
                     
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CostName") %>'></asp:TextBox>
                     
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CostName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CostAmount" SortExpression="CostAmount">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CostAmount") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CostAmount") %>'></asp:TextBox>
                     
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CostAmount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CostInfoID" HeaderText="CostInfoID" InsertVisible="False" ReadOnly="True" SortExpression="CostInfoID" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CostInfo] WHERE [CostInfoID] = @CostInfoID" InsertCommand="INSERT INTO CostInfo(CostName, CostAmount, CostType, CalculationID) VALUES (@CostName, @CostAmount, 1, @CalculationID)" SelectCommand="SELECT CostName, CostAmount, CostInfoID, CalculationID FROM CostInfo WHERE (CalculationID = @CalculationID) AND (CostType = @CostType)" UpdateCommand="UPDATE [CostInfo] SET [CostName] = @CostName, [CostAmount] = @CostAmount WHERE [CostInfoID] = @CostInfoID">
        <DeleteParameters>
            <asp:Parameter Name="CostInfoID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CostName" Type="String" />
            <asp:Parameter Name="CostAmount" Type="Decimal" />
            <asp:Parameter Name="CalculationID" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="CalculationID" QueryStringField="CalculationID" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="CostType" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CostName" Type="String" />
            <asp:Parameter Name="CostAmount" Type="Decimal" />
            <asp:Parameter Name="CostInfoID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    Variable Cost Summary Table<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CostInfoID" DataSourceID="VCDataSource2">
        <Columns>
            <asp:BoundField DataField="CostName" HeaderText="CostName" SortExpression="CostName" />
            <asp:BoundField DataField="CostAmount" HeaderText="CostAmount" SortExpression="CostAmount" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="VCDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [CostInfo] WHERE [CostInfoID] = @CostInfoID" 
        InsertCommand="INSERT INTO [CostInfo] ([CalculationID], [CostName], [CostAmount], [CostType]) VALUES (@CalculationID, @CostName, @CostAmount, @CostType)" 
        SelectCommand="SELECT * FROM [CostInfo] WHERE (([CostType] = @CostType) AND ([CalculationID] = @CalculationID))" 
        
        UpdateCommand="UPDATE [CostInfo] SET [CalculationID] = @CalculationID, [CostName] = @CostName, [CostAmount] = @CostAmount, [CostType] = @CostType WHERE [CostInfoID] = @CostInfoID">
        <DeleteParameters>
            <asp:Parameter Name="CostInfoID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CalculationID" Type="Int32" />
            <asp:Parameter Name="CostName" Type="String" />
            <asp:Parameter Name="CostAmount" Type="Decimal" />
            <asp:Parameter Name="CostType" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="CostType" Type="Int32" />
            <asp:QueryStringParameter Name="CalculationID" QueryStringField="CalculationID" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CalculationID" Type="Int32" />
            <asp:Parameter Name="CostName" Type="String" />
            <asp:Parameter Name="CostAmount" Type="Decimal" />
            <asp:Parameter Name="CostType" Type="Int32" />
            <asp:Parameter Name="CostInfoID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    3. Calculate the price
    <br />
    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="CalculationID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="CalculationID" HeaderText="CalculationID" InsertVisible="False" ReadOnly="True" SortExpression="CalculationID" />
            <asp:BoundField DataField="CalculationName" HeaderText="CalculationName" SortExpression="CalculationName" />
            <asp:BoundField DataField="MarkupRate" HeaderText="MarkupRate" SortExpression="MarkupRate" />
            <asp:BoundField DataField="Suggested Price" HeaderText="Suggested Price" ReadOnly="True" SortExpression="Suggested Price" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="CalculatePrice" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="CalculationID" QueryStringField="CalculationID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    
  
</asp:Content>

