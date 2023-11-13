using System;
using System.Net;
using System.Net.Mail;

namespace HOPE_enroll_System
{
    public partial class mainloginpg : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Generate a random verification code (you need to implement this)
            string verificationCode = GenerateRandomCode();

            // Store the verification code in a secure way (e.g., database)
            // ...

            // Send the verification code to the user's email
            SendVerificationEmail(txtEmail.Text, verificationCode);

            // Redirect to the verification page
            Response.Redirect("Verification.aspx");
        }

        private void SendVerificationEmail(string recipientEmail, string verificationCode)
        {
            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress("yourEmail@gmail.com"); // Sender's email address
                mail.To.Add(recipientEmail);
                mail.Subject = "Verification Code for HOPE Enrollment System";
                mail.Body = $"Your verification code is: {verificationCode}";

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com"))
                {
                    smtp.Port = 587;
                    smtp.Credentials = new NetworkCredential("yourEmail@gmail.com", "yourEmailPassword"); // Sender's email credentials
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }

        }
        private string GenerateRandomCode()
        {
            // Define the characters from which the random code will be generated
            string characters = "0123456789";
            int length = 6; // Set the desired length of the verification code

            // Generate a random verification code
            Random random = new Random();
            char[] code = new char[length];
            for (int i = 0; i < length; i++)
            {
                code[i] = characters[random.Next(characters.Length)];
            }

            // Convert the char array to a string and return the verification code
            return new string(code);
        }



    }
}
