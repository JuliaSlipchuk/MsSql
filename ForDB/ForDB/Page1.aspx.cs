using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ForDB
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Butt_OnClick(object sender, EventArgs e)
        {
            if (ForLogin.Text == "july@Lorence" && ForPassword.Text == "Originals123#")
            {
                Response.Redirect("Page2.aspx");
            }
            else if (ForLogin.Text == "user@Kek" && ForPassword.Text == "IAmUser")
            {
                Response.Redirect("Page3.aspx");
            }
            else
            {
                System.Threading.Thread.Sleep(2000);
                Submit.BackColor = Color.Red;
            }
        }
    }
}