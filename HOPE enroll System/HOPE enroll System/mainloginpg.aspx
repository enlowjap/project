<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainloginpg.aspx.cs" Inherits="HOPE_enroll_System.mainloginpg" %>
<%@ Register Src="~/headerlandpage.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link your external CSS file here -->
    <style type="text/css">
        body {
            background:url('Images/LogInpic.png');
            background-size: cover;        
        }
         h1 {
          font-family: 'Segoe UI';
          color: #000000;
          font-size: 50px; 
          font-weight: bolder;
          margin-bottom: 20px;
           margin-top: 25px;
          
  }
    
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            margin-left: 80px;
            padding: 20px;  

        }
        .form-group {
            margin-bottom: 20px;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;

        }
        .form-group label {
            font-family: 'Times New Roman';
            font-size: 16px;
            display: inline-block;
            width: 120px;

        }
        .form-group input[type="text"], 
        .form-group input[type="email"], 
        .form-group input[type="password"], 
        .form-group select {
            width: calc(100% - 120px);
            padding: 10px;
            margin-top: 5px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            display: inline-block;
            
        }
        .form-group button{
            background-color: #053989;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-group button.cancel {
            background-color: #ccc;
            margin-right: 10px;
        }

        .form-group button[type="submit"]:hover {
         background-color: #ff0000; 
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />
        <div class="form-container">
             <h1>Create Account</h1> 
            <div class="form-group"> 
                <label for="studentId">STUDENT ID</label>
                <input type="text" id="studentId" name="studentId"  placeholder="00-000" required>
            </div>
            <div class="form-group">
                <label for="fullName">FULL NAME</label>
                <input type="text" id="fullName" name="fullName"  placeholder="Jane Doe" required>
            </div>
            <div class="form-group">
                <label for="email">EMAIL</label>
                <input type="email" id="email" name="email"  placeholder="janedoe@gmail.com" required>
            </div>
            <div class="form-group">
                <label for="username">USERNAME</label>
                <input type="text" id="username" name="username"  placeholder="jane123" required>
            </div>
            <div class="form-group">
                <label for="password">PASSWORD</label>
                <input type="password" id="password" name="password"  placeholder="Type your password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">RE-TYPE PASSWORD</label>
                <input type="password" id="confirmPassword" name="confirmPassword"  placeholder="Re-type your password" required>
            </div>
            <div class="form-group">
                <label for="gender">GENDER</label>
                <select id="gender" name="gender" required>
                    <option value="male">MALE</option>
                    <option value="female">FEMALE</option>
                    <option value="other">OTHER</option>
                </select>
            </div>
          <div class="form-group">
    <button type="button" class="cancel">Cancel</button>
    <button type="submit" id="confirmButton">Confirm</button>
<%--dapat pag na submit mapupunta sa verification page--%>
</div>
      </div>
         <script type="text/javascript">
             document.getElementById("confirmButton").addEventListener("click", function () {
                 // Display a confirmation dialog
                 var confirmAction = confirm('Are you sure you want to confirm?');

                 if (confirmAction) {
                     // User clicked "OK", proceed with the confirmation action here
                     alert('Confirmed!'); // Display a message indicating confirmation
                     // Add logic to handle the confirmation action
                 } else {
                     // User clicked "Cancel", do nothing or provide feedback to the user
                     alert('Confirmation canceled.'); // Display a message indicating cancellation
                 }
             });
         </script>
    </form>
</body>
</html>
