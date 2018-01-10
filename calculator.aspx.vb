
Partial Class calculator
    Inherits System.Web.UI.Page

    Protected Sub Delete1_Click(sender As Object, e As System.EventArgs) Handles Delete1.Click
        VariableName1.Text = ""
        VariablePrice1.Text = ""

    End Sub

    Protected Sub Delete2_Click(sender As Object, e As System.EventArgs) Handles Delete2.Click
        VariableName2.Text = ""
        VariablePrice2.Text = ""
    End Sub

    Protected Sub Delete3_Click(sender As Object, e As System.EventArgs) Handles Delete3.Click
        VariableName3.Text = ""
        VariablePrice3.Text = ""
    End Sub

    Protected Sub Delete4_Click(sender As Object, e As System.EventArgs) Handles Delete4.Click
        VariableName4.Text = ""
        VariablePrice4.Text = ""
    End Sub

    Protected Sub Delete5_Click(sender As Object, e As System.EventArgs) Handles Delete5.Click
        FixedName1.Text = ""
        FixedPrice1.Text = ""
    End Sub

    Protected Sub Delete6_Click(sender As Object, e As System.EventArgs) Handles Delete6.Click
        FixedName2.Text = ""
        FixedPrice2.Text = ""
    End Sub

    Protected Sub Delete7_Click(sender As Object, e As System.EventArgs) Handles Delete7.Click
        FixedName3.Text = ""
        FixedPrice3.Text = ""
    End Sub

    Protected Sub Delete8_Click(sender As Object, e As System.EventArgs) Handles Delete8.Click
        FixedName4.Text = ""
        FixedPrice4.Text = ""
    End Sub

    Protected Sub Button8_Click(sender As Object, e As System.EventArgs) Handles Button8.Click

        Dim resultPrice As Double
        Dim a As Double
        Dim b As Double
        Dim c As Double
        Dim d As Double
        Dim m As Double = MarkupRate.Text
        If VariablePrice1.Text.Length > 0 Then
            a = VariablePrice1.Text
        Else
            a = 0
        End If
        If VariablePrice2.Text.Length > 0 Then
            b = VariablePrice2.Text
        Else
            b = 0
        End If
        If VariablePrice3.Text.Length > 0 Then
            c = VariablePrice3.Text
        Else
            c = 0
        End If
        If VariablePrice4.Text.Length > 0 Then
            d = VariablePrice4.Text
        Else
            d = 0
        End If


        resultPrice = (a + b + c + d) * (1 + m)
        PriceResult.Text = resultPrice

    End Sub

    Protected Sub BreakevenResult_Click(sender As Object, e As System.EventArgs) Handles BreakevenResult.Click
        Dim i As Double
        Dim f As Double
        Dim g As Double
        Dim h As Double
        Dim breakevenQty As Integer
        Dim breakevenValue As Double
        If FixedPrice1.Text.Length > 0 Then
            i = FixedPrice1.Text
        Else
            i = 0
        End If
        If FixedPrice2.Text.Length > 0 Then
            f = FixedPrice2.Text
        Else
            f = 0
        End If
        If FixedPrice3.Text.Length > 0 Then
            g = FixedPrice3.Text
        Else
            g = 0
        End If
        If FixedPrice4.Text.Length > 0 Then
            h = FixedPrice4.Text
        Else
            h = 0
        End If
        breakevenQty = (i + f + g + h) / (PriceResult.Text * (1 - MarkupRate.Text))
        breakevenValue = breakevenQty * PriceResult.Text
        label2.Text = breakevenQty & " Units"
        label3.Text = "$" & breakevenValue

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Select Case DropDownList1.SelectedValue
            Case "Retail"
                Label4.Text = "The industry average markup rate is 0.33"

            Case "Manufacturing"
                Label4.Text = "The industry average markup rate is 0.25"
            Case "Service"
                Label4.Text = "The industry average markup rate is 0.51"
        End Select
    End Sub

    Protected Sub Page_PreInit(sender As Object, e As System.EventArgs) Handles Me.PreInit
        Dim preferredTheme As HttpCookie = Request.Cookies.Get("PreferredTheme")
        If preferredTheme IsNot Nothing Then
            Page.Theme = preferredTheme.Value
        End If

    End Sub
End Class


    