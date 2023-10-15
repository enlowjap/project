<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainloginpg.aspx.cs" Inherits="HOPE_enroll_System.mainloginpg" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            margin:0;
            font-family:Arial;
        }
        h1{
            font-size:50px;
        }
        .auto-style1 {
            width: 161px;
            height: 38px;
        }
        .cont{
            margin:0;
            display:flex;
            justify-content:flex-end;
            align-items:center;
            flex-direction:row;
        }
        .loginfrm{
            background-color:aqua;
            padding:15px;
            height:800px;
            width:500px;
            display:flex;
            flex-direction:column;
            justify-content:center;
        }
        .lgformseparation{
            padding:10px;
            margin-bottom:15px;
            display:flex;
            flex-direction:column;
            align-items:center;
        }
        .adssomething{
            background-color:antiquewhite;
        }

        .bttnconfirm{
            border:none;
            width:200px;
            height:25px;
            background-color:palevioletred;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <uc:Header runat="server" ID="Header1" />
        <div class="cont">
            <div class="loginfrm">
                <div class="lgformseparation">
                    <h1>Login Here</h1>
                </div>
                <div class="lgformseparation">
                    <asp:Label ID="Label1" runat="server" Text="Email : "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="lgformseparation">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                 <div class="lgformseparation">
                    <asp:Button ID="Button1" runat="server" Text="Log In" CssClass="bttnconfirm" OnClick="Button1_Click" />
                </div>
            </div>
            </div>
    </form>
</body>
</html>
