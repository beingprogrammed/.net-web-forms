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


    </style>
</head>
<body>
    <form runat="server">
        <div class="calculator">
            <asp:TextBox ID="txtScreen" runat="server" CssClass="screen" ReadOnly="true"></asp:TextBox><br />
            
            <!-- Clear, Delete, and Operations -->
            <asp:Button ID="btnClear" runat="server" Text="AC" CssClass="button btn-clear" OnClick="btn_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="⌫" CssClass="button btn-delete" OnClick="btn_Click" />
            <asp:Button ID="btnDivide" runat="server" Text="/" CssClass="button btn-operation" OnClick="btn_Click" />
            <asp:Button ID="btnMultiply" runat="server" Text="*" CssClass="button btn-operation" OnClick="btn_Click" /><br />
            
            <!-- Number Buttons -->
            <asp:Button ID="btn7" runat="server" Text="7" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btn8" runat="server" Text="8" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btn9" runat="server" Text="9" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btnSubtract" runat="server" Text="-" CssClass="button btn-operation" OnClick="btn_Click" /><br />
            
            <asp:Button ID="btn4" runat="server" Text="4" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btn5" runat="server" Text="5" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btn6" runat="server" Text="6" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btnAdd" runat="server" Text="+" CssClass="button btn-operation" OnClick="btn_Click" /><br />
            
            <asp:Button ID="btn1" runat="server" Text="1" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btn2" runat="server" Text="2" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btn3" runat="server" Text="3" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btnEquals" runat="server" Text="=" CssClass="button btn-equals" OnClick="btn_Click" /><br />
            
            <!-- Zero and Decimal Button -->
            <asp:Button ID="btn0" runat="server" Text="0" CssClass="button btn-number" OnClick="btn_Click" />
            <asp:Button ID="btnDot" runat="server" Text="." CssClass="button btn-number" OnClick="btn_Click" /><br />
        </div>
    </form>
</body>
</html>
