Imports System

Public Class numbers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            panelPower.Visible = False ' Hide second input for Power by default
        End If
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim num1 As Double
        Dim num2 As Double
        Dim result As Double = 0
        Dim validInput As Boolean = Double.TryParse(numInput1.Text, num1)

        ' Check if input is valid
        If Not validInput Then
            res.Text = "Please enter a number for calculation."
            Return
        End If

        Dim functionChoice As String = numFx.SelectedValue

        Select Case functionChoice
            Case "exp"
                result = Math.Exp(num1) ' Exponential
            Case "log"
                ' Check for valid input for Logarithmic function
                If num1 <= 0 Then
                    res.Text = "Logarithmic function requires a positive number."
                    Return
                End If
                result = Math.Log(num1) ' Logarithm (natural log)
            Case "pow"
                ' Validate second input for Power
                If Double.TryParse(numInput2.Text, num2) Then
                    result = Math.Pow(num1, num2) ' Power
                Else
                    res.Text = "Please enter a valid power value."
                    Return
                End If
            Case "round"
                result = Math.Round(num1) ' Round
            Case "floor"
                result = Math.Floor(num1) ' Floor
            Case "ceiling"
                result = Math.Ceiling(num1) ' Ceiling
            Case "sqrt"
                ' Check for valid input for Square Root
                If num1 < 0 Then
                    res.Text = "Square root requires a non-negative number."
                    Return
                End If
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
