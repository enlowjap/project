<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HOPE_enroll_System.Dashboard" %>
<%@ Register Src="~/homeheader.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
    <title></title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background:url('Images/red.png');
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
.styled-table {
    width: 76%;
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 18px;
    text-align: left;
    margin-top:-583px;
    margin-left:215px;
background-color: white;
}

.styled-table th, .styled-table td {
    padding: 12px 15px;
    border: 1px solid #ddd; /* Add borders to cells */
}

.styled-table th {
    background-color: #f2f2f2;
    border: 1px solid #ddd; /* Add borders to header cells */
}

.styled-table tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}
.approved {
    color: green;
}

.pending {
    color: orange;
}

.rejected {
    color: red;
}

.action-button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
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
              
    <table class="styled-table">
        <thead>
            <tr>
                <th>Reference No.</th>
                <th>Details</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>Details for Reference No. 001</td>
                <td class="approved">Approved</td>
                <td><button class="action-button">View</button></td>
            </tr>
            <tr>
                <td>002</td>
                <td>Details for Reference No. 002</td>
                <td class="pending">Pending</td>
                <td><button class="action-button">View</button></td>
            </tr>
            <tr>
                <td>003</td>
                <td>Details for Reference No. 003</td>
                <td class="rejected">Rejected</td>
                <td><button class="action-button">View</button></td>
            </tr>
            <tr>
                <td>004</td>
                <td>Details for Reference No. 004</td>
                <td class="approved">Approved</td>
                <td><button class="action-button">View</button></td>
            </tr>
        </tbody>
    </table>
</div>
          

    </form>
</body>
</html>
