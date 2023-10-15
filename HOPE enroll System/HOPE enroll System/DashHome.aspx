<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashHome.aspx.cs" Inherits="HOPE_enroll_System.DashHome" %>
<%@ Register Src="~/homeheader.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body {
            font-family: Arial, sans-serif;
        }

        .sidebar {
            height: 100vh;
            width: 200px;
            top: 0;
            left: 0;
            background-color: ghostwhite;
            padding-top: 20px;
            box-shadow: -10px 0 10px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            padding: 8px 8px 8px 16px;
            text-decoration: none;
            font-size: 18px;
            color: red;
            display: block;
            transition: 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #ff6666;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
        <div>
            <div class="sidebar">
        <a href="~/DashHome.aspx">Home</a>
        <a href="#about">Dashboard</a>
        <a href="#services">Student Profile</a>
        <a href="#contact">School Receipt</a>
    </div>
    <div style="margin-left: 220px;">
        <h1>Main Content Goes Here</h1>
        <!-- Rest of your content -->
    </div>
        </div>
    </form>
</body>
</html>
