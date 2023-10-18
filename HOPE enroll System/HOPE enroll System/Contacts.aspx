<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="HOPE_enroll_System.Contacts" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
  body{
     
      font-family:Arial;
      background:url('Images/contactspic.png');
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
            align-items:center;
            width: 55%; 
            max-width: 1200px;
       }
 
.h1-large {
    font-family: 'Franklin Gothic';
    font-weight:bolder;
    color: #E81F25;
    font-size: 100px; 
}


      </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
         <div class="container">
             <div class="cont">
             <div>
               <h1 class="h1-large">CONTACT US</h1>
                 </div>
              </div>
         </div>
    </form>
</body>
</html>
