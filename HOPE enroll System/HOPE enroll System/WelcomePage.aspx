<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="HOPE_enroll_System.Verification" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <title></title>
    <style>
        body{
            font-family:Arial;
            background:url('Images/welcomepic.png');
            background-size:cover;
        }

               p {
        font-size: 16px;
         color: #666;
        margin-bottom: 10px;
        margin-top: 100px;
}
        .container {
        text-align: center;
        padding: 200px;
      
}
       

        .reload-icon {
         color: red;
         font-size: 60px;
         margin-top: 10px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
        <div class="container">
   <p>You may now go to the next stage by logging into your account.</p>
     <div class="reload-icon">
        <i class="fas fa-ellipsis-h fa-fade"></i>
    </div></div>
<script>
        setTimeout(() => {
            // Assuming 'verified' is a variable that determines if the user is verified or not
            const verified = true;
            if (verified) {
                window.location.href = 'DashHome.aspx';
            } else {
                window.location.href = 'Login.aspx';
            }
        }, 5000);
    </script>
    </form>
    
</body>
</html>
