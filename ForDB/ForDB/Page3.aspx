<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="ForDB.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        #ForPassport
        {
            margin-left: 4%;
        }
        #Subm
        {
            margin: 2%;
            border: 2px solid black;
        }
        #DatGr, #DatGrChart, #DatGrPasseng
        {
            margin: 2% 2% 2% 25%;
            font-size: 20px;
            border: 1px solid black;
            background-color: lightgoldenrodyellow;
        }
        #DatGrChart, #DatGrPasseng
        {
            background-color: silver;
        }
        #Add, #Exit
        {
            border: 2px solid black;
            margin: 0% 2% 2% 45%;
        }
        #Passport
        {
            font-weight: 700;
            font-style: oblique;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="block">
            <asp:Label ID="Passport" runat="server" Text="For PassportNumber: " Font-Size="X-Large"></asp:Label>
            <asp:TextBox ID="ForPassport" runat="server" Font-Size="X-Large"></asp:TextBox>
            <asp:Button ID="Subm" runat="server" Text="Submit" Font-Size="X-Large" OnClick="Butt_OnClick"></asp:Button> <br />
            <asp:DataGrid ID="DatGr" runat="server" Font-Size="Large"></asp:DataGrid> <br />
            <div class="grids">
                <asp:DataGrid ID="DatGrChart" runat="server"></asp:DataGrid>
                <asp:DataGrid ID="DatGrPasseng" runat="server"></asp:DataGrid>
            </div>
            <asp:Button ID="Add" runat="server" Font-Size="X-Large" Text="Add" OnClick="Butt1_OnClick"></asp:Button>
            <asp:Button ID="Exit" runat="server" Font-Size="X-Large" Text="Exit" OnClick="Butt2_OnClick"></asp:Button>
        </div>
    </form>
</body>
</html>
