using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;

namespace ForDB
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        AirportEntities airport = new AirportEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            DatGrChart.DataSource = (from CharterFlight in airport.CharterFlight select CharterFlight).ToList();
            DatGrChart.DataBind();
            DatGrPasseng.DataSource = (from PassengersFlight in airport.PassengersFlight select PassengersFlight).ToList();
            DatGrPasseng.DataBind();
        }
        protected void Butt_OnClick(object sender, EventArgs e)
        {
            if (ForPassport.Text != null && ForPassport.Text != "")
            {
                Passenger1 passeng = (from Passenger1 in airport.Passenger1.Include("PassengersFlight")
                                      where Passenger1.PassportNumber == ForPassport.Text select Passenger1).First();
                DatGr.DataSource = (from flight in passeng.PassengersFlight select
                                    new
                                    {
                                        passeng.FirstName,
                                        passeng.LastName,
                                        passeng.PassportNumber,
                                        passeng.Sex,
                                        flight.FlightNumb
                                    }).ToList();
                DatGr.DataBind();
            }
            else
            {
                System.Threading.Thread.Sleep(2000);
                Subm.BackColor = System.Drawing.Color.Red;
            }
        }
        protected void Butt1_OnClick(object sender, EventArgs e)
        {
            Response.Redirect($"Page4.aspx?PassNumb={ForPassport.Text}");
        }
        protected void Butt2_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Page1.aspx");
        }
    }
}