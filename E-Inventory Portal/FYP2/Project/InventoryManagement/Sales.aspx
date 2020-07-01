<%@ Page Title="Sales" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sales.aspx.cs" Inherits="Sales" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style41 {
            text-align: center;
        }

        .auto-style42 {
            width: 100%;
        }

        .auto-style44 {
            margin-top: -2%;
        }
        .auto-style51 {
            text-align: center;
        }
        .headingsales {
           color: white;     
           padding-top: 4px;
           padding-right: 12px;
           padding-left:7px;
           font-size: 28px;
           margin-left: 43%;
          margin-bottom:-10%;
          background-color: rgba(0,0,0,0.7);
          border-radius: 20px;
           font-family: 'MV Boli';
        }
           .auto-style54 {
            
            text-decoration: none;
            border-top: 2px solid darkgray;
            height: 100%;
            
        }
        .auto-style55 {
            color: white;     
           padding-top: 10px;
           font-size: 35px;
           margin-left: 45%;
          margin-right: 40%;
           font-family: 'MV Boli';
           margin-top:-1%;
        }
        .auto-style56 {
            width: 20%;
            margin-left:58%;
            
        }
        .auto-style59 {
                width: 100%;
           height: 182px;
}
        
         .auto-style77 {
            width: 5%;
        }
           .auto-style79 {
            width: 5%;
        }
          .auto-style78 {
            height: 30px;
        }
        
        .auto-style60 {
            width: 173px;
            text-align: center;
        }
        .auto-style65 {
            width: 10%;
            height: 30px;
        }
        .auto-style68 {
            width: 173px;
            
            height: 26px;
            text-align: right;
        }
        .auto-style69 {
            width: 28px;
            height: 30px;
        }
        .auto-style71 {
            
            
            
        }
        .auto-style72 {
            width: 65%;
            height: 26px;
            text-align: center;
            color: white;
            text-decoration:underline;  
            font-size:20px;
        }
        .auto-style73 {
            width: 15%;
            
            text-align: right;
        }
        .auto-style74 {
            
            text-align: right;
            
        }

       .searchresult{
          
           width: 40%;
           float: right;
           height:50%;
           margin-right:9%;
           background-color: rgba(243, 230, 230, 0.75);
           border: 2px solid black;
           
       }

       .saletable{
           
           width:27%;
           float:left;
           margin-left:22%;
           background-image: linear-gradient(to right, rgba(100, 149, 237, 0.5), rgba(114, 188, 237, 0.5),rgba(255,255,255,0.6));
           border-radius: 30px;
           color: navy;
           font-size:17px;
           font-weight:bold;
           padding-top:10px;
           
       }
        .salebutton {
            border-radius: 5px;
            background-color: rgba(0, 0, 0, 0.8);
            color: wheat;
            padding: 1%;
            margin-top: 2%;
            width: 30px;
        }

       .gridtable{
           margin-left:9%;
           border: 3px solid black;
           color: black;
           text-align:center;
          
       }
       .saleslist{
           margin-top:1%;
           margin-left:34%;
           width:60%;
          
       }
       .headingsale{
           width:40%;
           height:15%;
          
           margin-top:0%;
           margin-left:27%;
       }
       .horizontall{
               color:black;
               width: 43%;
               height:1px;
              margin-left:30%;
              background-color:black;
              margin-top: 17%;
           }
        .def{
              display: inline-table;
              border: 3px solid cornflowerblue;
              background-color: rgba(255,255,255,0.9);
              text-align:center;
              margin-top: -16px;
           }
         .collPadding{
               
               padding:0.5px;
               height: 20px;
               padding-left: 13px;
               padding-right: 19px;
           }
        .headderstyle {
            color: navy;
            font-size: 18px;
            padding: 6px;
            text-decoration: underline;
            /*border-bottom: 3px solid cornflowerblue;*/
            /*border-right:3px solid black;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
   <div class="auto-style54">
     
       <h3 class="auto-style55">'SALES'</h3>


       
       <div class="auto-style44">
           
           <table class="auto-style56">
               <tr>
                   <td class="auto-style78">&nbsp;</td>
                   <td class="auto-style65">
                       &nbsp;</td>
                   <td class="auto-style65">
                       &nbsp;</td>
                   <td class="auto-style72" colspan="2"><strong>Search Result</strong></td>
                   <td class="auto-style79">
                       &nbsp;</td>
               </tr>
               
               </table>
           

<div class="searchresult">
    
    <table>
<tr>
 <td class="auto-style59" rowspan="7">
            <asp:GridView ID="searchGrid" runat="server" AutoGenerateColumns="False" AutoPostBack="true" HorizontalAlign="Center" OnSelectedIndexChanged="searchGrid_SelectedIndexChanged" CssClass="gridtable">
                <columns>
                    <asp:BoundField Datafield="ProductName" HeaderText="Product Name" />
                    <asp:BoundField Datafield="CompanyName" HeaderText="Company Name" />
                    <asp:BoundField Datafield="total" HeaderText="Available Quantity" />
                    <asp:TemplateField>
                      
                    </asp:TemplateField>
                   
                    <asp:ButtonField CommandName="Select" Text="select" />
                   
                </columns>
            </asp:GridView>
                   </td>
                   <td class="auto-style79" rowspan="7">
                       &nbsp;</td>
               </tr>
        </table>
</div>
          
    <div class="saletable">      
           <table>
               <tr>
                   <td class="auto-style74">
                       Search Product:</td>
                  
                   <td class="auto-style71">
                <asp:TextBox ID="TextBox2" Width="120px" Height="18px" runat="server" OnTextChanged="TextBox2_TextChanged" AutoPostBack="True"></asp:TextBox>
                       <ajaxToolkit:AutoCompleteExtender ID="TextBox2_AutoCompleteExtender" runat="server" MinimumPrefixLength="1" ServiceMethod="GetSearch" TargetControlID="TextBox2">
                       </ajaxToolkit:AutoCompleteExtender>
                   </td>
                   </tr>

                 
               <tr>
                   <td class="auto-style73">Company Name :</td>
                   <td class="auto-style65">
                <asp:TextBox ID="TextBox3" Width="120px" Height="18px" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style68">Available Quantity:</td>
                   <td class="auto-style69">
                <asp:TextBox ID="txtQuantity1" runat="server" Width="120px" Height="18px" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style73">Sell Quantity:</td>
                   <td class="auto-style65">
                <asp:TextBox ID="txtQuantity2" runat="server" Width="120px" Height="18px" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style51" colspan="2">
                <asp:Button ID="btnsell" runat="server" Text="Sell" Font-Bold="True" Width="55px" OnClick="btnsell_Click1" CssClass="salebutton"/>
                <asp:Button ID="btnclear" runat="server" Text="Clear" Font-Bold="True" OnClick="btnclear_Click" Width="56px" CssClass="salebutton" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style60" colspan="2" rowspan="2">
                <asp:Label ID="lblsuccessmassage" runat="server" Text="" ForeColor="Green"></asp:Label>
                       <br />
                <asp:Label ID="lblerrormessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                   </td>
                  
               </tr>
              
           </table>
       </div>
    
       </div>
       
        <hr class="horizontall"/>


        <h4 class="headingsale">
            <br />
            <span class="headingsales"><strong>SALES LIST</strong></span><br />
        </h4>


       <div class="saleslist">
            
        <asp:GridView CssClass="def" ID="SalesGrid" runat="server" AutoGenerateColumns="False" AutoPostBack="true" HorizontalAlign="Center" OnSelectedIndexChanged="searchGrid_SelectedIndexChanged">
                <columns>
                    <asp:BoundField Datafield="SalesProductName" HeaderText="Product Name" ItemStyle-CssClass="collPadding"  HeaderStyle-CssClass="headderstyle" />
                    <asp:BoundField Datafield="SalesCompanyName" HeaderText="Company Name" ItemStyle-CssClass="collPadding"  HeaderStyle-CssClass="headderstyle" />
                    <asp:BoundField Datafield="SalesQuantity" HeaderText="Quantity (Packet)" ItemStyle-CssClass="collPadding"  HeaderStyle-CssClass="headderstyle"/>
                                       
                   <%-- <asp:ButtonField CommandName="Select" Text="select" />--%>
                   
                </columns>
            </asp:GridView>
           </div>
        <div class="auto-style51">
            <br />
        </div>
</div>
</asp:Content>

