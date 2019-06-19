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
    public partial class WebForm2 : System.Web.UI.Page
    {
        static string DB = "Data Source=DESKTOP-COE6723; Initial Catalog=Airport; Integrated Security=true;";
        protected void Page_Load(object sender, EventArgs e)
        {
            AirportEntities airport = new AirportEntities();
            Airoport.DataSource = (from Airoport in airport.Airoport select Airoport).ToList();
            Airoport.DataBind();
            Partition.DataSource = (from Partition in airport.Partition select Partition).ToList();
            Partition.DataBind();
            Boss.DataSource = (from Boss in airport.Boss select Boss).ToList();
            Boss.DataBind();
            Pilot.DataSource = (from Pilot in airport.Pilot select Pilot).ToList();
            Pilot.DataBind();
            Plane.DataSource = (from Plane in airport.Plane select Plane).ToList();
            Plane.DataBind();
            Flight.DataSource = (from Flight in airport.Flight select Flight).ToList();
            Flight.DataBind();
            FreightFlight.DataSource = (from FreightFlight in airport.FreightFlight select FreightFlight).ToList();
            FreightFlight.DataBind();
            CharterFlight.DataSource = (from CharterFlight in airport.CharterFlight select CharterFlight).ToList();
            CharterFlight.DataBind();
            PassengersFlight.DataSource = (from PassengersFlight in airport.PassengersFlight select PassengersFlight).ToList();
            PassengersFlight.DataBind();
            Passenger1.DataSource = (from Passenger1 in airport.Passenger1 select Passenger1).ToList();
            Passenger1.DataBind();
        }
        protected void Butt1_OnClick(object sender, EventArgs e)
        {
            if (ForSelect.Text != null && ForSelect.Text != "")
            {
                string query = ForSelect.Text;
                using (SqlConnection sqlConn = new SqlConnection(DB))
                {
                    SqlDataAdapter sqlDatAdapt = new SqlDataAdapter(query, sqlConn);
                    DataSet ds = new DataSet();
                    sqlDatAdapt.Fill(ds);
                    TablSelect.DataSource = ds;
                    TablSelect.DataBind();
                }
            }
            else
            {
                System.Threading.Thread.Sleep(2000);
                SubSelect.BackColor = System.Drawing.Color.Red;
            }
        }
        protected void Butt2_OnClick(object sender, EventArgs e)
        {
            if (ForInsert.Text != null && ForInsert.Text != "")
            {
                string query = ForInsert.Text;
                using (SqlConnection sqlConn = new SqlConnection(DB))
                {
                    sqlConn.Open();
                    SqlCommand sqlComm = new SqlCommand(query, sqlConn);
                    try
                    {
                        sqlComm.ExecuteNonQuery();
                        Affected.Text = "Operation completed successfully";
                    }
                    catch (Exception)
                    {
                        System.Threading.Thread.Sleep(2000);
                        Mess.Visible = true;
                    }
                }
            }
            else
            {
                System.Threading.Thread.Sleep(2000);
                SubInsert.BackColor = System.Drawing.Color.Red;
            }
        }
        protected void Butt3_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Page1.aspx");
        }
    }
}