<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page6.aspx.cs" Inherits="ForDB.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your ticket</title>
    <style>
        .Ticket
        {
            margin: 5% 10% 5% 15%;
            max-width: 60%;
            padding: 30px 30px 6px 30px;
            border: 1px solid #77BCF3;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            -moz-background-clip: padding;
            -webkit-background-clip: padding-box;
            background-clip: padding-box;
            background: rgba(159, 158, 158, 0.5); 
            -moz-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
            -webkit-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
            box-shadow: 0 0 13px 3px rgba(0,0,0,.5);
            overflow: hidden; 
        }
        .Lables
        {
            margin-left: 20%;
        }
        #Submit, #Exit
        {
            font-size: x-large;
            border: 2px solid black;
            margin: 2% 5% 2% 5%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Ticket">
            <asp:Label ID="LType" runat="server" Text="Flight Type: " Font-Size="Large"></asp:Label>
            <asp:Label ID="ForType" style="margin-left:9%;" runat="server" Font-Size="Large"></asp:Label> <br />
            <asp:Label ID="LFlightNumb" runat="server" Text="Flight Number: " Font-Size="Large"></asp:Label>
            <asp:Label ID="ForFlightNumber" style="margin-left: 12%; text-decoration: underline;" runat="server" Font-Size="Large"></asp:Label> <br />
            <div class="Data">
                <asp:Label ID="LPassNumb" runat="server" Text="Passport Number: " Font-Size="Large"></asp:Label>
                <asp:Label ID="ForPassNumb" style="margin-left: 10%; text-decoration: underline;" runat="server" Font-Size="Large"></asp:Label> <br />
                <asp:Label ID="LFirstName" runat="server" Text="First Name: " Font-Size="Large"></asp:Label>
                <asp:Label ID="ForFirstName" style="margin-left: 15%; text-decoration: underline;" runat="server" Font-Size="Large"></asp:Label> <br />
                <asp:Label ID="LLastName" runat="server" Text="Last Name: " Font-Size="Large"></asp:Label>
                <asp:Label ID="ForLastName" style="margin-left: 15%; text-decoration: underline;" runat="server" Font-Size="Large"></asp:Label> <br />
                <asp:Label ID="LSex" runat="server" Text="Sex: " Font-Size="Large"></asp:Label>
                <asp:Label ID="ForSex" runat="server" style="margin-left: 20.5%; text-decoration: underline;" Font-Size="Large"></asp:Label> <br />
                <asp:Label ID="LBirthDate" runat="server" Text="Birth Date: " Font-Size="Large"></asp:Label>
                <asp:Label ID="ForBirthDate" runat="server" style="margin-left: 15%; text-decoration: underline;" Font-Size="Large"></asp:Label> <br />
                <asp:Label ID="LPassPartNumb" runat="server" Text="Passport Number Partner: " Font-Size="Large"></asp:Label>
                <asp:Label ID="ForPassPartNumb" runat="server" style="margin-left: 3.3%; text-decoration: underline;" Font-Size="Large"></asp:Label> <br />
            </div>
            <asp:Label ID="FileName" runat="server" Text="Please, enter fileName: " style="font-size: 22px; font-style: oblique;"></asp:Label>
            <asp:TextBox ID="ForFileName" runat="server" Font-Size="Large"></asp:TextBox> <br />
            <asp:Label ID="Mess" runat="server" Text="The file, which you entered, was saved" Visible="false"></asp:Label> <br />
            <asp:Button ID="Submit" runat="server" Text="Ok" Font-Size="Large" OnClick="Butt1_OnClick"></asp:Button>
            <asp:Button ID="Exit" runat="server" Text="Exit" Font-Size="Large" OnClick="Butt2_OnClick"></asp:Button>
        </div>
    </form>
</body>
</html>
