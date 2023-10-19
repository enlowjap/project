using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOPE_enroll_System
{
    public partial class mainloginpg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            confirmButton.ServerClick += ConfirmButton_Click;
        }

        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            // Handle the button click event here
            // Redirect to the other page
            Response.Redirect("DashHome.aspx");
        }


    }

}
}