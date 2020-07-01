<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style41 {
            width: 500%;
            height: 500px;
           margin-left:0 auto;
        }
        .auto-style43 {
            width:100%;
            height: 550px;    
        }
        .auto-style43 p{
            text-align : center;
            font-size:30px;
            font-family: 'Lucida Calligraphy';
            color:white;
            padding: 10px;
           
        }
        .homeheading{
            font-size:40px;
            font-family:'Lucida Calligraphy';
           color: midnightblue;
           font-weight: 900;
           text-decoration:underline;
           background-color: rgba(128, 128, 128, 0.85);
           padding: 10px;
           border-radius: 20px;
          
        }

        .contain1{
           
            width: 350px;
            height: 350px;
            margin-left: 60px;
            margin-top: 50px;
            float: left;
            background-color: rgba(232, 215, 215, 0.9);
            border-radius: 30px;
        }

        .contain2{
            
            float:left;
           
            width: 350px;
            height: 350px;
            margin-left: 65px;
            margin-top: 50px;
             background-color: rgba(232, 215, 215, 0.9);
            border-radius: 30px;
        }

        .contain3{

             float:left;
           
            width: 350px;
            height: 350px;
            margin-left: 60px;
            margin-top: 50px;
             background-color: rgba(232, 215, 215, 0.9);
            border-radius: 30px;

        }

        .pic3{
            padding: 10px;
            height: 100px;
           
            margin-left: 15px;
        }

        .para3{
            
            margin-top: 6%;
            padding: 8px;
           
        }
        img{
            border-radius: 10px;
            width: 300px;
            height: 130px;
            
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style43">


        <p>Welcome To </br> <span class="homeheading"> E-InVentory Portal</span> </p>


        <div class="contain1">

           <div class="pic3">
            <img src="Pictures/pic1.png" />
           
            </div>

            <div class="para3"> 

                <p style="font-size:20px; font-family:Georgia; color:midnightblue;">
                    We provide a unique, cloud-based inventory management software
                     for all retail & consumer goods networks with all the necessary details of the product 
                    so that our customers can order anywhere and anytime and get the ordered items at their doorstep.
                    
                   </p>
            </div>


        </div>
        <div class="contain2">

             <div class="pic3">
            <img src="Pictures/pic2.png" />
           
            </div>

            <div class="para3"> 

                <p style="font-size:20px; font-family:Georgia; color:midnightblue;">
                    Our distributed management system uses predictive algorithms to determine the ideal inventory of each 
                    item everywhere to prevent out of stocks and overstocks.We use machine learning and AI-based logic to dynamically adjust inventory levels.
                  </p>
            </div>
        </div>

        <div class="contain3">
           <div class="pic3">
            <img src="Pictures/bpartner1.jpg" />
           
            </div>

            <div class="para3"> 

                <p style="font-size:20px; font-family:Georgia; color:midnightblue;">
                    We work with reliable and trustworthy companies to provide our clients with the best service all the time. 
                    So you can trust our service and order your goods carefree. We will deliver them at your doorstep within the given time.
                </p>
            </div>


        </div>

    </div>


</asp:Content>

