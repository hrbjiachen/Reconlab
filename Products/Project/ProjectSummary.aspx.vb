Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections
Imports System.Data
Partial Class Products_ProjectVariance
    Inherits System.Web.UI.Page
 

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting
        e.Command.Parameters("@UserId").Value = Membership.GetUser().ProviderUserKey
    End Sub

End Class
