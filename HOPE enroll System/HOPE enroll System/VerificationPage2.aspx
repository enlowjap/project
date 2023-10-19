<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerificationPage2.aspx.cs" Inherits="HOPE_enroll_System.Verification" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <title></title>
    <style>
        body{
            font-family:Arial;
            background:url('Images/verificationpic.png');
            background-size:cover;
        }
        h1 {
         font-size: 50px;
         color: #ff0000;
         margin-bottom: 20px;
         margin-top:10px;
}

        p {
        font-size: 16px;
         color: #666;
        padding-top: -100px;
        margin-bottom: 40px;
}
        .container {
        text-align: center;
        padding: 20px;
}
        .check-icon {
        color: #28a745;
        font-size: 22px;
        }

        .reload-icon {
         color: #007bff;
         font-size: 30px;
         margin-top: 20px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
     <div class="container">
         <div class="check-icon">
        <i class="fas fa-check-circle fa-5x"></i>
              </div>
        <h1>Your account is now verified!</h1>
        <p>You may now go to the next stage by logging into your account.</p>
        <p>Thank you!</p>
     <div class="reload-icon">
        <i class="fas fa-sync-alt fa-spin fa-3x"></i>
    </div>
</div>
    <script>
        setTimeout(() => {
            // Assuming 'verified' is a variable that determines if the user is verified or not
            const verified = true;
            if (verified) {
                window.location.href = 'Login.aspx';
            } else {
                window.location.href = 'Verification.aspx';
            }
        }, 5000);
    </script>
    </form>
    
</body>
</html>
