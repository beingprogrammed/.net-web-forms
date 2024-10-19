Imports System.Data

Public Class calculator
    Inherits System.Web.UI.Page

    Protected Sub btnNumber_Click(sender As Object, e As EventArgs)
        Dim btn As Button = CType(sender, Button)
        If txtScreen.Text = "0" Then
            txtScreen.Text = btn.CommandArgument
        Else
            txtScreen.Text &= btn.CommandArgument
        End If
    End Sub

    Protected Sub btnDot_Click(sender As Object, e As EventArgs)
        If Not txtScreen.Text.Contains(".") Then
            txtScreen.Text &= "."
        End If
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs)
        txtScreen.Text = "0"
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        If txtScreen.Text.Length > 1 Then
            txtScreen.Text = txtScreen.Text.Substring(0, txtScreen.Text.Length - 1)
        Else
            txtScreen.Text = "0"
        End If
    End Sub

    Protected Sub btnOperation_Click(sender As Object, e As EventArgs)
        Dim btn As Button = CType(sender, Button)
        txtScreen.Text &= btn.CommandArgument
    End Sub

    Protected Sub btnEquals_Click(sender As Object, e As EventArgs)
        Try
            Dim result As Double = EvaluateExpression(txtScreen.Text)
            txtScreen.Text = result.ToString()
        Catch ex As Exception
            txtScreen.Text = "Error"
        End Try
    End Sub

    Private Function EvaluateExpression(expression As String) As Double
        Dim table As New DataTable()
        ' Using DataTable.Compute to evaluate the string expression
        Return Convert.ToDouble(table.Compute(expression, String.Empty))
    End Function
End Class
