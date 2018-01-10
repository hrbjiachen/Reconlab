
Partial Class account_changepassword
    Inherits System.Web.UI.Page

    Protected Sub ContinuePushButton_Click(sender As Object, e As System.EventArgs)
        Response.Redirect("~/account/login.aspx")
    End Sub
End Class
