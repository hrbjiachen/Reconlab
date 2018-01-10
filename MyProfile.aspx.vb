
Partial Class MyProfile
    Inherits System.Web.UI.Page
    
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
      
        If Not Page.IsPostBack Then
            FirstName.Text = Profile.FirstName
            LastName.Text = Profile.LastName
            
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        If Page.IsValid Then
            Profile.FirstName = FirstName.Text
            Profile.LastName = LastName.Text
            
        End If

    End Sub
End Class
