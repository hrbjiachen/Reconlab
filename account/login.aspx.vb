
Partial Class Account_Login
    Inherits System.Web.UI.Page

    

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Login1_LoggedIn1(sender As Object, e As System.EventArgs)
        Response.Redirect("~/account/login.aspx")
    End Sub
End Class