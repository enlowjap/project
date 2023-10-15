<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HOPE_enroll_System.Login" %>
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
        .auto-style1 {
            width: 161px;
            height: 38px;
        }
        .cont{
            margin:0;
            display:flex;
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
            margin:0;
            display:flex;
            flex-direction:row;
            justify-content:space-between;
        }
        .adssomething{
            background-color:antiquewhite;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
        <div class="cont">
            <div class="loginfrm">
                <div class="lgformseparation">
                    <h1> Create Acount</h1>
                </div>
                <div class="lgformseparation">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="lgformseparation">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <div class="lgformseparation">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
                <div class="lgformseparation">
                    <asp:Label ID="Label4" runat="server" Text="Re-Type Password"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                <div class="lgformseparation">
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Femaale" />        
                </div>
                 <div class="lgformseparation">
                    <asp:Button ID="Button1" runat="server" Text="Confirm" CssClass="bttnconfirm" OnClick="Button1_Click" />
                </div>
            </div>

            <div class="adssomething">

            </div>
        </div>
    </form>
</body>
</html>
