<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page5.aspx.cs" Inherits="ForDB.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check and select email & flightNumb</title>
    <style>
        .block
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
            font-size: 20px;
            font-weight: 700;
            font-style: oblique;
            margin: 2% 5% 2% 5%;
        }
        #Flights
        {
            margin: 0% 2% 2% 25%;
            font-size: 20px;
            border: 1px solid black;
            background-color: silver;
        }
        #ForPasspNumb, #ForFirstName, #ForLastName, #ForSex, #ForBirthDate, #ForPassportNumbPartner
        {
            background: rgba(255, 255, 255, 0.4); 
            width: 60%;
            height: 20px;
            margin: 2% 5% 0% 10%;
            border: 1px solid rgba(255,255,255,.6);
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            -moz-background-clip: padding;
            -webkit-background-clip: padding-box;
            background-clip: padding-box; 
            display:block;
            font-family: 'Open Sans', sans-serif;
            font-size:120%;
            text-align: center;
            padding-left:10px;
            padding-right:10px;
            padding-top:10px;
            padding-bottom:10px;
            overflow:hidden;
        }
        #Mess1, #Mess2
        {
            font-size: 25px; 
            font-style: oblique; 
            font-weight: 700;
        }
        #Flight, #Email, #LCode
        {
            font-size: 20px;
            font-weight: 700;
            font-style: oblique;
            margin: 5% 5% 2% 5%;
        }
        #ForFlight, #ForEmail, #ForCode
        {
            border: 1px solid black;
        }
        #ForEmail
        {
            margin-left: 8.2%;
        }
        #Subm1, #Exit
        {
            font-size: x-large;
            border: 2px solid black;
            margin: 2% 5% 2% 35%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Mess1" runat="server" style="margin: 3% 5% 5% 10%;">Please, check your data</asp:Label>
            <div class="block">
                <asp:Label ID="PasspNumb" CssClass="Lables" runat="server" Text="Passport Number: " Font-Size="Large"></asp:Label>
                <asp:TextBox ID="ForPasspNumb" runat="server" Font-Size="Large" Enabled="false"></asp:TextBox> <br />
                <asp:Label ID="FirstName" CssClass="Lables" runat="server" Text="First Name: " Font-Size="Large"></asp:Label>
                <asp:TextBox ID="ForFirstName" runat="server" Font-Size="Large" Enabled="false"></asp:TextBox> <br />
                <asp:Label ID="LastName" CssClass="Lables" runat="server" Text="Last Name: " Font-Size="Large"></asp:Label>
                <asp:TextBox ID="ForLastName" runat="server" Font-Size="Large" Enabled="false"></asp:TextBox> <br />
                <asp:Label ID="LSex" CssClass="Lables" runat="server" Text="Sex: " Font-Size="Large"></asp:Label>
                <asp:TextBox ID="ForSex" runat="server" Font-Size="Large" Enabled="false"></asp:TextBox> <br />
                <asp:Label ID="BirthDate" CssClass="Lables" runat="server" Text="BirthDate: " Font-Size="Large"></asp:Label>
                <asp:TextBox ID="ForBirthDate" runat="server" Font-Size="Large" Enabled="false"></asp:TextBox> <br />
                <asp:Label ID="PassportNumbPartner" CssClass="Lables" runat="server" Text="PassportNumbPartner: " Font-Size="Large"></asp:Label>
                <asp:TextBox ID="ForPassportNumbPartner" runat="server" Font-Size="Large" Enabled="false"></asp:TextBox> <br />
            </div>
            <asp:DataGrid ID="Flights" runat="server"></asp:DataGrid> <br />
            <asp:Label ID="Mess2" runat="server" style="margin: 3% 5% 5% 10%;" Text="Please, select your flight and enter your email"></asp:Label> <br />
            <div class="block">
                <asp:Label ID="Flight" runat="server" Text="For Flight Number: "></asp:Label>
                <asp:TextBox ID="ForFlight" runat="server" Font-Size="Large"></asp:TextBox> <br />
                <asp:Label ID="Email" runat="server" Text="For Email: "></asp:Label>
                <asp:TextBox ID="ForEmail" runat="server" Font-Size="Large"></asp:TextBox> <br />
                <asp:Button ID="Subm1" runat="server" Text="Submit1" Font-Size="Large" OnClick="Butt1_OnClick"></asp:Button> <br />
                <asp:Label ID="LCode" runat="server" Text="Enter your code from the email: " Font-Size="Large"></asp:Label>
                <asp:TextBox ID="ForCode" runat="server" Font-Size="Large" Enabled="false"></asp:TextBox>
                <asp:Button ID="Subm2" runat="server" Text="Submit2" Font-Size="Large" OnClick="Butt2_OnClick" Enabled="false"></asp:Button> <br />
                <asp:Button ID="Exit" runat="server" Text="Exit" Font-Size="Large" OnClick="Butt3_OnClick"></asp:Button>
                <asp:Label ID="Warn" runat="server" Text="You are failed!" Font-Size="Large" Visible="false" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>