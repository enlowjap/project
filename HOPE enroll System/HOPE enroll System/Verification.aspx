<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="HOPE_enroll_System.Verification" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            font-family:Arial;
            background:url('Images/verificationpic.png');
            background-size:cover;
        }
          

.verification-container { 
    padding: 40px;
    border-radius: 10px;
    text-align: center;
    
}

h1 {
    font-size: 50px;
    color: #ff0000;
    margin-bottom: 20px;
    margin-top:-10px;
}

p {
    font-size: 16px;
    color: #666;
    padding-top: -8px;
    margin-bottom: 40px;
}

.verification-code {
    display: flex;
    margin-bottom: 40px;
}

.code-input {
    width: 100px;
    height: 100px;
    font-size: 40px;
    text-align: center;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.buttons {
    display: flex;
    gap: 10px; /* This sets the gap between the buttons */
    justify-content: flex-start; /* Align buttons to the right */
}

.back-button,
.verify-button {
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    color: #fff;
    transition: background-color 0.3s ease;
}

.back-button {
    background-color: #ccc;
}

.verify-button {
    background-color: #AD0005;
}

.verify-button:hover {
    background-color: #92d5ff;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
   <div class="verification-container">
        <h1>Verify your email address</h1>
        <p>For your security, Kindly check your inbox for verification code sent to <strong>personalemail@gmail.com</strong>. If you don't see it, check your spam folder.</p>
        <div class="verification-code">
            <input type="text" class="code-input" maxlength="1">
            <input type="text" class="code-input" maxlength="1">
            <input type="text" class="code-input" maxlength="1">
            <input type="text" class="code-input" maxlength="1">
            <input type="text" class="code-input" maxlength="1">
            <input type="text" class="code-input" maxlength="1">
        </div>
    <button class="back-button">Back</button>
<button class="verify-button" id="verifyButton">Verify</button>
<%--kapag na confirm or na verify ang code pupunta sa next page na verificationpage2--%>

<script>

    document.getElementById("verifyButton").addEventListener("click", function () {

        // Display a confirmation dialog (optional)
        var confirmAction = confirm('Are you sure you want to verify?');
        if (confirmAction) {
            // User clicked "OK", redirect to verificationpage2.aspx
            window.location.href = 'VerificationPage2.aspx';
        } else {
            // User clicked "Cancel", do nothing or provide feedback to the user
            alert('Verification canceled.'); // Display a message indicating cancellation
        }
    });
</script>

       </div>
    </form>   
</body>
</html>
