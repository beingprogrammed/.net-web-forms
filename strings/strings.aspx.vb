Imports System

Public Class strings
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
            If Not IsPostBack Then
            ' Initially hide optional input fields
            panelConcat.Visible = False
            panelReplace.Visible = False
            End If
        End Sub

        Protected Sub strFx_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        ' Reset visibility of optional panels
        panelConcat.Visible = False
        panelReplace.Visible = False

            Select Case strFx.SelectedValue
                Case "Concat"
                panelConcat.Visible = True

            Case "Replace"
                panelReplace.Visible = True

                Case "Copy"
                ' No additional fields are needed for copy

                Case "Uppercase", "Lowercase"
                    ' No additional fields are needed for case conversion

                Case Else
                ' Hide all panels for other functions like Length
                panelConcat.Visible = False
                panelReplace.Visible = False
            End Select
        End Sub

        Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
            Dim inputString As String = txtInput1.Text
            Dim result As String = ""

            Select Case strFx.SelectedValue
                Case "Length"
                    result = "Length: " & inputString.Length.ToString()

                Case "Concat"
                    Dim concatString As String = txtInput2.Text
                    result = "Concatenated: " & String.Concat(inputString, concatString)

                Case "Replace"
                    Dim oldWord As String = txtReplaceOld.Text
                    Dim newWord As String = txtReplaceNew.Text
                    result = "Replaced: " & inputString.Replace(oldWord, newWord)

                Case "Copy"
                    ' Simply copy the text
                    result = "Copied Text: " & inputString

                Case "Uppercase"
                    result = "Uppercase: " & inputString.ToUpper()

                Case "Lowercase"
                    result = "Lowercase: " & inputString.ToLower()

            End Select

        res.Text = result
    End Sub
    End Class

