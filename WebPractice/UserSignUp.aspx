<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="WebPractice.WebForm1"  MasterPageFile="~/Site.Master"%>


<asp:Content ID="UserSignUp_c1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 475px;
            height: 296px;
        }
        .auto-style5 {
            height: 296px;
        }
        .auto-style6 {
            width: 475px;
            height: 71px;
        }
        .auto-style8 {
            height: 71px;
        }
        .auto-style15 {
            height: 9px;
            width: 122px;
        }
        .auto-style11 {
            height: 9px;
        }
        .auto-style16 {
            height: 1px;
            width: 122px;
        }
        .auto-style10 {
            height: 1px;
        }
        .auto-style22 {
            height: 25px;
            width: 122px;
        }
        .auto-style24 {
            height: 25px;
            margin-left: 40px;
        }
        .auto-style25 {
            height: 60px;
            width: 122px;
        }
        .auto-style26 {
            height: 60px;
            margin-left: 40px;
        }
        .auto-style27 {
            height: 28px;
            width: 122px;
        }
        .auto-style28 {
            height: 28px;
            margin-left: 40px;
        }
        .auto-style29 {
            height: 6px;
            width: 122px;
        }
        .auto-style30 {
            height: 6px;
            margin-left: 40px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="DoctorSignUp_c2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height: 496px; margin-left:220px; margin-top:80px; margin-bottom:80px; background-color:rgba(52, 73, 94,0.6); margin-bottom: 0px; width: 954px;" >
    
         <br />
    
        <table style="width: 100%; height: 494px;">
            <tr>
                <td class="auto-style6">
                    <div style="height: 70px; font-size: 30px; text-align:center;">
                        Sign Up Form<br />
                        (User)
                    </div>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <div style="height: 332px; margin-top: 0px;">
                        <table style="width: 98%; height: 320px; margin-top: 10px;">
                            <tr>
                                <td class="auto-style15">Full Name:</td>
                                <td class="auto-style11">
                                    <asp:TextBox ID="tbxUFullName" runat="server" Width="313px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">Email:</td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="tbxUEmail" runat="server" Width="182px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Phone:</td>
                                <td class="auto-style24">
                                    <asp:TextBox ID="tbxUPhone" runat="server" Width="182px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Password</td>
                                <td class="auto-style24">
                                    <asp:TextBox ID="tbxUpass" runat="server" Width="182px" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">&nbsp;</td>
                                <td class="auto-style24">
                                    <asp:Button ID="btnSignUp1" runat="server" Text="Sign Up" Width="191px" OnClick="Button1_Click" />
                                    <asp:Button ID="btnCancle1" runat="server" style="margin-left: 12px" Text="Cancel" Width="102px" OnClick="btnCancle1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29"></td>
                                <td class="auto-style30">
                                    <asp:Label ID="lvlConfirmation" runat="server" Width="150px"></asp:Label>
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style25"></td>
                                <td class="auto-style26">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style27"></td>
                                <td class="auto-style28">
                                    <asp:Button ID="Button2" runat="server" Text="&lt;&lt;Back to Login" Width="189px" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td class="auto-style5">
                    <div style="height: 365px; background-image: url('designComponents/User_signUp.png'); background-size:cover; width: 394px; margin-left: 59px;">
                    </div>
                </td>
            </tr>
            </table>
    
    </div>
   
</asp:Content>