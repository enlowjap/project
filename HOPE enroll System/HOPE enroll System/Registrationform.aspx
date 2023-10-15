<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationform.aspx.cs" Inherits="HOPE_enroll_System.Registrationform" %>
<%@ Register Src="~/homeheader.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            font-family:Arial;
            margin:0;
        }
                .menu-header {
                    margin:0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background-color: white;
            border-bottom:1px solid #808080;
        }

        .registration {
            margin-left: auto; /* Align to the flex end */
        }
        .tab1{
            
            background-color:#0289CE;
            margin-right:15px;
            margin:0;
            padding:5px;
            border-radius:3px 3px 0 0;
            color:white;
            cursor:pointer;
        }

        .tab2{
            
            margin-right:15px;
            margin:0;
            padding:5px;
            border-radius:3px 3px 0 0;
            color:#0289CE;
            cursor:pointer;
            transition: border 0.3s ease, background 0.3s ease;
        }

        .tab2:hover{
            border:1px solid #0289CE;
            background-color:azure;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
        <div class="menu-header">
    <div class="tab1">
        <asp:HyperLink ID="HyperLink1" runat="server">Personal Information</asp:HyperLink>
    </div>
    <div class="tab2"
        <asp:HyperLink ID="HyperLink2" runat="server">Submit Documents</asp:HyperLink>
    </div>
    <div class="registration">
        <p>REGISTRATION</p>
    </div>
    </div>
       
    </form>
</body>
</html>
