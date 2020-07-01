<%@ Page Title="Purchase" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
    *{
       margin:0;
       padding: 0%;
   }        
           
    .auto-style41 {
        text-align: center;
       
        height: 100%;
    }
    .auto-style42 {
       
        
    }
    .auto-style43 {
            text-align:right;
            width: 200px;
        }
    .auto-style44 {
        text-align: left;
    }


    .auto-style46 {
        margin-left:16%;
        width: 50px;
        margin-top:-5%;
        
    }
    .auto-style49 {
        width:50px;
        margin-left: 150px;
         margin-top:-6.5%;
    }
    .auto-style50 {
        width:50px;
        margin-left: 234px;
        margin-top:-6.5%;
    }
    .xyz{
        width: 150%;
        border-radius: 8px;
        background-color:rgba(0, 0, 0, 0.9);
        color: wheat;
        padding: 5%;
    }

   .auto-style51 {
        
      
        margin-top:10px;
        width:60%;
        margin-left:19%;

   }
   .auto-style52 {
       color: white;     
       padding-top: 10px;
       font-size: 35px;
       margin-left: 40%;
       margin-right: 40%;
       font-family: 'MV Boli';

   }
   .headingp{
        padding: 10px;
       font-size: 25px;
       margin-left: 40%;
       margin-right: 40%;
       font-family: 'MV Boli';
       color: white;
       padding-bottom: 0px;  
       background-color: rgba(0,0,0,0.7);
       border-radius: 20px;
       
   }
           .auto-style53 {
               margin-left: 0px;
           }
             .auto-style54 {
              
               text-align:left;
           }
           .abcd{
              display: inline-table;
              border: 3px solid cornflowerblue;
              background-color: rgba(255,255,255,0.9);
           }
           .table1{
               background-image: linear-gradient(to right, rgba(100, 149, 237, 0.4), rgba(114, 188, 237, 0.4),rgba(255,255,255,0.6));
               margin-left: 33%;
               width: 30%;
               height:60%;
               margin-top:2px;
               border-radius: 30px;
               text-align:center;  
               color: navy;
               font-size:17px;
               font-weight:bold;
           }

           .purchasetable {
               
               height:50%;
           }

           .purchaselist{
               
               height: 50%;
               
           }

           .centerButtons{
               
               height:10%;
               width: 30%;
               margin-left: 35%;
               
           }
           .horizontal{
               color:black;
               width: 43%;
               height:1px;
              margin-left:28%;
              background-color:black;
              margin-top: -1.5%;
           }

           .textDecoration
           {
               color:black;
               font-weight:bolder;
               
           }
           .colPadding{
               
               padding:0.5px;
               height: 20px;
               padding-left: 13px;
               padding-right: 19px;
           }
           .headerstyle {
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
    
    
    
    <div class="auto-style41">

<div class="purchasetable">


    <h3  class="auto-style52">'PURCHASE'</h3>
        <asp:HiddenField ID="hfPurchaseId" runat="server" />
  

    <table class="table1">
        <tr>
                <td class="auto-style43">Product Name:</td>

                <td class="auto-style54">
                    <asp:DropDownList ID="DropDownProduct" runat="server" Height="26px" Width="132px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownProduct_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td class="auto-style43">Supplier Name :</td>
                <td class="auto-style54">
                    <asp:DropDownList ID="DropDownSupplier" runat="server" Height="26px" Width="132px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownSupplier_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">Quantity (Packet):</td>
                <td class="auto-style54">
                    <asp:TextBox ID="txtQuantity" runat="server" Height="26px" Width="128px" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">Others :</td>
                <td class="auto-style54">
                    <asp:TextBox ID="txtOthers" runat="server" TextMode="MultiLine" MaxLength="99" Height="26px" Width="128px" EnableTheming="False" CssClass="fixedTextBox"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
       
       
        
        <div class="centerButtons">
            
            <div class="auto-style46">
                <asp:Button ID="btnsave" runat="server" Text="Save" Font-Bold="True" OnClick="btnsave_Click" CssClass="xyz" />
            </div>
           
            
            <div class="auto-style49">
                <asp:Button ID="btndelete" runat="server" Text="Delete" Font-Bold="True" OnClick="btndelete_Click" CssClass="xyz" />
            </div>
            
            
            <div class="auto-style50">
                <asp:Button ID="btnclear" runat="server" Text="Clear" Font-Bold="True" OnClick="btnclear_Click" CssClass="xyz" />
            </div>
            
          <%--  <div class="auto-style44">
                &nbsp;
            </div>--%>
        </div>
        
        
        
        <div>
            <div>
                <asp:Label ID="lblsuccessmassage" runat="server" Text="" ForeColor="Green"></asp:Label>
                <asp:Label ID="lblerrormessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>


        <hr class="horizontal"/>

        <h3>
            <br />
            <span class="headingp" style="margin-bottom:50px;">PURCHASE LIST</span><br />
        </h3>   
        
        
        
        <div class="auto-style51">
        
            <asp:GridView CssClass="abcd" ID="purchaseGrid" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center" OnSelectedIndexChanged="purchaseGrid_SelectedIndexChanged">
                <Columns>

                    <asp:BoundField DataField="PurchaseId" HeaderText="Purchase Id" ItemStyle-CssClass="colPadding"  HeaderStyle-CssClass="headerstyle" />
                    
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" ItemStyle-CssClass="colPadding" HeaderStyle-CssClass="headerstyle"  />
                    
                    <asp:BoundField DataField="CompanyName" HeaderText="Supplier Name" ItemStyle-CssClass="colPadding" HeaderStyle-CssClass="headerstyle" />
                    
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-CssClass="colPadding" HeaderStyle-CssClass="headerstyle" />
                    
                    <asp:BoundField DataField="Others" HeaderText="Others" ItemStyle-CssClass="colPadding" HeaderStyle-CssClass="headerstyle" />
                    
                    <asp:TemplateField HeaderText="Options" ItemStyle-CssClass="colPadding2" HeaderStyle-CssClass="headerstyle" >
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("PurchaseId") %>' OnClick="lnk_onClick" CssClass="textDecoration">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                
                </Columns>
            </asp:GridView>
            <br />
        </div>

        </div>
</asp:Content>

