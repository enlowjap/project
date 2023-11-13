using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADMIN_PANEL
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void login_Click(object sender, EventArgs e)
        {
            if (username.Text == "" && password.Text == "")
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Username or Password')", true);
            }
        }
    }
}