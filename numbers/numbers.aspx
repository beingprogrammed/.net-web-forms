﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="numbers.aspx.vb" Inherits="numbers.numbers" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Working with numbers</title>

    <style>
body {
    background-color: #dae3e5; /* Slightly lighter than the form */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
    font-size: 1rem;
}

form {
    background-color: #bbd1ea; /* Light background for form */
    padding: 32px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    width: 400px;
    text-align: center;
}

h2 {
    font-size: 1.75rem;
    margin-bottom: 24px;
    color: #04080f;
}

input,
select {
    margin-bottom: 16px;
    padding: 10px;
    font-size: 1rem;
    width: 100%;
    box-sizing: border-box;
    border: 1px solid #507dbc;
    border-radius: 4px;
}
#res {
    margin-top: 20px;
    color: #fff;
    font-size: 1.25rem;
    font-weight: bold;
    padding: 10px;
    border: 1px solid #a1c6ea;
    border-radius: 4px;
    background-color: #507dbc; /* Light result background */
}



    </style>
</head>
<body>
<form id="numericForm" runat="server">
    <h2>Numeric Functions</h2>

    <label for="numInput1">Enter Number:</label>
    <asp:TextBox ID="numInput1" runat="server" type="number" placeholder="Enter the first number"></asp:TextBox>
    <br /><br />

    <asp:Panel ID="panelPower" runat="server" Visible="False">
        <label for="numInput2">Enter Power (if applicable):</label>
        <asp:TextBox ID="numInput2" runat="server" type="number" placeholder="Enter the power value"></asp:TextBox>
        <br /><br />
    </asp:Panel>

    <label for="numFx">Choose a function:</label>
    <asp:DropDownList ID="numFx" runat="server" AutoPostBack="True" OnSelectedIndexChanged="numFx_SelectedIndexChanged">
        <asp:ListItem Text="Exponential" Value="exp"></asp:ListItem>
        <asp:ListItem Text="Logarithmic" Value="log"></asp:ListItem>
        <asp:ListItem Text="Power" Value="pow"></asp:ListItem>        
        <asp:ListItem Text="Round" Value="round"></asp:ListItem>
        <asp:ListItem Text="Floor" Value="floor"></asp:ListItem>
        <asp:ListItem Text="Ceiling" Value="ceiling"></asp:ListItem>
        <asp:ListItem Text="Square Root" Value="sqrt"></asp:ListItem>
    </asp:DropDownList>
    <br /><br />

    <asp:Button ID="btnSubmit" Text="Perform Function" runat="server" OnClick="btnSubmit_Click" />
    <br /><br />

    <asp:Label ID="res" runat="server" Text=""></asp:Label>
</form>

</body>
</html>