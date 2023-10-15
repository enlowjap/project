<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LHome.aspx.cs" Inherits="HOPE_enroll_System.LHome" %>
<%@ Register Src="~/homeheader.ascx" TagName="Header" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            font-family:Arial;
        }
        .video-grid{
              
              display: grid;
              grid-template-columns: 1fr 1fr 1fr;
              column-gap: 16px;
              row-gap: 40px;
              
            }

        .vid-prev{
            padding:20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin:20px;
        }

            

            .video-info-grid{
              display: grid;
              grid-template-columns: 1fr;
            }

            .vid-title{
              margin-top:0;
              margin-bottom: 12px;
              font-size: 14px;
              font-weight: 700;
              line-height:20px;
            }

            .vid-stat{
              cursor:pointer;
              height:30px;
              width:50px;
              background-color:red;
              font-size: 12px;
              color: white;
              text-decoration:none;
              border-radius:15px;
              padding:10px;
              transition: background-color 0.3s ease,;
            }

            .vid-stat:hover{
                background-color: darkred;
            }

            .vid-auth{
              margin-bottom: 4px;
            }

            .chan-pic{
              width: 40px;
              border-radius: 50%;
            }

            .dash{
                display:inline-flex;
                justify-content:flex-start;
                background-color:palevioletred;
                height:30px;
                width:90px;
                border-radius:15px;
            }

</style>
</head>
<body>

    <form id="form1" runat="server">
        <uc:Header runat="server" ID="Header1" />

        <div class="dash">
            <asp:HyperLink ID="HyperLink7" runat="server">HyperLink</asp:HyperLink></div>
        
         <div class="video-grid">
            <div class="vid-prev">
              <div class="video-info-grid">
                <div class="vid-info">
                  <p class="vid-title">
                    Special Education
                  </p>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="vid-stat">Register</asp:HyperLink>
                </div>
              </div>
            </div>
        

       
            <div class="vid-prev">
              <div class="video-info-grid">
                <div class="vid-info">
                  <p class="vid-title">
                    Preschool
                  </p>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="vid-stat">Register</asp:HyperLink>
                </div>
              </div>
            </div>
       

        
            <div class="vid-prev">
              <div class="video-info-grid">
                <div class="vid-info">
                  <p class="vid-title">
                    Elementary
                  </p>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="vid-stat">Register</asp:HyperLink>
                </div>
              </div>
            </div>
       

        
            <div class="vid-prev">
              <div class="video-info-grid">
                <div class="vid-info">
                  <p class="vid-title">
                    Junior Highschool
                  </p>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="vid-stat">Register</asp:HyperLink>
                </div>
              </div>
            </div>
     

        
            <div class="vid-prev">
              <div class="video-info-grid">
                <div class="vid-info">
                  <p class="vid-title">
                    Senior Highschool
                  </p>
                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="vid-stat">Register</asp:HyperLink>
                </div>
              </div>
            </div>
       
        
      
            <div class="vid-prev">
              <div class="video-info-grid">
                <div class="vid-info">
                  <p class="vid-title">
                    Home Schooling
                  </p>
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="vid-stat">Register</asp:HyperLink>
                </div>
              </div>
            </div>
            </div>
     
    
    </form>
</body>
</html>
