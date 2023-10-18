<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HOPE_enroll_System.About" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
     body{
        
         font-family:Arial;
         background:url('Images/backgound2.jpg');
         background-size:cover;
     }
      
 .container{
     display: flex;
     justify-content: flex-end;
     align-items: center;
     height: 100vh;
 }

.h1-small {
    font-family: Arial;
    color: #E81F25;
    font-weight:normal;
    font-size: 40px;
    line-height: 0.1;
}

.h1-large {
    font-family: Helvetica;
    color: #E81F25;
    font-size: 130px; /* Adjust the font size as desired */
    line-height: 0.1; /* Adjust the line height as desired */
}

  
  p {
    font-size: 16px;
    color: black;
    line-height: 16px; /* You can adjust this value based on your preference */
}

 .cont {
             display: flex;
             flex-direction:column;
             align-items: center;
             width: 50%; 
             max-width: 1200px;
             padding-top: 10px
        }
 


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
         <div class="container">
        <div class="cont">
        <div>
           <h1 class="h1-small">About</h1>
            <h1 class="h1-large">HIS</h1>
            <p>Hope Integrated School is a non-stock, inclusive, Christian educational institution duly recognized by the Department of Education. The school was founded in 1999 through the Grace of God, under the leadership of Mrs. Teresita Suiza, with an initial name of TD&S Hope Christian Academy until the current name has been adopted by around 2015.</p>
            </div>     
        </div>
    </div>
    </form>
</body>
</html>
