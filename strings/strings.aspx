<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="strings.aspx.vb" Inherits="strings.strings" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>String Functions</title>

    <style>
body {
    background-color: #dae3e5; /* Light background for the body */
    display: flex;
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    height: 100vh; /* Full viewport height */
    margin: 0; /* Remove default margin */
    font-family: Arial, sans-serif;
    font-size: 1rem;
}

form {
    background-color: #bbd1ea; /* Lighter background for form */
    padding: 32px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    width: 400px; /* Fixed width for the form */
    text-align: center;
}

h2 {
    font-size: 1.75rem; /* Increased font size */
    margin-bottom: 24px; /* Space below the title */
    color: #04080f; /* Title color */
}

input,
select {
    margin-bottom: 16px; /* Space between inputs */
    padding: 10px; /* Increased padding for inputs */
    font-size: 1rem; 
    width: 100%;
    box-sizing: border-box;
    border: 1px solid #507dbc; /* Border color for inputs */
    border-radius: 4px; /* Rounded corners */
    background-color: #fff; /* White background for inputs */
}

#res {
    margin-top: 20px;
    color: #fff; /* Text color */
    font-size: 1.25rem;
    font-weight: bold; /* Bold text for emphasis */
    padding: 10px; /* Padding around the text */
    border: 1px solid #507dbc; /* Border color */
    border-radius: 4px; /* Rounded corners */
    background-color: #507dbc; /* Light background color for contrast */
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>String Functions</h2>

            <asp:TextBox ID="txtInput1" runat="server" Placeholder="Enter String"></asp:TextBox>
            <br /><br />

            <asp:Panel ID="panelConcat" runat="server" Visible="False">
                <asp:TextBox ID="txtInput2" runat="server" Placeholder="Enter Additional String"></asp:TextBox>
                <br /><br />
            </asp:Panel>

            <asp:Panel ID="panelReplace" runat="server" Visible="False">
                <asp:TextBox ID="txtReplaceOld" runat="server" Placeholder="Word to Replace"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtReplaceNew" runat="server" Placeholder="Replace with"></asp:TextBox>
                <br /><br />
            </asp:Panel>

            <label for="strFx">Choose a function:</label>
            <br />
            <asp:DropDownList ID="strFx" runat="server" AutoPostBack="True" OnSelectedIndexChanged="strFx_SelectedIndexChanged">
                <asp:ListItem Text="Length" Value="Length"></asp:ListItem>
                <asp:ListItem Text="Concat" Value="Concat"></asp:ListItem>
                <asp:ListItem Text="Replace" Value="Replace"></asp:ListItem>
                <asp:ListItem Text="Copy" Value="Copy"></asp:ListItem>
                <asp:ListItem Text="Uppercase" Value="Uppercase"></asp:ListItem>
                <asp:ListItem Text="Lowercase" Value="Lowercase"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Button ID="btnSubmit" Text="Perform Function" runat="server" OnClick="btnSubmit_Click" />
            <br /><br />

            <asp:Label ID="res" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
