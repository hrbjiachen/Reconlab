
Partial Class Products_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Response.Redirect("~/Products/Price/PriceCalculatorSummary.aspx")


    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        Response.Redirect("~/Products/Project/ProjectSummary.aspx")
    End Sub
End Class
