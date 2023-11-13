<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ADMIN_PANEL.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
             background:url('Pictures/admin.png');
             background-size:cover;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            margin-top:150px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 5px;
            font-size: 14px;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: red;
            color: #fff;
            border: none;
            font-size: 16px;
        }
        
         .bttn {
    width: 100%;
    padding: 10px;
    font-family: 'Franklin Gothic';
    background: red;
    border: none;
    border-radius: 5px;
    color: black;
    cursor: pointer
        }
        .bttn:hover {
        background: blue;
}
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Panel Login</h2>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="username" runat="server" placeholder="Enter Username"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="password" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="login" runat="server" Text="LOGIN" CssClass="bttn" OnClick="login_Click" />
            </div>
        </form>
    </div>
</body>
</html>

