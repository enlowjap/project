using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace HOPE_enroll_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=JAPHET;Initial Catalog=HOPE;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("Insert into Students (LastName,EmailAddress,Passwrd) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'); ", con);
            con.Close();
            Response.Redirect("Verification.aspx");
        }
    }
}