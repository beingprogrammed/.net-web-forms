<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="calculator.aspx.vb" Inherits="calculator.calculator" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
        }

        .calculator {
            box-sizing: border-box;
            width: max-content;
            background-color: #f3f3f3;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            margin: 100px auto;
        }

        .screen {
            width: 100%;
            height: 100px;
            text-align: right;
            font-size: 24px;
            border: none;
            border-radius: 5px;
            margin-bottom: 20px;
            padding: 10px;
            background-color: #333;
            color: #fff;
            
            box-sizing: border-box;
        }

        .button {
            width: 70px;
            height: 70px;
            margin: 5px;
            font-size: 24px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .btn-clear {
            background-color: #ff5722;
            color: white;
        }

        .btn-delete {
            background-color: #ffeb3b;
        }

        .btn-operation {
            background-color: #0288d1;
            color: white;
        }

        .btn-number {
            background-color: #4fc3f7;
        }

        .btn-equals {
            background-color: #03a9f4;
            color: white;
        }
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            text-align: right;
            font-size: 24px;
            border-radius: 5px;
            margin-bottom: 20px;
            padding: 10px;
            background-color: #333;
            color: #fff;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="calculator">
            <!-- Display Screen for the Calculator -->
            <asp:TextBox ID="txtScreen" runat="server" CssClass="auto-style1" ReadOnly="true" Height="71px" Width="335px"></asp:TextBox><br />

            <!-- First Row (Clear, Delete, Divide, Multiply) -->
            <asp:Button ID="btnClear" runat="server" Text="AC" CssClass="button btn-clear" OnClick="btnClear_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="⌫" CssClass="button btn-delete" OnClick="btnDelete_Click" />
            <asp:Button ID="btnDivide" runat="server" Text="/" CssClass="button btn-operation" OnClick="btnOperation_Click" CommandArgument="/" />
            <asp:Button ID="btnMultiply" runat="server" Text="*" CssClass="button btn-operation" OnClick="btnOperation_Click" CommandArgument="*" /><br />

            <!-- Second Row (7, 8, 9, Subtract) -->
            <asp:Button ID="btn7" runat="server" Text="7" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="7" />
            <asp:Button ID="btn8" runat="server" Text="8" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="8" />
            <asp:Button ID="btn9" runat="server" Text="9" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="9" />
            <asp:Button ID="btnSubtract" runat="server" Text="-" CssClass="button btn-operation" OnClick="btnOperation_Click" CommandArgument="-" /><br />

            <!-- Third Row (4, 5, 6, Add) -->
            <asp:Button ID="btn4" runat="server" Text="4" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="4" />
            <asp:Button ID="btn5" runat="server" Text="5" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="5" />
            <asp:Button ID="btn6" runat="server" Text="6" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="6" />
            <asp:Button ID="btnAdd" runat="server" Text="+" CssClass="button btn-operation" OnClick="btnOperation_Click" CommandArgument="+" /><br />

            <!-- Fourth Row (1, 2, 3, Equals) -->
            <asp:Button ID="btn1" runat="server" Text="1" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="1" />
            <asp:Button ID="btn2" runat="server" Text="2" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="2" />
            <asp:Button ID="btn3" runat="server" Text="3" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="3" />
            <asp:Button ID="btnEquals" runat="server" Text="=" CssClass="button btn-equals" OnClick="btnEquals_Click" /><br />

            <!-- Fifth Row (0, Decimal) -->
            <asp:Button ID="btn0" runat="server" Text="0" CssClass="button btn-number" OnClick="btnNumber_Click" CommandArgument="0" />
            <asp:Button ID="btnDot" runat="server" Text="." CssClass="button btn-number" OnClick="btnDot_Click" /><br />
        </div>
    </form>
</body>
</html>
