<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="AddEditProjectVariance.aspx.vb" Inherits="Products_AddEditProjectVariance" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <a href="ProjectSummary.aspx">Back to Project Summary Page</a>
    <h2>Project Information</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ProjectID" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="960px" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="Project Name" SortExpression="ProjectName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProjectName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Project name is required" ControlToValidate="TextBox2" Text="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProjectName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Project name is required" ControlToValidate="TextBox2" Text="*"></asp:RequiredFieldValidator>
               </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProjectName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Q1.What is the project budget?" 
                SortExpression="ProjectBudget">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProjectBudget") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Q1 cannot be empty" ControlToValidate="TextBox3" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Q1 must be number>0" ControlToValidate="Textbox3" MinimumValue="0" MaximumValue="2147483647" Type="Currency" Text="*"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Q1 the input cannot contain more than 2 decimal places" ControlToValidate="Textbox3" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" Text="*"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" 
                        Text='<%# Bind("ProjectBudget", "{0:C1}") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Q1 cannot be empty" ControlToValidate="TextBox3" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Q1 must be number>0" ControlToValidate="Textbox3" MinimumValue="0" MaximumValue="2147483647" Type="Currency" Text="*"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Q1 the input cannot contain more than 2 decimal places" ControlToValidate="Textbox3" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" Text="*"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" 
                        Text='<%# Bind("ProjectBudget", "{0:C1}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Q2.How complete is the project? " 
                SortExpression="PercentageComplete">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" 
                        Text='<%# Bind("PercentageComplete") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Q2 cannot be empty" ControlToValidate="TextBox4" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Q2 must be number > 0 and <= 1 (ex.0.8 for 80% complete)" ControlToValidate="Textbox4" MinimumValue="0.00001" MaximumValue="1.001" Text="*"></asp:RangeValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Q2 the input cannot contain more than 2 decimal places" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ControlToValidate="Textbox4" Text="*"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" 
                        Text='<%# Bind("PercentageComplete", "{0:P}") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Q2 cannot be empty" ControlToValidate="TextBox4" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="Q2 must be number > 0 and <= 1 (ex.0.8 for 80% complete)" ControlToValidate="Textbox4" MinimumValue="0.00001" MaximumValue="1" Text="*"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Q2 the input cannot contain more than 2 decimal places" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ControlToValidate="Textbox4" Text="*"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" 
                        Text='<%# Bind("PercentageComplete", "{0:P}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Q3.How complete should the project be?" 
                SortExpression="PlannedPercentageComplete">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" 
                        Text='<%# Bind("PlannedPercentageComplete") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Q3 cannot be empty" ControlToValidate="TextBox5" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Q3 must be number > 0 and <= 1 (ex.0.8 for 80% complete)" ControlToValidate="Textbox5" MinimumValue="0.00001" MaximumValue="1.001" Text="*"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Q3 the input cannot contain more than 2 decimal places" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ControlToValidate="Textbox5" Text="*"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" 
                        Text='<%# Bind("PlannedPercentageComplete", "{0:P}") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Q3 cannot be empty" ControlToValidate="TextBox5" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="Q3 must be number > 0 and <= 1 (ex.0.8 for 80% complete)" ControlToValidate="Textbox5" MinimumValue="0.00001" MaximumValue="1" Text="*"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Q3 the input cannot contain more than 2 decimal places" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ControlToValidate="Textbox5" Text="*"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" 
                        Text='<%# Bind("PlannedPercentageComplete", "{0:P}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Q4.How much has the project spent?" 
                SortExpression="MoneySpent">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("MoneySpent") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Q4 cannot be empty" ControlToValidate="TextBox6" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="Q4 must be number>0" ControlToValidate="Textbox6" MinimumValue="0" MaximumValue="2147483647" Type="Currency" Text="*"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Q4 the input cannot contain more than 2 decimal places" ControlToValidate="Textbox6" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" Text="*"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" 
                        Text='<%# Bind("MoneySpent", "{0:C2}") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Q4 cannot be empty" ControlToValidate="TextBox6" Text="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="Q4 must be number>0" ControlToValidate="Textbox6" MinimumValue="0" MaximumValue="2147483647" Type="Currency" Text="*"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Q4 the input cannot contain more than 2 decimal places" ControlToValidate="Textbox6" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" Text="*"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" 
                        Text='<%# Bind("MoneySpent", "{0:C2}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" 
                        Text='<%# Bind("Description") %>' TextMode="MultiLine" Width="300px"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" 
                        Text='<%# Bind("Description") %>' TextMode="MultiLine" Width="300px"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField InsertText="Save" ShowCancelButton="False" 
                ShowEditButton="True" ShowInsertButton="True" />
            
        </Fields>

        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />

    </asp:DetailsView>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False">
            </asp:ValidationSummary>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [ProjectVariances] WHERE [ProjectID] = @ProjectID" 
        InsertCommand="INSERT INTO [ProjectVariances] ([UserId], [ProjectBudget], [ProjectName], [MoneySpent], [PercentageComplete], [PlannedPercentageComplete], [Description]) VALUES (@UserId, convert(numeric(18, 2),@ProjectBudget), @ProjectName, convert(numeric(18, 2),@MoneySpent), convert(decimal(5,2),@PercentageComplete), convert(decimal(5,2),@PlannedPercentageComplete), @Description)" 
        SelectCommand="SELECT [ProjectID], [UserId], [ProjectBudget], [ProjectName], [MoneySpent], [PercentageComplete], [PlannedPercentageComplete], [Description] FROM [ProjectVariances] WHERE ([ProjectID] = @ProjectID)" 
        UpdateCommand="UPDATE [ProjectVariances] SET  [ProjectBudget] = convert(numeric(18, 2),@ProjectBudget), [ProjectName] = @ProjectName, [MoneySpent] = convert(numeric(18, 2),@MoneySpent), [PercentageComplete] = convert(decimal(5,2),@PercentageComplete), [PlannedPercentageComplete] = convert(decimal(5,2),@PlannedPercentageComplete), [Description] = @Description WHERE [ProjectID] = @ProjectID">
        <DeleteParameters>
            <asp:Parameter Name="ProjectID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Guid" Name="UserId" ConvertEmptyStringToNull="true" />
            <asp:Parameter Name="ProjectBudget" Type="Decimal" />
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="MoneySpent" Type="Decimal" />
            <asp:Parameter Name="PercentageComplete" Type="Decimal" />
            <asp:Parameter Name="PlannedPercentageComplete" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ProjectID" QueryStringField="ProjectID" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProjectBudget" Type="Decimal" />
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="MoneySpent" Type="Decimal" />
            <asp:Parameter Name="PercentageComplete" Type="Decimal" />
            <asp:Parameter Name="PlannedPercentageComplete" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ProjectID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h2>
        <asp:Label ID="Label7" runat="server" Text="Project Variances Result" 
            Visible="False"></asp:Label>
    </h2>
    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="950px" 
        AutoGenerateRows="False" DataSourceID="SqlDataSource2" Visible="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3">
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ProjectName" HeaderText="ProjectName" 
                SortExpression="ProjectName" />
            <asp:BoundField DataField="Budget at Completion" 
                HeaderText="Budget at Completion" SortExpression="Budget at Completion" 
                DataFormatString="{0:C}" />
            <asp:BoundField DataField="Actual Cost" HeaderText="Actual Cost" 
                SortExpression="Actual Cost" DataFormatString="{0:C}" />
            <asp:BoundField DataField="Earned value" HeaderText="Earned value" 
                ReadOnly="True" SortExpression="Earned value" DataFormatString="{0:C}" />
            <asp:BoundField DataField="Planned value" HeaderText="Planned value" 
                ReadOnly="True" SortExpression="Planned value" DataFormatString="{0:C}" />
            <asp:BoundField DataField="Cost variance" HeaderText="Cost variance" 
                ReadOnly="True" SortExpression="Cost variance" DataFormatString="{0:C}" />
            <asp:BoundField DataField="Schedule variance" HeaderText="Schedule variance" 
                ReadOnly="True" SortExpression="Schedule variance" 
                DataFormatString="{0:C}" />
            <asp:BoundField DataField="Cost performance index" 
                HeaderText="Cost performance index" ReadOnly="True" 
                SortExpression="Cost performance index" DataFormatString="{0:F}" />
            <asp:BoundField DataField="Schedule performance index" 
                HeaderText="Schedule performance index" ReadOnly="True" 
                SortExpression="Schedule performance index" DataFormatString="{0:F}" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT ProjectName, ProjectBudget AS [Budget at Completion], MoneySpent AS [Actual Cost], ProjectBudget * PercentageComplete AS [Earned value], ProjectBudget * PlannedPercentageComplete AS [Planned value], ProjectBudget * PercentageComplete - MoneySpent AS [Cost variance], ProjectBudget * PercentageComplete - ProjectBudget * PlannedPercentageComplete AS [Schedule variance], ProjectBudget * PercentageComplete / MoneySpent AS [Cost performance index], (ProjectBudget * PercentageComplete) / (ProjectBudget * PlannedPercentageComplete) AS [Schedule performance index] FROM ProjectVariances WHERE (ProjectID = @ProjectID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProjectID" QueryStringField="ProjectID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table class="style1">
        <tr>
            <td>
              
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource3" 
                    Visible="False" Width="400px" Height="500px">
                    <Series>
                        <asp:Series Name="Cost Variance" YValueMembers="Cost variance" Legend="Legend1" 
                            LegendText="Cost" ChartArea="ChartArea1" IsValueShownAsLabel="True" 
                            LabelFormat="{0:C0}">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" Name="Schedule Variance" 
                            YValueMembers="Schedule variance" Legend="Legend1" LegendText="Schedule" 
                            IsValueShownAsLabel="True" LabelFormat="{0:C0}">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend BackColor="Gainsboro" LegendStyle="Column" Name="Legend1">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Name="Title1" Text="Variances" 
                            Font="Microsoft Sans Serif, 13.8pt, style=Bold">
                        </asp:Title>
                    </Titles>
                    <Annotations>
                        <asp:LineAnnotation Name="LineAnnotation1" YAxisName="ChartArea1\rY">
                        </asp:LineAnnotation>
                    </Annotations>
                </asp:Chart>
                </td>
            <td>
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource3" 
                    Width="550px" Visible="False" Height="500px">
                    <Series>
                        <asp:Series Legend="Legend1" Name="Cost performance index" 
                            YValueMembers="Cost performance index" IsValueShownAsLabel="True" 
                            LabelFormat="{0:F}">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" Legend="Legend1" Name="Schedule performance index" 
                            YValueMembers="Schedule performance index" IsValueShownAsLabel="True" 
                            LabelFormat="{0:F}">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend LegendStyle="Column" Name="Legend1" BackColor="224, 224, 224" 
                            BackImageAlignment="Bottom">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Name="Title1" Text="Index" 
                            Font="Microsoft Sans Serif, 13.8pt, style=Bold">
                        </asp:Title>
                    </Titles>
                    <Annotations>
                        <asp:LineAnnotation AnchorOffsetY="1" EndCap="Square" Name="LineAnnotation1" 
                            YAxisName="ChartArea1\rY">
                        </asp:LineAnnotation>
                    </Annotations>
                </asp:Chart>
            </td>
        </tr>
    </table>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
        
        SelectCommand="SELECT ProjectBudget * PercentageComplete - MoneySpent AS [Cost variance], ProjectBudget * PercentageComplete - ProjectBudget * PlannedPercentageComplete AS [Schedule variance], ProjectBudget * PercentageComplete / MoneySpent AS [Cost performance index], (ProjectBudget * PercentageComplete) / (ProjectBudget * PlannedPercentageComplete) AS [Schedule performance index], 1 AS [Standard line] FROM ProjectVariances WHERE (ProjectID = @ProjectID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProjectID" QueryStringField="ProjectID" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
    </asp:Content>

