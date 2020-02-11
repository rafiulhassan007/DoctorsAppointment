<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorsChamber.aspx.cs" Inherits="WebPractice.DoctorsChamber" MasterPageFile="~/Site.Master" %>

<asp:Content ID="DocChamber1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 477px;
        }
        .auto-style2 {
            height: 436px;
        }
        .auto-style3 {
            height: 429px;
        }
    </style>

</asp:Content>

<asp:Content ID="DocChamber2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 496px; margin-left:220px; margin-top:80px; margin-bottom:80px; background-color:rgba(52, 73, 94,0.6); margin-bottom: 0px; width: 954px;" >


        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <div class="auto-style3">
                        <asp:GridView ID="GridViewDocCha" runat="server" Width="946px" OnSelectedIndexChanged="GridViewDocCha_SelectedIndexChanged" AutoGenerateColumns="False" >
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="Patient Name" />
                                <asp:BoundField DataField="age" HeaderText="Age" />
                                <asp:BoundField DataField="serial" HeaderText="Serial" />
                                <asp:BoundField DataField="a_name" HeaderText="Chamber" />
                                <asp:BoundField DataField="citizen_mail" HeaderText="Booking Mail" />
                                <asp:BoundField DataField="date" HeaderText="Date" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>

