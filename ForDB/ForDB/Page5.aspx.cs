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
using System.Text.RegularExpressions;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Threading.Tasks;

namespace ForDB
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public static bool perevir = false;
        string all;
        string[] massAll;
        string type, passNumb, fName, lName, sex, birDat, passNumbPart;
        string regFlNumb = @"^\d{6}$";
        string regEmail = @"^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                all = Request.QueryString["Type"];
                massAll = all.Split('?');
                type = massAll[0];
                passNumb = massAll[1].Split('=')[1];
                fName = massAll[2].Split('=')[1];
                lName = massAll[3].Split('=')[1];
                sex = massAll[4].Split('=')[1];
                birDat = massAll[5].Split('=')[1];
                passNumbPart = massAll[6].Split('=')[1];
                ForPasspNumb.Text = passNumb; ForFirstName.Text = fName; ForLastName.Text = lName;
                ForSex.Text = sex; ForBirthDate.Text = birDat; ForPassportNumbPartner.Text = passNumbPart;
                AirportEntities airport = new AirportEntities();
                if (type == "Chart")
                {
                    Flights.DataSource = (from CharterFlight in airport.CharterFlight select CharterFlight).ToList();
                }
                else
                {
                    Flights.DataSource = (from PassengersFlight in airport.PassengersFlight select PassengersFlight).ToList();
                }
                Flights.DataBind();
            }
        }
        protected void Butt1_OnClick(object sender, EventArgs e)
        {
            bool check = false;
            int countRows = Flights.Items.Count;
            if (ForFlight.Text != null && ForFlight.Text != "" && Regex.IsMatch(ForFlight.Text, regFlNumb))
            {
                for (int i = 0; i < countRows; i++)
                {
                    if (Flights.Items[i].Cells[0].Text == ForFlight.Text && Regex.IsMatch(ForEmail.Text, regEmail))
                    {
                        if (!perevir)
                        {
                            SendEmail();
                        }
                        ForCode.Enabled = true;
                        Subm2.Enabled = true;
                        check = true;
                        break;
                    }
                }
                if (!check)
                {
                    System.Threading.Thread.Sleep(2000);
                    Warn.Visible = true;
                }
            }
            else
            {
                System.Threading.Thread.Sleep(2000);
                Warn.Visible = true;
            }
        }
        static string code;
        protected void Butt2_OnClick(object sender, EventArgs e)
        {
            if (ForCode.Text == code)
            {
                Response.Redirect($"Page6.aspx?Type={type}?FlightNumb={ForFlight.Text}?PassportNumb={ForPasspNumb.Text}?FirstName={ForFirstName.Text}?" +
                    $"LastName={LastName.Text}?Sex={ForSex.Text}?BirthDate={ForBirthDate.Text}?" +
                    $"PassportNumbPartner={ForPassportNumbPartner.Text}");
            }
            else
            {
                System.Threading.Thread.Sleep(2000);
                Warn.Visible = true;
            }
        }
        protected void Butt3_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Page1.aspx");
        }
        MailMessage message;
        public void SendEmail()
        {
            MailAddress from = new MailAddress("julia2015olex@gmail.com", "July");
            MailAddress to = new MailAddress(ForEmail.Text);
            message = new MailMessage(from, to);
            message.Subject = "Flight Ticket";
            message.Body = "";
            Random rand = new Random();
            for (int i = 0; i < 8; i++)
            {
                message.Body += rand.Next(0, 9);
                System.Threading.Thread.Sleep(10);
            }
            code = message.Body;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential("julia2015olex@gmail.com", "grandrvua");
            smtp.EnableSsl = true;
            smtp.Send(message);
            perevir = true;
        }
    }
}