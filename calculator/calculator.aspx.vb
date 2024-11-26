Imports System.Data

Public Class calculator
    Inherits System.Web.UI.Page

    Protected Sub btn_Click(sender As Object, e As EventArgs)
        Dim btn As Button = CType(sender, Button)

        ' Check if the clicked button is a number or an operation
        If btn.Text = "=" Then
            ' Handle the equals button (optional, depending on your logic)
            Try
                Dim result As Double = EvaluateExpression(txtScreen.Text)
                txtScreen.Text = result.ToString()
            Catch ex As Exception
                txtScreen.Text = "Error"
            End Try
        ElseIf btn.Text = "AC" Then
            ' Handle the clear button
            txtScreen.Text = "0"
        ElseIf btn.Text = "⌫" Then
            ' Handle the delete button (backspace)
            If txtScreen.Text.Length > 1 Then
                txtScreen.Text = txtScreen.Text.Substring(0, txtScreen.Text.Length - 1)
            Else
                txtScreen.Text = "0"
            End If
        ElseIf btn.Text = "/" Or btn.Text = "*" Or btn.Text = "+" Or btn.Text = "-" Then
            ' Handle operations (+, -, *, /)
            ' Append the operation symbol with a space for readability
            If txtScreen.Text <> "0" Then
                txtScreen.Text &= " " & btn.Text & " "
            End If
        Else
            ' Handle number buttons and dot
            If txtScreen.Text = "0" Then
                txtScreen.Text = btn.Text
            Else
                txtScreen.Text &= btn.Text
            End If
        End If
    End Sub


    Private Function EvaluateExpression(expression As String) As Double
        Dim table As New DataTable()
        ' Using DataTable.Compute to evaluate the string expression
        Return Convert.ToDouble(table.Compute(expression, String.Empty))
    End Function
End Class
