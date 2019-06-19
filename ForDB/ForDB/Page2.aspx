<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="ForDB.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN</title>
    <style>
        #Airoport, #Partition, #Boss, #Pilot, #Plane, #Flight, #FreightFlight, #CharterFlight, #PassengersFlight, #Passenger1
        {
            display: block;
            margin: 2% 5% 2% 20%;
            border: none;
            color: indigo;
            background-color: azure;
            font-size: large;
            max-width: fit-content;
        }
        .Label
        {
            font-size: 25px;
            font-weight: 800;
            font-style: oblique;
            margin: 2% 5% 2% 20%;
        }
        .block
        {
            margin: 5% 10% 5% 20%;
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
        #SubSelect, #SubInsert
        {
            border: 2px solid black;
            margin-left: 45%;
            margin-bottom: 2%;
        }
        #ForInsert, #ForSelect
        {
            margin: 2% 2% 1% 2%;
            width: 95%;
            overflow: scroll;
        }
        #TablSelect
        {
            font-size: large;
            border: 1px solid black;
            color: white;
            background-color: lightslategray;
            margin: 2% 5% 2% 20%;
        }
        #Exit
        {
            margin: 2% 2% 2% 47%;
            border: 2px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="tables">
                <asp:Label CssClass="Label" runat="server">Airoports :</asp:Label>
                <asp:DataGrid ID="Airoport" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">Partitions :</asp:Label>
                <asp:DataGrid ID="Partition" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">Bosses :</asp:Label>
                <asp:DataGrid ID="Boss" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">Pilots :</asp:Label>
                <asp:DataGrid ID="Pilot" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">Planes :</asp:Label>
                <asp:DataGrid ID="Plane" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">Flights :</asp:Label>
                <asp:DataGrid ID="Flight" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">FreightFlights :</asp:Label>
                <asp:DataGrid ID="FreightFlight" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">CharterFlights :</asp:Label>
                <asp:DataGrid ID="CharterFlight" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">PassengersFlights :</asp:Label>
                <asp:DataGrid ID="PassengersFlight" runat="server"></asp:DataGrid>
                <asp:Label CssClass="Label" runat="server">Passengers :</asp:Label>
                <asp:DataGrid ID="Passenger1" runat="server"></asp:DataGrid>
            </div>
            <div class="block">
                <asp:Label ID="Select" runat="server" Text="For select: " Font-Size="X-Large"></asp:Label>
                <asp:TextBox ID="ForSelect" runat="server" Font-Size="X-Large"></asp:TextBox>
                <asp:Button ID="SubSelect" runat="server" Text="Select" Font-Size="X-Large" OnClick="Butt1_OnClick"></asp:Button> <br />
                <asp:DataGrid ID="TablSelect" runat="server" Font-Size="Medium"></asp:DataGrid> <br />
                <asp:Label ID="Insert" runat="server" Text="For insert or update or delete: " Font-Size="X-Large"></asp:Label>
                <asp:TextBox ID="ForInsert" runat="server" Font-Size="X-Large"></asp:TextBox> 
                <asp:Button ID="SubInsert" runat="server" Text="InUpDel" Font-Size="X-Large" OnClick="Butt2_OnClick"></asp:Button> <br />
                <asp:Label ID="Affected" runat="server" Font-Size="X-Large"></asp:Label> <br />
                <asp:Label ID="Mess" runat="server" Text="You are failed!" Visible="false" ForeColor="Red" Font-Size="X-Large"></asp:Label>
                <asp:Button ID="Exit" runat="server" Text="Exit" Font-Size="X-Large" OnClick="Butt3_OnClick"></asp:Button>
            </div>
        </div>
    </form>
</body>
</html>
