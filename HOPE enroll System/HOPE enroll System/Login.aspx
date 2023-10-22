<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HOPE_enroll_System.Login" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        body{
            margin:0;
            font-family:Arial;
            background:url('Images/Loginpic2.png');
            background-size:cover;
        }

         .welcome-message {
            max-width: 450px;
            margin: 0 auto;
            margin-left: 700px;
            padding: 20px;  
            
}

.welcome-message h2 {
    font-size:70px;
    font-family: 'Franklin Gothic';
    font-weight:bolder;
    color: black;
    text-align: center;
    margin-bottom: 10px;
}

.welcome-message p {
     background: #DFFAF1; 
     border: 2px solid #079565; 
    font-size: 16px;
    color: #555555;
    text-align: center;
    margin-bottom: 20px;
}
         

          .login-form {
            max-width: 450px;
            margin: 0 auto;
            padding: 20px;
            margin-left: 700px;
}

            .login-form input {
    width: 100%;
    margin-bottom: 10px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

            .bttn {
    width: 100%;
    padding: 10px;
    background: #4caf50;
    border: none;
    border-radius: 5px;
    color: #ffffff;
    cursor: pointer;
}
            .login-form label {
             display: block;
             margin-bottom: 10px;
             font-weight: bold;
}
            .bttn:hover {
            background: #45a049;
}

    </style>
  

</head>
<body>
    <form id="form1" runat="server">
         <uc:Header runat="server" ID="Header1" />
        <div class="welcome-message">
        <h2>Login Here</h2>
        <p>Thanks for signing up! Your account has been created.</p>
    </div>
    <div class="login-form">
    <label for="username">Username:</label>

       <asp:TextBox ID="txtUsername" runat="server" CssClass="inputbox" onfocus="clearTextBox(this)">Enter your Username</asp:TextBox>

    <script type="text/javascript">
        function clearTextBox(textBox) {
            if (textBox.value === textBox.defaultValue) {
                textBox.value = '';
            }
        }
    </script>

    
    <label for="password">Password:</label>

    <asp:TextBox ID="txtboxpassword" runat="server" CssClass="inputbox" onfocus="clearTextBox(this)">Enter your Password</asp:TextBox>

    <script type="text/javascript">
        function clearTextBox(textBox) {
            if (textBox.value === textBox.defaultValue) {
                textBox.value = '';
            }
        }
    </script>

    
    <div id="error-message" style="color: red; margin-bottom: 10px;"></div>
    <asp:Button ID="Button1" runat="server" Text="Log In" CssClass="bttn" OnClick="Button1_Click" />
</div>
       <script type="text/javascript">
            document.getElementById("loginButton").addEventListener("click", function () {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var errorMessage = document.getElementById("error-message");

        // Basic form validation
        if (username === "" || password === "") {
            errorMessage.textContent = "Invalid username or password. Please try again!";
        } else {
            // Clear any previous error messages
            errorMessage.textContent = "";

            // Display a confirmation dialog
            var confirmLogin = confirm('Are you sure you want to log in?');

            if (confirmLogin) {
                // User clicked "YES", proceed with login logic here
                // For example, submit the form or perform AJAX request
                alert('Logging in...'); // Display a message indicating logging in
                window.location.href = 'WelcomePage.aspx';
            } else {
                // User clicked "NO", do nothing or provide feedback to the user
                alert('Login canceled.'); // Display a message indicating login was canceled
            }
        }
    });
</script>
    </form>
</body>
</html>
