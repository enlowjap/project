using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOPE_enroll_System
{
    public partial class Verification : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve the entered verification code from the user input
            string enteredCode = GetEnteredVerificationCode();

            // Retrieve the stored verification code from the database based on the user's email
            string storedCode = RetrieveStoredVerificationCode(txtEmail.Text);

            // Compare the entered code with the stored code
            if (enteredCode == storedCode)
            {
                // Verification successful, redirect to the next page
                Response.Redirect("NextPage.aspx");
            }
            else
            {
                // Verification failed, show an error message to the user
                errorLabel.Text = "Invalid verification code. Please try again.";
            }
        }

        private string GetEnteredVerificationCode()
        {
            // Implement logic to retrieve the entered verification code from the TextBoxes
            // For example: return txtCode1.Text + txtCode2.Text + txtCode3.Text + txtCode4.Text + txtCode5.Text + txtCode6.Text;
        }

        private string RetrieveStoredVerificationCode(string userEmail)
        {
            // Implement logic to retrieve the stored verification code from the database based on the user's email
            // For example: perform a database query to retrieve the code associated with the userEmail
            // ...
            return "StoredVerificationCode"; // Replace this with the actual retrieved code
        }



    }
}