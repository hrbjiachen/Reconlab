
Partial Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ThemeList.SelectedIndexChanged
        Dim preferredTheme As HttpCookie = New HttpCookie("PreferredTheme")
        preferredTheme.Expires = DateTime.Now.AddMonths(3)
        preferredTheme.Value = ThemeList.SelectedValue
        Response.Cookies.Add(preferredTheme)
        Response.Redirect(Request.Url.ToString())

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim selectedTheme As String = Page.Theme
            Dim preferredTheme As HttpCookie = Request.Cookies.Get("PreferredTheme")
            If preferredTheme IsNot Nothing Then
                selectedTheme = preferredTheme.Value
            End If
            If Not String.IsNullOrEmpty(selectedTheme) AndAlso ThemeList.Items.FindByValue(selectedTheme) IsNot Nothing Then
                ThemeList.Items.FindByValue(selectedTheme).Selected = True
            End If
        End If

    End Sub
End Class

