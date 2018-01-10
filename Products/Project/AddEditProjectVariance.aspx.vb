
Partial Class Products_AddEditProjectVariance
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.QueryString.Get("ProjectID") IsNot Nothing Then
            DetailsView1.DefaultMode = DetailsViewMode.Edit
            Label7.Visible = True
            DetailsView2.Visible = True
            Chart1.Visible = True
            Chart2.Visible = True
        End If

    End Sub

   
    

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("projectSummary.aspx")
    End Sub



    Protected Sub SqlDataSource1_Inserting(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs) Handles SqlDataSource1.Inserting
        e.Command.Parameters("@UserId").Value = Membership.GetUser().ProviderUserKey
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        DetailsView2.DataBind()
    End Sub
End Class
