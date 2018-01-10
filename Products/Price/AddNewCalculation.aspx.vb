
Partial Class Products_Price_AddNewCalculation
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("~/Products/Price/PriceCalculatorSummary.aspx")
    End Sub
End Class
