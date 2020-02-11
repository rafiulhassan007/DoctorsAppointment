<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebPractice.Home" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 55px;
            height: 5px;
        }
        .auto-style2 {
            width: 475px;
            height: 5px;
        }
        .auto-style3 {
            width: 475px;
            height: 296px;
        }
        .auto-style4 {
            width: 55px;
            height: 296px;
        }
        .auto-style5 {
            height: 296px;
        }
        .auto-style6 {
            width: 475px;
            height: 71px;
        }
        .auto-style7 {
            width: 55px;
            height: 71px;
        }
        .auto-style8 {
            height: 71px;
        }
        .auto-style10 {
            height: 1px;
        }
        .auto-style11 {
            height: 9px;
        }
        .auto-style15 {
            height: 9px;
            width: 93px;
        }
        .auto-style16 {
            height: 1px;
            width: 93px;
        }
        .auto-style18 {
            height: 9px;
            width: 11px;
        }
        .auto-style19 {
            height: 1px;
            width: 11px;
        }
        .auto-style21 {
            height: 5px;
        }
        .auto-style22 {
            height: 25px;
            width: 93px;
        }
        .auto-style23 {
            height: 25px;
            width: 11px;
        }
        .auto-style24 {
            height: 25px;
        }
        .auto-style25 {
            width: 98%;
            height: 115px;
        }
        .auto-style26 {
            margin-left: 0px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="headerbox" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height: 496px; margin-left:220px; margin-top:80px; margin-bottom:80px; background-color:rgba(52, 73, 94,0.6); margin-bottom: 0px; width: 954px;" >
    
        <table style="width: 100%; height: 494px;">
            <tr>
                <td class="auto-style6">
                    <div style="height: 70px; font-size: 50px; text-align:center;">
                        DoctorsAppoint
                    </div>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <div style="height: 164px">
                        <table style="margin-top: 10px;" class="auto-style25">
                            <tr>
                                <td class="auto-style15">Email</td>
                                <td class="auto-style18"></td>
                                <td class="auto-style11">
                                    <asp:TextBox ID="tbxLogMail" runat="server" Width="182px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">Password</td>
                                <td class="auto-style19"></td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="tbxLogPass" runat="server" Width="182px" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22"></td>
                                <td class="auto-style23"></td>
                                <td class="auto-style24">
                                    <asp:Button ID="Button1" runat="server" Text="Login" Width="190px" OnClick="Button1_Click" CssClass="auto-style26" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">&nbsp;</td>
                                <td class="auto-style23">&nbsp;</td>
                                <td class="auto-style24">
                                    <asp:Label ID="lvlLogInStatus" runat="server" Width="200px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <div style="height: 292px; margin-top: 2px;white-space: normal">
                        <p style="margin-left:20px; word-wrap: break-word">
                            DoctorsAppoint makes the appointment in real time with your Doctor .</p>
                        <p style="margin-left:20px; word-wrap: break-word">
                            DoctorsAppoint aims to be the market leader in online medical appointments in Bangladesh. We are founded by a team of experienced technology and medical professionals in Bangladesh. DoctorsAppoint founders include two practicing physicians who manage a group of practices across the Dhaka City area.</p>
                        <p style="margin-left:20px; word-wrap: break-word">
                            Since going live, DoctorsAppoint does not have experienced exponential growth in the number of appointments available on DoctorsAppoint , and with over 80% growth in new online appointments made in some practices every month!</p>
                    </div>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <div style="height: 295px; background-image: url('designComponents/Doc_Home.png'); background-size:cover;">
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style1"></td>
                <td class="auto-style21"></td>
            </tr>
        </table>
    
    </div>
   
</asp:Content>