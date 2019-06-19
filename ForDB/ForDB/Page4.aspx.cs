using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace ForDB
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Butt1_OnClick(object sender, EventArgs e)
        {
            string regPassp = @"^\d{5,}$";
            string regFLName = @"^\w{2,}$";
            string regSex = @"^[M|F]$";
            string regBirDat = @"^[1|2][0|9][0-9][0-9]-[0|1][1-9]-[0|1|2|3][0-9]$";
            if (Regex.IsMatch(ForPasspNumb.Text, regPassp) && Regex.IsMatch(ForFirstName.Text, regFLName) && 
                Regex.IsMatch(ForLastName.Text, regFLName) && Regex.IsMatch(ForSex.Text, regSex) &&
                Regex.IsMatch(ForBirthDate.Text, regBirDat) && (Regex.IsMatch(ForPassportNumbPartner.Text, regPassp) || 
                ForPassportNumbPartner.Text == "NULL"))
            {
                if (Chartern.Checked)
                {
                    Response.Redirect($"Page5.aspx?Type=Chart?PassportNumb={ForPasspNumb.Text}?FirstName={ForFirstName.Text}?" +
                    $"LastName={ForLastName.Text}?Sex={ForSex.Text}?BirthDate={ForBirthDate.Text}?PassportNumbPartner={ForPassportNumbPartner.Text}");
                }
                Response.Redirect($"Page5.aspx?Type=Passeng?PassportNumb={ForPasspNumb.Text}?FirstName={ForFirstName.Text}?" +
                    $"LastName={ForLastName.Text}?Sex={ForSex.Text}?BirthDate={ForBirthDate.Text}?PassportNumbPartner={ForPassportNumbPartner.Text}");
            }
            else
            {
                System.Threading.Thread.Sleep(2000);
                Mess.Visible = true;
            }
        }
        protected void Butt2_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Page1.aspx");
        }
    }
}