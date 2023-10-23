<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashHome.aspx.cs" Inherits="HOPE_enroll_System.DashHome" %>
<%@ Register Src="~/homeheader.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
    <title></title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background:url('Images/picdhome.png');
            background-size:cover;
        }

     .sidebar {
            height: 100vh;
            width: 200px;
            top: 0;
            left: 0;
            background-color: white;
            padding-top: 20px;
            box-shadow: -10px 0 10px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            padding: 8px 8px 8px 4px; /* Added more left padding for icons */
            text-decoration: none;
            font-size: 18px;
            font-family:Arial;
            color: #AD0005;
            display: block;
            transition: 0.3s ease;
            background: url('path_to_your_icon.png') no-repeat left center; 
        }
        
        .sidebar a i {
            margin-right: 10px; /* Add space between icon and text */
        }

        .sidebar a:hover {
            font-weight:bolder;
            background-color: #F8DFE0;
            color:darkred;
        }

        
.verification-container { 
    padding: 40px;
    border-radius: 10px;
    text-align: justify;
    margin-top:-656px;
    margin-left:1px;
}

h1 {
    font-size: 70px;
    color: black;
    margin-bottom: 20px;
     margin-left:230px;
    
}



p1 {
    font-size: 15px;
    color: #666;
    padding-top: -8px;
    margin-bottom: 40px;
    margin-left:239px;
     
}


     .modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0, 0, 0, 0.4);
}
 

.modal-content {
    background-color: #F3F3F3;
     font-size: 20px;
     font-family: sans-serif;
    margin: 15% auto;
    padding: 10px;  
    border: 1px solid black;
    width: 45%;
    text-align: center;
    border-radius: 30px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
}

.modal-message {
    font-family: 'Times New Roman';
    font-weight:bold;
    padding-left:100px;
    font-size: 20px;
    margin-bottom: 20px;
}

#okButton {
    margin-top: 20px;
    padding: 12px 24px;
    background-color: red;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

#okButton:hover {
    background-color: #0056b3;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />   
       <div>
            <div class="sidebar">
                <a href="/DashHome.aspx"><i class="fas fa-home"></i> Home</a>
                <a href="/Dashboard.aspx"><i class="fas fa-chart-bar"></i> Dashboard</a>
                <a href="/Dashprofile.aspx"><i class="fas fa-user"></i> Student Profile</a>
                <a href="/Dashreciept"><i class="fas fa-receipt"></i> School Receipt</a>
            </div>
               <div class="verification-container">
     <h1>Welcome, <strong>Student!</strong></h1>
     <p1>Check out your student dashboard for your pre-registration process in 
         this school year of 2023-2024.<br /></p1>
      <p1>If you don't see it, check your spam folder.</p1>
</div>
              <div class="modal" id="myModal">
    <div class="modal-content">
        <img src="Images/piclogo.png" alt="Logo" style="max-width: 150px; height: auto;" />
        <p id="messageText">Welcome to your home dashboard! We're thrilled to have you here and are excited to provide you with an intuitive and personalized experience that puts you in control.</p>
        <asp:Button ID="okButton" runat="server" Text="Next" OnClientClick="return showNextMessage();" />
    </div>
</div>

<script type="text/javascript">
    var messages = [
        "Welcome to your home dashboard! We're thrilled to have you here and are excited to provide you with an intuitive and personalized experience that puts you in control.",
        "We want to provide you with the best experience possible. Please keep in mind these guidelines...",
        // Add more messages here
    ];

    var messageIndex = 0;

    function showNextMessage() {
        var messageText = document.getElementById("messageText");
        var modal = document.getElementById("myModal");

        if (messageIndex < messages.length - 1) {
            messageIndex++;
            messageText.innerHTML = messages[messageIndex];
        } else {
            // Close the modal when the last message is displayed
            modal.style.display = "none";
        }

        return false; // Prevent ASP.NET postback
    }

    // Display the modal when the page loads
    window.onload = function () {
        var modal = document.getElementById("myModal");
        modal.style.display = "block";
    };
</script>

        </div>
          

    </form>
</body>
</html>
