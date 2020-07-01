<%@ Page Title="Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
     *{
          margin:0;
       padding: 0%;
     }
        
      .auto-style41 {
        height:100%;
        
    }
    .auto-stylesave {
       text-align: right;
width: 85px;
padding-right: 10px;
    }
    .auto-styledelete {
           
    width: 40%;
    
            
        }
    .auto-styleclear {
     
    width: 139px;
    
   
    }


        .btns {
            border-radius: 8px;
            background-color: rgba(0, 0, 0, 0.9);
            color: wheat;
            padding: 2%;
            width: 41%;
            font-size:14px;
           
        }

        .btns1 {
            border-radius: 8px;
            background-color: rgba(0, 0, 0, 0.9);
            color: wheat;
            padding: 4px;
            width: 66%;
            margin-top: 1px;
        }

        .btns2 {
            border-radius: 8px;
            background-color: rgba(0, 0, 0, 0.9);
            color: wheat;
            padding: 4px;
            width: 53%;
            font-weight: bold;
        }


        .auto-style551 {
            
        margin-top:3px;
        width:60%;
        margin-left:32%;
       
        }

        .auto-style52 {
            width: 30%;
            color: white;
            padding-top: 10px;
            font-size: 30px;
            margin-left: 35%;
            margin-right: 40%;
            font-family: 'MV Boli';
            
        }

        .productable{
         
            width:50%;
            height: 35%;    
            margin-left:235px;
            
        }
         .table2{
               background-image: linear-gradient(to right, rgba(100, 149, 237, 0.4), rgba(114, 188, 237, 0.4),rgba(255,255,255,0.6));
               margin-left: 33%;
               width: 60%;
               height:70%;
               margin-top:2px;
               border-radius: 30px;
               text-align:center;  
               color: navy;
               font-size:17px;
               font-weight:bold;
               padding:32px;
           }

        .tablebtns {
            
            width: 50%;
            margin-left:225px;
           
        }
         .horizontalp{
               color:black;
               width: 43%;
               height:1px;
              margin-left:28%;
              background-color:black;
              margin-top: 0.5%;
           }
         .headingpr{
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
         .abcde{
             display: inline-table;
              border: 3px solid cornflowerblue;
              background-color: rgba(255,255,255,0.9);
              text-align:center;
         }
         
        .colPaddingp{
               
               padding:3px;
               height: 20px;
                              padding-left: 13px;
               padding-right: 19px;
              
           }
        .headerstylep {
            color: navy;
            font-size: 18px;
            padding: 6px;
            text-decoration: underline;
        }
         .textDecorationp
           {
               color:black;
               font-weight:bolder;
               
               
           }
         
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style41">


    <h3 class="auto-style52">'PRODUCT REGISTRATION'</h3>
        <asp:HiddenField ID="hfProductId" runat="server" />

        <div class="productable">

    <table class="table2">
        <tr>
            <td class="auto-style43">Product Name:</td>
            <td class="auto-style44">
                <asp:TextBox ID="txtproname" runat="server" Width="150px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style43" >Product Description:</td>
            <td class="auto-style44">
                <asp:TextBox ID="txtprodes" runat="server" TextMode="MultiLine" MaxLength="99" Width="150px"></asp:TextBox>
            </td>
        </tr>
        
        </table>

    <table class="tablebtns">
        <tr>
            <td class="auto-stylesave" >
                <asp:Button ID="btnsave" runat="server" Text="Save" Font-Bold="True" OnClick="btnsave_Click"  CssClass="btns"/>
            </td>
            <td class="auto-styledelete">
                <asp:Button ID="btndelete" runat="server" Text="Delete"  Font-Bold="True" OnClick="btndelete_Click" CssClass="btns1"/>
            </td>
          <%--  <td class="auto-styleclear" colspan="1">
                <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click" CssClass="btns2"/>
            </td>--%>
           
        </tr>
        <tr>
            <td colspan="2
">
                <asp:Label ID="lblsuccessmassage" runat="server" Text="" ForeColor="Green"></asp:Label>
                <asp:Label ID="lblerrormessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

 </div>

         <hr class="horizontalp"/>

        <h4 style="margin-top: 16px;">
            <br />
            <span class="headingpr">PRODUCT LIST    </span><br />
        <br />
        </h4>
        
        
        
        
        
        <div class="auto-style551">
        <asp:GridView CssClass="abcde" ID="productGrid" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center">
            <columns>
                <asp:BoundField Datafield="ProductId" HeaderText="Product Id" ItemStyle-CssClass="colPaddingp"  HeaderStyle-CssClass="headerstylep"/>
                <asp:BoundField Datafield="ProductName" HeaderText="Product Name"  ItemStyle-CssClass="colPaddingp"  HeaderStyle-CssClass="headerstylep" />
                <asp:BoundField DataField="ProductDescription" HeaderText="Product Description"  ItemStyle-CssClass="colPaddingp"  HeaderStyle-CssClass="headerstylep" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("ProductId") %>' OnClick="lnk_onClick" Width="66px" CssClass="textDecorationp">Select</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </columns>
        </asp:GridView>
            <br />
        </div>
</div>
</asp:Content>

