<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="HOPE_enroll_System.Contacts" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
  body{
     
      font-family:Arial;
      background:url('Images/background5.jpg');
      background-size:cover;
  }
       
 .container{
     display: flex;
     justify-content: flex-end;
     align-items: center;
     height: 20vh;
 }
 .cont {
            display: flex;
            flex-direction:column;
            align-items: center;
            width: 80%; 
            max-width: 1200px;
            padding-top: 10px
       }
 h1 {
    font-family: Helvetica;
    color: #E81F25;
    font-size: 89px; /* Adjust the font size as desired */
    line-height: 0.1; /* Adjust the line height as desired */
}
      </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
         <div class="container">
            <div class="cont">
                <div>
                        <h1>CONTACTS</h1>
        </div> 
           </div>
              </div>
    </form>
</body>
</html>
