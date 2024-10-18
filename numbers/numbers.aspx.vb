Imports System

Public Class numbers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            panelPower.Visible = False ' Hide second input for Power by default
        End If
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim num1 As Double = Val(numInput1.Text) ' Assign value directly without parsing
        Dim num2 As Double = Val(numInput2.Text) ' Assign value directly for Power (will be ignored if not needed)
        Dim result As Double = 0 ' Variable to store the result


        Dim functionChoice As String = numFx.SelectedValue

        ' Perform the calculation based on the selected function
        Select Case functionChoice
            Case "exp"
                result = Math.Exp(num1) ' Exponential
            Case "floor"
                result = Math.Floor(num1) ' Floor
            Case "ceiling"
                result = Math.Ceiling(num1) ' Ceiling
            Case "log"
                result = Math.Log(num1) ' Logarithm (natural log)
            Case "pow"
                result = Math.Pow(num1, num2) ' Power
            Case "sqrt"
                result = Math.Sqrt(num1) ' Square Root
            Case Else
                res.Text = "Please select a valid function."
                Return
        End Select

        ' Display the result
        res.Text = "Result: " & result.ToString()
    End Sub

    Protected Sub numFx_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles numFx.SelectedIndexChanged
        ' Show second input only for Power function
        If numFx.SelectedValue = "pow" Then
            panelPower.Visible = True
        Else
            panelPower.Visible = False
            numInput2.Text = "" ' Clear second input if not needed
        End If
    End Sub
End Class
