
Partial Class Products_AddEdiePriceCalculator
    Inherits System.Web.UI.Page

   

   
   

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        Panel1.Visible = CheckBox1.Checked
    End Sub

    
    Protected Sub DetailsView2_ItemInsert(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView2.ItemInserted
        GridView2.DataBind()
        DetailsView3.DataBind()
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        DetailsView3.DataBind()
    End Sub

    Protected Sub GridView2_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView2.RowDeleted
        DetailsView3.DataBind()
    End Sub
End Class
