
Partial Class account_register
    Inherits System.Web.UI.Page

  
    Protected Sub ContinueButton_Click(sender As Object, e As System.EventArgs)
        Response.Redirect("~/Products/Project/ProjectSummary.aspx")
    End Sub
End Class
