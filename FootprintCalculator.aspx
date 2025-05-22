<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FootprintCalculator.aspx.cs" Inherits="CarbonFootprintClient.FootprintCalculator" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Carbon Footprint Calculator</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f9;
            margin: 0;
            padding: 40px;
        }

        form {
            max-width: 600px;
            margin: auto;
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        h2, h3 {
            color: #2c3e50;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 10px;
        }

        label {
            display: block;
            margin-top: 15px;
            color: #34495e;
            font-weight: 500;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #3498db;
            outline: none;
        }

        .output {
            margin-top: 30px;
            padding: 20px;
            border: 1px solid #e1e1e1;
            background: #fdfdfd;
            border-left: 6px solid #3498db;
            border-radius: 6px;
        }

        .output h3 {
            margin-top: 0;
            color: #2c3e50;
        }

        .output asp\:Label {
            color: #555;
            font-size: 16px;
        }

        asp\:Button {
            background-color: #3498db;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        asp\:Button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Project Details</h2>
        <label>Project Name:</label>
        <asp:TextBox ID="txtName" runat="server" /><br />
        <label>Location:</label>
        <asp:TextBox ID="txtLocation" runat="server" /><br />
        <label>Duration (days):</label>
        <asp:TextBox ID="txtDuration" runat="server" /><br />
        <label>Scope:</label>
        <asp:TextBox ID="txtScope" runat="server" /><br />

        <h3>Environmental Data</h3>
        <label>Energy (kWh):</label>
        <asp:TextBox ID="txtEnergy" runat="server" /><br />
        <label>Transport Distance (km):</label>
        <asp:TextBox ID="txtDistance" runat="server" /><br />
        <label>Waste (tonnes):</label>
        <asp:TextBox ID="txtWaste" runat="server" /><br />

        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" /><br />

        <div class="output">
            <asp:Label ID="lblResult" runat="server" Font-Bold="false" />
        </div>
    </form>
</body>
</html>