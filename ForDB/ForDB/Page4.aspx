<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="ForDB.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FORM</title>
    <style>
        .block
        {
            margin: 5% 10% 5% 10%;
            max-width: 90%;
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
        .Lables
        {
            font-size: 20px;
            font-weight: 700;
            font-style: oblique;
            margin: 2% 5% 2% 5%;
        }
        #Subm, #Exit
        {
            font-size: x-large;
            border: 2px solid black;
            margin: 2% 5% 2% 45%;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="what" runat="server" Text="Please, enter you personal data)" style="font-size: 25px; padding: 3% 5% 3% 20%; font-style: oblique; font-weight: 700;"></asp:Label> <br />
        <div class="block">
            <asp:Label ID="PasspNumb" CssClass="Lables" runat="server" Text="Passport Number: " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="ForPasspNumb" runat="server" Font-Size="Large"></asp:TextBox> <br />
            <asp:Label ID="FirstName" CssClass="Lables" runat="server" Text="First Name: " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="ForFirstName" runat="server" Font-Size="Large"></asp:TextBox> <br />
            <asp:Label ID="LastName" CssClass="Lables" runat="server" Text="Last Name: " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="ForLastName" runat="server" Font-Size="Large"></asp:TextBox> <br />
            <asp:Label ID="Sex" CssClass="Lables" runat="server" Text="Sex: " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="ForSex" runat="server" Font-Size="Large"></asp:TextBox> <br />
            <asp:Label ID="BirthDate" CssClass="Lables" runat="server" Text="BirthDate: " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="ForBirthDate" runat="server" Font-Size="Large"></asp:TextBox> <br />
            <asp:Label ID="PassportNumbPartner" CssClass="Lables" runat="server" Text="PassportNumbPartner (can use NULL): " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="ForPassportNumbPartner" runat="server" Font-Size="Large"></asp:TextBox> <br />
            <asp:RadioButton ID="Chartern" runat="server" GroupName="Select" Text="CharterFlight" style="font-size:20px; font-weight: 700; font-style: oblique; margin: 2% 5% 5% 5%;"></asp:RadioButton> <br />
            <asp:RadioButton ID="Passeng" runat="server" GroupName="Select" Text="PassengersFlight" style="font-size:20px; font-weight: 700; font-style: oblique; margin: 2% 5% 5% 5%;"></asp:RadioButton> <br />
            <asp:Button ID="Subm" runat="server" Text="Submit" OnClick="Butt1_OnClick"></asp:Button>
            <asp:Button ID="Exit" runat="server" Text="Exit" OnClick="Butt2_OnClick"></asp:Button>
            <asp:Label ID="Mess" runat="server" Text="You are failed!" Font-Size="Large" Visible="false" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
