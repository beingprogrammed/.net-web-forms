<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="table._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Table</title>
     <style>
        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #FDFDFF;
        }

        th, td {
            border: 1px solid #393D3F;
            padding: 10px;
        }

        th {
            background-color: #62929E;
            color: #FDFDFF;
        }

        tr:nth-child(even) td {
            background-color: #C6C5B9;
        }

        tr:nth-child(odd) td {
            background-color: #FDFDFF;
        }

        td:first-child {
            background-color: #546A7B;
            color: #000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th rowspan="2"></th>
                    <th colspan="2">Average</th>
                    <th rowspan="2">Red Eyes</th>
                </tr>
                <tr>
                    <th>Height</th>
                    <th>Weight</th>
                </tr>
                <tr>
                    <td>Males</td>
                    <td>1.9</td>
                    <td>0.003</td>
                    <td>40%</td>
                </tr>
                <tr>
                    <td>Females</td>
                    <td>1.7</td>
                    <td>0.002</td>
                    <td>43%</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
