<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RegistrationForm.aspx.vb" Inherits="RegistrationForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registration Form</h2>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <!-- CustomValidator for Name field -->
                        <asp:CustomValidator ID="cvName" runat="server" ControlToValidate="txtName" 
                            ErrorMessage="Name must be at least 3 characters long" 
                            OnServerValidate="CustomNameValidator_ServerValidate" 
                            ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Invalid email format" 
                            ValidationExpression="\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}" 
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" 
                            ErrorMessage="Password must be at least 6 characters long" 
                            ValidationExpression=".{6,}" 
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone Number:</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" 
                            ErrorMessage="Invalid phone number" 
                            ValidationExpression="^\d{10}$" 
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth:</td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvDOB" runat="server" ControlToValidate="txtDOB" 
                            ErrorMessage="Date of Birth must be between 01/01/1900 and 01/01/2023" 
                            MinimumValue="01/01/1900" MaximumValue="01/01/2023" 
                            Type="Date" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:ValidationSummary ID="vsSummary" runat="server" 
                            HeaderText="Please correct the following errors:" 
                            ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
