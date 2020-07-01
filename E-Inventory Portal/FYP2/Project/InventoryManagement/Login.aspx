<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        *{
            padding: 0;
            margin :0;

        }
        
       
        .auto-style43 {
            width: 100%;
        }
        
     
        
        .auto-style46 {
        text-align:center;
        width: 50%;
        color:white;
        font-size:20px;
        }


        .secclmn {
           margin-left:440%;
            text-align:center;
            height:30px;
        }
        .secclmn1 {
            width: 40%;
            text-align:center;
            height:20px;
            
        }
        .auto-style44 {
            color: white;   
        }

         .auto-style47 {
            text-align:center;
        width: 50%;
        color:white;
        font-size:20px;
        height: 40px;
        }


        .logincontainer{
            border: 5px  black;
            width:90%;
            height: 90%;     
        }

        .logintext{
            margin-left: 10px;
            margin-top: 30px;
            
        }
        .password{
            
            margin-left:5%;

        }
        .forpas{
            color:white;
            text-align:center;
            text-decoration:underline;
            padding: 5%;
        }
        .buttons{
            
            padding-top:5%;
            padding-left:10%;
            margin-left:10.5%;
           
        }

        .loginbutton{
            text-align: center;
            /*background-color : black;*/
            /*padding: 5%;*/
        
        }
        .refreshbutton{
            
            text-align:right;
        }

        .divider{
            width:5px;
            height:auto;
            display:inline-block;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="logincontainer"> 
       <table class="auto-style43">
        <tr>
            <td class="auto-style44" >
                <h1 style="margin-left: 5%; margin-top:10%; text-align:center; text-decoration:underline;"><strong>Login</strong></h1>
            </td>
        </tr>
           </table>
       
     
       <div class="logintext">

           <table>

        <tr>
            <td class="auto-style46">Username:&nbsp;</td>
            
        </tr>
               <tr>
                   <td class="secclmn">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
               </tr>

               </table>
          
           </div>



       <div class="password">
           <table>
        <tr>
            <td class="auto-style47">Password:&nbsp;</td>
       </tr>
        <tr>
            <td class="secclmn1">
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
               <tr>
                   <td class="forpas">Forgot Password? Click me!</td>
               </tr>
        
               </table>
           </div>
      <div class="buttons">
       <table>
        <tr>
            <td class="loginbutton">
                <asp:Button ID="btnLogin" runat="server" BorderStyle="Solid" Width="90px" Height="33px" BackColor="Black" Font-Bold="True" ForeColor="White" Text="Login" Font-Size="Medium" OnClick="btnLogin_Click" />
            </td>
            <td class="divider"></td>
            <td class="loginbutton">
                <asp:Button ID="btnRefresh" runat="server"  BorderStyle="Solid" Width="90px" Height="33px" BackColor="Black"   Font-Bold="True" ForeColor="White" Text="Refresh" Font-Size="Medium" OnClick="btnRefresh_Click" />&nbsp; &nbsp;
                <asp:Label ID="lblerror" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
    </table>
          </div>
       </div>
</asp:Content>

