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
            background: url('path_to_your_icon.png') no-repeat left center; /* Replace 'path_to_your_icon.png' with the actual path to your icon */
        }
        
        .sidebar a i {
            margin-right: 10px; /* Add space between icon and text */
        }

        .sidebar a:hover {
            font-weight:bolder;
            background-color: #F8DFE0;
            color:darkred;
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
        </div>
    </form>
</body>
</html>
