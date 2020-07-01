<%@ Page Title="Supplier" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Supplier.aspx.cs" Inherits="Supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style41 {
       
        height:100%;
    }
    .auto-style42 {
        width: 100%;
    }
    .auto-style43 {
            text-align: right;

            width: 500px;
        }
    .auto-style44 {
        text-align: center;
        padding-right: 23px;
    }
        .savebutton {
            text-align: left;
            width: 69px;
            padding-right:20px;
        }

        .deletebutton {
            text-align: left;
            width: 71px;
            padding-right:19px;
        }

        .clearbutton {
            text-align: right;
            width: 73px;
        }
        .auto-style51 {
              margin-top:-2px;
        width:60%;
        margin-left:330px;
        }
        .auto-style52 {
           
            width:40%;
            color: white;     
       padding-top: 10px;
       font-size: 30px;
       margin-left: 36%;
       margin-right: 40%;
       font-family: 'MV Boli';  
        }
        .supptable{
            background-image: linear-gradient(to right, rgba(100, 149, 237, 0.4), rgba(114, 188, 237, 0.4),rgba(255,255,255,0.6));
               margin-left: 34%;
               width: 32%;
               height:30%;
               margin-top:2px;
               border-radius: 30px;
               text-align:center;  
               color: navy;
               font-size:17px;
               font-weight:bold;
        }

        .tablebuttons{
          
            height:10%;
            margin-left: 40%;
            text-align: center;
        }
        .bt1{
        width: 100%;
        border-radius: 8px;
        background-color:rgba(0, 0, 0, 0.9);
        color: wheat;
        padding: 5%;
    }
         .horizontals{
               color:black;
               width: 43%;
               height:1px;
              margin-left:28%;
              background-color:black;
              margin-top: 0%;
           }
          .headings{
        padding: 10px;
       font-size: 25px;
       margin-left: 42%;
       margin-right: 40%;
       font-family: 'MV Boli';
       color: white;
       padding-bottom: 0px;  
       background-color: rgba(0,0,0,0.7);
       border-radius: 20px;
       
   }
          .abcds{
              display: inline-table;
              border: 3px solid cornflowerblue;
              background-color: rgba(255,255,255,0.9);
              text-align:center;
           }
            .colPaddings{
               
               padding:2px;
               height: 20px;
               padding-left: 13px;
               padding-right: 19px;
           }
        .headerstyles {
            color: navy;
            font-size: 18px;
            padding: 6px;
            text-decoration: underline;
        }

        .textDecorations {
            color: black;
            font-weight: bolder;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="auto-style41">


    <h3 class="auto-style52">'SUPPLIER REGISTRATION'</h3>
        <asp:HiddenField ID="hfSupplierId" runat="server" />
    
         
         <table class="supptable">
        <tr>
            <td class="auto-style43" >Company Name:</td>
            <td class="auto-style44" >
                <asp:TextBox ID="txtComName" runat="server" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" >Trade Licence No :</td>
            <td class="auto-style44" >
                <asp:TextBox ID="txtTradeLiNo" runat="server" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" >Mobile Number:</td>
            <td class="auto-style44" >
                <asp:TextBox ID="txtMobileNo" runat="server" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" >City Name:</td>
            <td class="auto-style44" >
                <asp:TextBox ID="txtAddress" runat="server" Height="22px"></asp:TextBox>
            </td>
             <td class="auto-style44">
                &nbsp;</td>
             <td class="auto-style44">
                &nbsp;</td>
        
        
        </tr>

             </table>


         <table class="tablebuttons">
        <tr>
            <td class="savebutton">
                <asp:Button ID="btnsave" runat="server" Text="Save" Font-Bold="True" OnClick="btnsave_Click" CssClass="bt1"/>
            </td>
            <td class="deletebutton">
                <asp:Button ID="btndelete" runat="server" Text="Delete"  Font-Bold="True" OnClick="btndelete_Click" CssClass="bt1" />
            </td>
            <td class="clearbutton">
                <asp:Button ID="btnclear" runat="server" Text="Clear" Font-Bold="True" OnClick="btnclear_Click" CssClass="bt1"/>
            </td>
            <td class="auto-style44">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lblsuccessmassage" runat="server" Text="" ForeColor="Black"></asp:Label>
                <asp:Label ID="lblerrormessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>


         <hr class="horizontals"/>

        <h4>
            <br />
            <span class="headings">SUPPLIER LIST</span><br />
        <br />
        </h4>
        
         
         <div class="auto-style51">
        <asp:GridView CssClass="abcds" ID="supplierGrid" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center">
            <columns>
                <asp:BoundField Datafield="SupplierId" HeaderText="Supplier Id" ItemStyle-CssClass="colPaddings"  HeaderStyle-CssClass="headerstyles"  />
                <asp:BoundField Datafield="CompanyName" HeaderText="Company Name" ItemStyle-CssClass="colPaddings"  HeaderStyle-CssClass="headerstyles"/>
                <asp:BoundField Datafield="TradeNo" HeaderText="Trade Licence No" ItemStyle-CssClass="colPaddings"  HeaderStyle-CssClass="headerstyles" />
                <asp:BoundField Datafield="MobileNo" HeaderText="Mobile Number" ItemStyle-CssClass="colPaddings"  HeaderStyle-CssClass="headerstyles"/>
                <asp:BoundField DataField="Address" HeaderText="City Name" ItemStyle-CssClass="colPaddings"  HeaderStyle-CssClass="headerstyles" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("SupplierId") %>' OnClick="lnk_onClick" Width="66px" CssClass="textDecorations">Select</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </columns>
        </asp:GridView>
            <br />
        </div>
</div>
</asp:Content>

