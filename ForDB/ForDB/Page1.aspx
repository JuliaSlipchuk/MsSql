<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="ForDB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DEFAULT</title>
	<meta charset="UTF-8" />
	<style>
        body 
        {
            background-color: pink;
        }
        .block
        {
            margin: 5% 10% 20% 20%;
            max-width: 50%;
            padding: 30px 30px 6px 30px;
            border: 1px solid rgba(0,0,0,.2);
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            -moz-background-clip: padding;
            -webkit-background-clip: padding-box;
            background-clip: padding-box;
            background: rgba(0, 0, 0, 0.5); 
            -moz-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
            -webkit-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
            box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
            overflow: hidden; 
        }
        #Login, #Password
        {
            font-weight: 700;
            font-style: oblique;
        }
        #ForLogin, #ForPassword
        {
            background: rgba(255, 255, 255, 0.4); 
            width: 60%;
            height: 50px;
            margin: 2% 10% 5% 10%;
            border: 1px solid rgba(255,255,255,.6);
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            -moz-background-clip: padding;
            -webkit-background-clip: padding-box;
            background-clip: padding-box; 
            display:block;
            font-family: 'Open Sans', sans-serif;
            font-size:18px;
            font-weight: 80;
            color:#fff;
            padding-left:25px;
            padding-right:20px;
            padding-top:12px;
            margin-bottom:20px;
            overflow:hidden;
        }
        #Submit
        {
            margin: 5% 30% 5% 40%;
            border: 2px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="block">
            <asp:Label ID="Login" runat="server" Text="For login: " Font-Size="XX-Large"></asp:Label>
            <asp:TextBox ID="ForLogin" runat="server" Font-Size="XX-Large"></asp:TextBox> <br />
            <asp:Label ID="Password" runat="server" Text="For password: " Font-Size="XX-Large"></asp:Label>
            <asp:TextBox ID="ForPassword" runat="server" TextMode="Password" Font-Size="XX-Large"></asp:TextBox> <br />
            <asp:Button ID="Submit" runat="server" Text="SUBMIT" Font-Size="XX-Large" OnClick="Butt_OnClick"></asp:Button>
        </div>
    </form>
</body>
</html>
