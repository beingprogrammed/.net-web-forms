<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="RegistrationForm.aspx.vb" Inherits="validationControl.RegistrationForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            gap: 10px;
            flex-direction: column-reverse;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form container */
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            gap: 15px;
            width: 70vw;
            max-width: 500px;
            box-sizing: border-box;
        }

        /* Heading */
        h2 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
        }

        /* Input fields */
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }



        /* Input focus state */
        input:focus {
            border: 2px solid #007BFF;
            outline: none;
        }

        /* Error messages styling */
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: -10px; /* Adjust as needed */
        }

        /* Validation summary styling */
        .validation-summary {
            font-size: 14px;
            color: red;
        }

        /* Submit button styling */
        #btnSubmit {
            padding: 10px;
            font-size: 16px;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            align-self: center;
            width: 30%;
        }

        #btnSubmit:hover {
            background-color: #0056b3;
            transform: scale(1.1)
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Registration Form</h2>

        <!-- Name Field -->
        <asp:TextBox ID="txtName" placeholder="Name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvName" 
            runat="server" 
            ControlToValidate="txtName" 
            ErrorMessage="Name is required" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RequiredFieldValidator>
        <asp:CustomValidator 
            ID="cvName" 
            runat="server" 
            ControlToValidate="txtName" 
            ErrorMessage="Name must be at least 3 characters long" 
            OnServerValidate="CustomNameValidator_ServerValidate" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:CustomValidator>

        <!-- Email Field -->
        <asp:TextBox ID="txtEmail" placeholder="E-Mail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            runat="server" 
            ControlToValidate="txtEmail" 
            ErrorMessage="Email is required" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator 
            runat="server" 
            ControlToValidate="txtEmail" 
            ErrorMessage="Invalid email format" 
            ValidationExpression="\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RegularExpressionValidator>

        <!-- Password Field -->
        <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator 
            runat="server" 
            ControlToValidate="txtPassword" 
            ErrorMessage="Password is required" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator 
            runat="server" 
            ControlToValidate="txtPassword" 
            ErrorMessage="Password must be at least 6 characters long" 
            ValidationExpression=".{6,}" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RegularExpressionValidator>

        <!-- Confirm Password Field -->
        <asp:TextBox ID="txtConfirmPassword" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator 
            runat="server" 
            ControlToCompare="txtPassword" 
            ControlToValidate="txtConfirmPassword" 
            ErrorMessage="Passwords do not match" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:CompareValidator>

        <!-- Phone Number Field -->
        <asp:TextBox ID="txtPhone" placeholder="Phone number" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            runat="server" 
            ControlToValidate="txtPhone" 
            ErrorMessage="Phone number is required" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator 
            runat="server" 
            ControlToValidate="txtPhone" 
            ErrorMessage="Invalid phone number" 
            ValidationExpression="^\d{10}$" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RegularExpressionValidator>

        <!-- Date of Birth Field -->
        <asp:TextBox ID="txtDOB" placeholder="Date of Birth" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            runat="server" 
            ControlToValidate="txtDOB" 
            ErrorMessage="Date of Birth is required" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator 
            runat="server" 
            ControlToValidate="txtDOB" 
            ErrorMessage="Date of Birth must be between 01/01/1900 and 01/01/2023" 
            MinimumValue="01/01/1900" 
            MaximumValue="01/01/2023" 
            Type="Date" 
            Display="Dynamic" 
            CssClass="error-message">
        </asp:RangeValidator>

        <!-- Validation Summary -->
        <asp:ValidationSummary 
            runat="server" 
            HeaderText="Please correct the following errors:" 
            DisplayMode="List" 
            CssClass="validation-summary" 
            ShowMessageBox="false" 
            ShowSummary="true">
        </asp:ValidationSummary>

        <!-- Submit Button -->
        <asp:Button 
            ID="btnSubmit" 
            runat="server" 
            Text="Submit" 
            OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
