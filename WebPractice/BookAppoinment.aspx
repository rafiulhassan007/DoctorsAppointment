<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookAppoinment.aspx.cs" Inherits="WebPractice.BookAppoinment" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BookAp_c1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100px;
        }
        .auto-style2 {
            width: 158px;
            height: 22px;
        }
        .auto-style3 {
            width: 264px;
            height: 22px;
        }
        .auto-style4 {
            width: 158px;
            height: 33px;
        }
        .auto-style5 {
            width: 264px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
        .auto-style7 {
            height: 22px;
        }
        .auto-style11 {
            width: 100%;
            height: 258px;
        }
        .auto-style8 {
            height: 22px;
            width: 215px;
        }
        .auto-style9 {
            height: 33px;
            width: 215px;
        }
        .auto-style12 {
            width: 530px;
            height: 240px;
        }
        .auto-style14 {
            width: 105%;
            height: 236px;
            margin-right: 0px;
        }
        .auto-style15 {
            height: 240px;
        }
        .auto-style16 {
            height: 540px;
            width: 954px;
            margin-bottom: 0px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="BookAp_c2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:220px; margin-top:80px; background-color:rgba(52, 73, 94,0.6); " class="auto-style16" >
    
         <br />
    
         <table class="auto-style1">
             <tr>
                 <td class="auto-style2"></td>
                 <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chamber Info</td>
                 <td class="auto-style7"></td>
             </tr>
             <tr>
                 <td class="auto-style4">Name/Place:</td>
                 <td class="auto-style5">
                     <asp:Label ID="lvlNamePlace" runat="server"></asp:Label>
                 </td>
                 <td class="auto-style6"></td>
             </tr>
             <tr>
                 <td class="auto-style4">Day:</td>
                 <td class="auto-style5">
                     <asp:Label ID="lvlDay" runat="server"></asp:Label>
                 </td>
                 <td class="auto-style6"></td>
             </tr>
             <tr>
                 <td class="auto-style4">Time:</td>
                 <td class="auto-style5">
                     <asp:Label ID="lvlTime" runat="server"></asp:Label>
                 </td>
                 <td class="auto-style6">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">Serial Limit:</td>
                 <td class="auto-style5">
                     <asp:Label ID="lvlSLimit" runat="server"></asp:Label>
                 </td>
                 <td class="auto-style6"></td>
             </tr>
             <tr>
                 <td class="auto-style4">Your Serial:</td>
                 <td class="auto-style5">
                     <asp:Label ID="lvlYourSerial" runat="server"></asp:Label>
                 </td>
                 <td class="auto-style6">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style4">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
             </tr>
         </table>
         <table class="auto-style11">
             <tr>
                 <td class="auto-style12">
                     <table class="auto-style14">
                         <tr>
                             <td class="auto-style8"></td>
                             <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patient Info</td>
                         </tr>
                         <tr>
                             <td class="auto-style9">Name:</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="tbxNameP" runat="server" Width="254px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style9">Age:</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="tbxAgeP" runat="server" Width="254px"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style9">Gender:</td>
                             <td class="auto-style5">
                                 <asp:DropDownList ID="DDLgenderP" runat="server" Height="22px" Width="263px">
                                     <asp:ListItem>Male</asp:ListItem>
                                     <asp:ListItem>Female</asp:ListItem>
                                     <asp:ListItem>Other</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style9">Choose Date</td>
                             <td class="auto-style5">
                                 <asp:TextBox ID="tbxCalDate" runat="server" Width="194px" Enabled="False"></asp:TextBox>
                                 <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/designComponents/ic_calendar.png" OnClick="ImageButton1_Click" Width="27px" />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style9"></td>
                             <td class="auto-style5">
                                 <asp:Button ID="Button2" runat="server" Text="Book Appoinment" Width="203px" OnClick="Button2_Click" />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style9">&nbsp;</td>
                             <td class="auto-style5">
                                 <asp:Label ID="lvlfinalStatus" runat="server"></asp:Label>
                             </td>
                         </tr>
                     </table>
                 </td>
                 <td class="auto-style15">
                     <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged">
                         <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                         <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                         <OtherMonthDayStyle ForeColor="#CC9966" />
                         <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                         <SelectorStyle BackColor="#FFCC66" />
                         <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                         <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                     </asp:Calendar>
                 </td>
             </tr>
         </table>
    
    </div>
</asp:Content>
