Partial Class RegistrationForm
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Check if the page is valid before processing
        If Page.IsValid Then
            ' Code to handle the registration logic, such as saving data to a database
            Response.Write("Registration successful!")
        Else
            ' If the page is not valid, do nothing or display additional error handling (optional)
        End If
    End Sub

    ' Server-side custom validation for the Name field
    Protected Sub CustomNameValidator_ServerValidate(source As Object, args As ServerValidateEventArgs)
        ' Custom validation logic: Name must be at least 3 characters long
        If args.Value.Length >= 3 Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub
End Class
