<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="HOPE_enroll_System.Verification" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            font-family:Arial;
        }
        .cont{
            margin:0;
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .cont2{
            margin:0;
            padding:10px;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
        <div class="cont">
        <div class="cont2">
            <div class="imglogo">
            <img alt="HOPE logo" class="auto-style1" src="Images/Screenshot%202023-10-09%20032305.png" />
            </div>
            <div>
            <h1>YOUR ACCOUNT IS VERIFIED </h1>
            </div>
            <div>
            <p>you can now use your account to login </p>
            </div>
            <div>
            <asp:Button ID="Button1" runat="server" Text="Proceed" OnClick="Button1_Click" />
            </div>
        </div>
        </div>
    </form>
    
</body>
</html>
