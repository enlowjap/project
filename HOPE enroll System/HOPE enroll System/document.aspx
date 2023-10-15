<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="document.aspx.cs" Inherits="HOPE_enroll_System.document" %>
<%@ Register Src="~/homeheader.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <style>
        body{
            font-family:Arial;
            margin:0;
            padding:0;
        }
                .menu-header {
                    margin:0;
                    padding:0;
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    background-color: white;
                    border-bottom:1px solid #808080;
        }

        .registration {
            margin-left: auto; /* Align to the flex end */
            padding:0 15px 0 0;
        }
        
        .tab1{
            margin-right:15px;
            margin:0 0 0 10px;
            padding:15px 15px 25px 15px;
            border-radius:3px 3px 0 0;
            cursor:pointer;
            transition: border 0.3s ease, background 0.3s ease;
        }
        .hypr1{
            color:#0289CE;
            text-decoration:none;
        }

        .tab2{
            margin-right:15px;
            margin:0;
            padding:15px 15px 25px 15px;
            border-radius:3px 3px 0 0;
            cursor:pointer;
            background-color:#0289CE;
        }
        .hypr{
            color:white;
            text-decoration:none;
        }

        .tab1:hover{
            background-color:azure;
        }

        .submitbttn{
                background-color:#E22529;
                border:none;
                height:30px;
                width:90px;
                border-radius:15px;
                color:white;
                cursor:pointer;
                transition: background-color 0.5s ease, color 0.5s ease, border 0.5s ease;
        }

        .submitbttn:hover{
                background-color:white;
                color: #E22529;
                border:2px solid #E22529;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />

             <div class="menu-header">
                <div class="tab1">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registrationform.aspx" CssClass="hypr1">Personal Information</asp:HyperLink>
                </div>
                <div class="tab2">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/document.aspx" CssClass="hypr">Submit Documents</asp:HyperLink>
                </div>
                <div class="registration">
                    <p>REGISTRATION</p>
                </div>
                </div>



                <div class="card">
                <div class="card-body">
                <h4 class="card-title">Movie Lists</h4>
                <p class="card-description">
                        Subtmitted Document
                 </p>
                    <div class="table-responsive">
                        <table class="table">
                        <thead>
                        <tr>
                            <th>Document Type</th>
                            <th>File Name</th>
                            <th></th>
                        </tr>
            </thead>
            <tbody>
                
                    <tr>
                        <td>Medical Certificate</td>
                        <td>med.pdf</td>
                        <td><asp:Button ID="Button1" runat="server" Text="Upload" CssClass="submitbttn" OnClick="Button1_Click" /></td>
                    </tr>
                    <tr>
                        <td>Report Card</td>
                        <td>card.pdf</td>
                        <td><asp:Button ID="Button3" runat="server" Text="Upload" CssClass="submitbttn" OnClick="Button1_Click" /></td>
                    </tr>
                    <tr>
                        <td>Birth Certificate</td>
                        <td>PSA.pdf</td>
                        <td><asp:Button ID="Button4" runat="server" Text="Upload" CssClass="submitbttn" OnClick="Button1_Click" /></td>
                    </tr>
               
            </tbody>
</table>
 <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="submitbttn" OnClick="Button1_Click" />
</div>
</div>
</div>
    </form>
</body>
</html>
