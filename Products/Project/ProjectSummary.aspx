<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="ProjectSummary.aspx.vb" Inherits="Products_ProjectVariance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <br /><h2>Your Project Summary</h2>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ProjectID" DataSourceID="SqlDataSource2" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        Width="950px">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ProjectID" DataNavigateUrlFormatString="AddEditProjectVariance.aspx?ProjectID={0}" DataTextField="ProjectName" HeaderText="Project Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="CreateDataTime" HeaderText="CreateDataTime" 
                SortExpression="CreateDataTime" DataFormatString="{0:g}" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [ProjectVariances] WHERE [ProjectID] = @ProjectID" 
        InsertCommand="INSERT INTO [ProjectVariances] ([ProjectName], [Description], [CreateDateTime]) VALUES (@ProjectName, @Description, @CreateDateTime)" 
        SelectCommand="SELECT ProjectID, ProjectName, Description, CreateDataTime, UserId FROM ProjectVariances WHERE (UserId = @UserId)" 
        
        UpdateCommand="UPDATE [ProjectVariances] SET [ProjectName] = @ProjectName, [Description] = @Description, [CreateDateTime] = @CreateDateTime WHERE [ProjectID] = @ProjectID">
        <DeleteParameters>
            <asp:Parameter Name="ProjectID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
        </InsertParameters>
       <SelectParameters>
             <asp:Parameter DbType="Guid" Name="UserId" ConvertEmptyStringToNull="true" />
</SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="ProjectID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="AddEditProjectVariance.aspx" title="">Create New Project</a>
<br /><br /><br /><br /><br /><br />
<asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>



