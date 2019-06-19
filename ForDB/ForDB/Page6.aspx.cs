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
using System.IO;

namespace ForDB
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string all;
        string[] massAll;
        static string DB = "Data Source=DESKTOP-COE6723; Initial Catalog=Airport; Integrated Security=true;";
        protected void Page_Load(object sender, EventArgs e)
        {
            all = Request.QueryString["Type"];
            massAll = all.Split('?');
            ForType.Text = massAll[0];
            ForFlightNumber.Text = massAll[1].Split('=')[1];
            ForPassNumb.Text = massAll[2].Split('=')[1];
            ForFirstName.Text = massAll[3].Split('=')[1];
            ForLastName.Text = massAll[4].Split('=')[1];
            ForSex.Text = massAll[5].Split('=')[1];
            ForBirthDate.Text = massAll[6].Split('=')[1];
            ForPassPartNumb.Text = massAll[7].Split('=')[1];
        }
        protected void Butt1_OnClick(object sender, EventArgs e)
        {
            using (SqlConnection sqlConn = new SqlConnection(DB))
            {
                sqlConn.Open();
                string selPassNumbQ = $"SELECT * FROM Passenger1 WHERE PassportNumber = '{ForPassNumb.Text}'";
                SqlCommand selPassNumbComm = new SqlCommand(selPassNumbQ, sqlConn);
                SqlDataReader selPassNumbRead = selPassNumbComm.ExecuteReader();
                selPassNumbRead.Read();
                try
                {
                    string passNumb = selPassNumbRead[0].ToString();
                }
                catch(Exception)
                {
                    selPassNumbRead.Close();
                    string addToPass1Q = $"INSERT INTO Passenger1 (PassportNumber, FirstName, LastName, Sex, BirthDate, PassportNumbPartner)" +
                        $"VALUES ('{ForPassNumb.Text}', '{ForFirstName.Text}', '{ForLastName.Text}', '{ForSex.Text}', " +
                        $"'{ForBirthDate.Text}', '{ForPassPartNumb.Text}')";
                    SqlCommand addToPass1Comm = new SqlCommand(addToPass1Q, sqlConn);
                    addToPass1Comm.ExecuteNonQuery();
                }
                selPassNumbRead.Close();
                string selFrInterTabQ = $"SELECT * FROM IntermediateTable WHERE FlightNumb = '{ForFlightNumber.Text}' AND PassportNumb = '{ForPassNumb.Text}'";
                SqlCommand selFrInterTabComm = new SqlCommand(selFrInterTabQ, sqlConn);
                SqlDataReader selFrInterTabRead = selFrInterTabComm.ExecuteReader();
                selFrInterTabRead.Read();
                try
                {
                    string all = selFrInterTabRead[0].ToString();
                }
                catch(Exception)
                {
                    selFrInterTabRead.Close();
                    string addToIntTabQ = $"INSERT INTO IntermediateTable (FlightNumb, PassportNumb) VALUES ('{ForFlightNumber.Text}', '{ForPassNumb.Text}')";
                    SqlCommand addToIntTabComm = new SqlCommand(addToIntTabQ, sqlConn);
                    addToIntTabComm.ExecuteNonQuery();
                }
            }
            if (FileName.Text != null && FileName.Text != "")
            {
                string path = @"D:\Univer" + ForFileName.Text + ".doc";
                using (StreamWriter strWr = new StreamWriter(path, false, System.Text.Encoding.Default))
                {
                    strWr.Write(LType.Text + ForType.Text + "\n");
                    strWr.Write(LFlightNumb.Text + ForFlightNumber.Text + "\n");
                    strWr.Write(LPassNumb.Text + ForPassNumb.Text + "\n");
                    strWr.Write(LFirstName.Text + ForFirstName.Text + "\n");
                    strWr.Write(LLastName.Text + ForLastName.Text + "\n");
                    strWr.Write(LSex.Text + ForSex.Text + "\n");
                    strWr.Write(LBirthDate.Text + ForBirthDate.Text + "\n");
                    strWr.Write(LPassPartNumb.Text + ForPassPartNumb.Text + "\n");
                }
                Mess.Visible = true;
            }
        }
        protected void Butt2_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Page1.aspx");
        }
    }
}