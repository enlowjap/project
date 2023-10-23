﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HOPE_enroll_System
{
    public partial class mainloginpg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=JAPHET;Initial Catalog=proj_HOPE;Integrated Security=True";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    // Check if the email already exists in the database
                    string checkEmailQuery = "SELECT COUNT(*) FROM STUDENT WHERE EMAIL_ADD = @EMAIL_ADD";
                    using (SqlCommand checkEmailCmd = new SqlCommand(checkEmailQuery, connection))
                    {
                        connection.Open();
                        checkEmailCmd.Parameters.AddWithValue("@EMAIL_ADD", txtEmail.Text);
                        int emailCount = (int)checkEmailCmd.ExecuteScalar();
                        connection.Close();
                        if (emailCount > 0)
                        {
                            // Email already exists, show an error message
                            ShowErrorMessage("Email already exists in the database.");
                        }
                        else
                        {

                            string insertQuery = "INSERT INTO STUDENT (L_NAME, F_NAME, M_NAME, SUFFIX, LRN, EMAIL_ADD, PASSWORD, GENDER) VALUES (@L_NAME, @F_NAME, @M_NAME, @SUFFIX, @LRN, @EMAIL_ADD, @PASSWORD, @GENDER)";

                            using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                            {
                                connection.Open();

                                // Set parameters from the input fields
                                cmd.Parameters.AddWithValue("@L_NAME", txtLastN.Text);
                                cmd.Parameters.AddWithValue("@F_NAME", txtFirstN.Text);
                                cmd.Parameters.AddWithValue("@M_NAME", txtMiddleN.Text);
                                cmd.Parameters.AddWithValue("@SUFFIX", txtSuffix.Text);
                                cmd.Parameters.AddWithValue("@EMAIL_ADD", txtEmail.Text);

                                // Hash the password
                                string hashedPassword = HashPassword(txtPassword.Text);
                                cmd.Parameters.AddWithValue("@PASSWORD", hashedPassword);

                                cmd.Parameters.AddWithValue("@GENDER", DropDownList1.SelectedValue);

                                int rowsAffected = cmd.ExecuteNonQuery();
                                connection.Close();
                                if (rowsAffected > 0)
                                {
                                    // Insertion successful


                                    Response.Redirect("Verification.aspx");

                                }
                                else
                                {
                                    // Insertion failed
                                    // Handle the failure, show an error message, log it, etc.
                                    Response.Redirect("mainloginpg.aspx");
                                    ShowErrorMessage("Failed to insert data into the database.");

                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                ShowErrorMessage("An error occurred: " + ex.Message);
                Response.Redirect("mainloginpg.aspx");
            }
        }

        private void ShowErrorMessage(string message)
        {
            // Set the error message in an error label
            errorLabel.Text = message;


            errorLabel.ForeColor = System.Drawing.Color.Red;
            errorLabel.Visible = true;
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();

                foreach (byte b in hashedBytes)
                {
                    builder.Append(b.ToString("x2"));
                }

                return builder.ToString();
            }
        }
    }

}