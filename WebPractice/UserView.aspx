<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="WebPractice.UserView" MasterPageFile="~/Site.Master"%>

<asp:Content ID="UserView_c1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">
    <title></title>
    
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 251px;
        }
        .auto-style2 {
        width: 449px;
    }
        .auto-style4 {
            height: 36px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 453px;
            height: 41px;
        }
        .auto-style7 {
            height: 41px;
        }
        .auto-style8 {
            width: 453px;
            height: 145px;
        }
        .auto-style9 {
            width: 6px;
            height: 145px;
        }
        .auto-style12 {
            width: 94%;
            height: 81px;
        }
        .auto-style17 {
            width: 98px;
            height: 30px;
        }
        .auto-style18 {
            height: 30px;
            width: 306px;
        }
        .auto-style19 {
            width: 98px;
            height: 31px;
        }
        .auto-style20 {
            height: 31px;
            width: 306px;
        }
        .auto-style21 {
            width: 103%;
            height: 105px;
        margin-right: 0px;
    }
        .auto-style26 {
            width: 109px;
            height: 32px;
        }
        .auto-style27 {
            width: 163px;
            height: 32px;
        }
        .auto-style31 {
            margin-left: 1px;
            margin-right: 6px;
        }
        .auto-style32 {
            margin-left: 1px;
        }
    .auto-style33 {
        height: 593px;
        width: 954px;
    }
        .auto-style38 {
            width: 453px;
            height: 22px;
        }
        .auto-style40 {
            height: 22px;
        }
        .auto-style41 {
            width: 100%;
            height: 290px;
        }
        .auto-style42 {
            width: 27px;
        }
        .auto-style43 {
            width: 27px;
            height: 33px;
        }
        .auto-style44 {
            height: 33px;
        }
        .auto-style45 {
            width: 27px;
            height: 236px;
        }
        .auto-style46 {
            height: 236px;
        }
        .auto-style47 {
            height: 33px;
            width: 885px;
        }
        .auto-style48 {
            height: 236px;
            width: 885px;
        }
        .auto-style49 {
            width: 885px;
        }
        .auto-style37 {
            height: 247px;
            width: 881px;
            margin-top: 0px;
        }
        .auto-style50 {
            height: 41px;
            width: 6px;
        }
        .auto-style51 {
            height: 22px;
            width: 6px;
        }
    </style>
    
    
</asp:Content>

<asp:Content ID="UserView_c2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="margin-left:220px; margin-top:80px; margin-bottom:80px; background-color:rgba(52, 73, 94,0.6); margin-bottom: 0px; " class="auto-style33" >
           
          <table class="auto-style1">
              <tr>
                  <td class="auto-style5">
                      <div class="auto-style4" style=" font-size: 30px; text-align:center;">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My
                          Profile
                      </div>
                  </td>
                  <td class="auto-style50"></td>
                  <td class="auto-style7"></td>
              </tr>
              <tr>
                  <td class="auto-style8">
                      <table class="auto-style12">
                          <tr>
                              <td class="auto-style17">Name:</td>
                              <td class="auto-style18">
                                  <asp:TextBox ID="tbxUPname" runat="server" Width="232px"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style17">Phone:</td>
                              <td class="auto-style18">
                                  <asp:TextBox ID="tbxUPphone" runat="server" Width="232px"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style19">Email:</td>
                              <td class="auto-style20">
                                  <asp:TextBox ID="tbxUPmail" runat="server" Width="232px" Enabled="False"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style17">
                                  &nbsp;</td>
                              <td class="auto-style18">
                                  <asp:Button ID="Button1" runat="server" Text="Update" Width="136px" OnClick="Button1_Click" />
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style17">
                                  &nbsp;</td>
                              <td class="auto-style18">
                                  <asp:Label ID="lvlStu" runat="server"></asp:Label>
                              </td>
                          </tr>
                      </table>
                  </td>
                  <td class="auto-style9">|<br />
                      |<br />
                      |<br />
                      |<br />
                      |<br />
                      |<br />
                      |<br />
                      |<br />
                      |</td>
                  <td class="auto-style2">
                      <table class="auto-style21">
                          <tr>
                              <td class="auto-style26">&nbsp;</td>
                              <td class="auto-style27">
                                  AppoinmentSearchZone</td>
                          </tr>
                          <tr>
                              <td class="auto-style26">Select City</td>
                              <td class="auto-style27">
                                  <asp:DropDownList ID="DDLsearchDcity" runat="server" CssClass="auto-style31" Height="22px" Width="211px">
                                      <asp:ListItem>Dhaka</asp:ListItem>
                                      <asp:ListItem>Rangpur</asp:ListItem>
                                      <asp:ListItem>Rajshahi</asp:ListItem>
                                      <asp:ListItem>Shylet</asp:ListItem>
                                      <asp:ListItem>Khulna</asp:ListItem>
                                      <asp:ListItem>Chittagong</asp:ListItem>
                                      <asp:ListItem>Barishal</asp:ListItem>
                                  </asp:DropDownList>
                                </td>
                          </tr>
                          <tr>
                              <td class="auto-style26">Speciality</td>
                              <td class="auto-style27">
                                    <asp:DropDownList ID="DDLsearchDs" runat="server" Height="21px" style="margin-right: 3px" Width="301px" CssClass="auto-style32">
                                        <asp:ListItem>Allergist</asp:ListItem>
                                        <asp:ListItem>Anesthesiologist</asp:ListItem>
                                        <asp:ListItem>Andrologist</asp:ListItem>
                                        <asp:ListItem>Cardiologist</asp:ListItem>
                                        <asp:ListItem>Cardiac Electrophysiologist</asp:ListItem>
                                        <asp:ListItem>Dermatologist</asp:ListItem>
                                        <asp:ListItem>Emergency Medicine</asp:ListItem>
                                        <asp:ListItem>Endocrinologist</asp:ListItem>
                                        <asp:ListItem>Epidemiologist</asp:ListItem>
                                        <asp:ListItem>Family Medicine Physician</asp:ListItem>
                                        <asp:ListItem>Gastroenterologist</asp:ListItem>
                                        <asp:ListItem>Geriatrician</asp:ListItem>
                                        <asp:ListItem>Hyperbaric Physician</asp:ListItem>
                                        <asp:ListItem>Hematologist</asp:ListItem>
                                        <asp:ListItem>Hepatologist</asp:ListItem>
                                        <asp:ListItem>Immunologist</asp:ListItem>
                                        <asp:ListItem>Infectious Disease Specialist</asp:ListItem>
                                        <asp:ListItem>Intensivist</asp:ListItem>
                                        <asp:ListItem>Internal Medicine Specialist</asp:ListItem>
                                        <asp:ListItem>Maxillofacial Surgeon / Oral Surgeon</asp:ListItem>
                                        <asp:ListItem>Medical Geneticist</asp:ListItem>
                                        <asp:ListItem>Neonatologist</asp:ListItem>
                                        <asp:ListItem>Nephrologist</asp:ListItem>
                                        <asp:ListItem>Neurologist</asp:ListItem>
                                        <asp:ListItem>Neurosurgeon</asp:ListItem>
                                        <asp:ListItem>Nuclear Medicine Specialist</asp:ListItem>
                                        <asp:ListItem>Obstetrician/Gynecologist (OB/GYN)</asp:ListItem>
                                        <asp:ListItem>Occupational Medicine Specialist</asp:ListItem>
                                        <asp:ListItem>Oncologist</asp:ListItem>
                                        <asp:ListItem>Ophthalmologist</asp:ListItem>
                                        <asp:ListItem>Orthopedic Surgeon / Orthopedist</asp:ListItem>
                                        <asp:ListItem>Otolaryngologist</asp:ListItem>
                                        <asp:ListItem>Parasitologist</asp:ListItem>
                                        <asp:ListItem>Pathologist</asp:ListItem>
                                        <asp:ListItem>Perinatologist</asp:ListItem>
                                        <asp:ListItem>Periodontist</asp:ListItem>
                                        <asp:ListItem>Pediatrician</asp:ListItem>
                                        <asp:ListItem>Physiatrist</asp:ListItem>
                                        <asp:ListItem>Plastic Surgeon</asp:ListItem>
                                        <asp:ListItem>Psychiatrist</asp:ListItem>
                                        <asp:ListItem>Pulmonologist</asp:ListItem>
                                        <asp:ListItem>Radiologist</asp:ListItem>
                                        <asp:ListItem>Rheumatologist</asp:ListItem>
                                        <asp:ListItem>Sleep Disorders Specialist</asp:ListItem>
                                        <asp:ListItem>Spinal Cord Injury Specialist</asp:ListItem>
                                        <asp:ListItem>Sports Medicine Specialist</asp:ListItem>
                                        <asp:ListItem>Surgeon</asp:ListItem>
                                        <asp:ListItem>Thoracic Surgeon</asp:ListItem>
                                        <asp:ListItem>Urologist</asp:ListItem>
                                        <asp:ListItem>Vascular Surgeon</asp:ListItem>
                                        <asp:ListItem>Veterinarian</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                          </tr>
                          <tr>
                              <td class="auto-style26">&nbsp;</td>
                              <td class="auto-style27">
                                    <asp:Button ID="Button2" runat="server" Text="Find Doctors" Width="213px" OnClick="Button2_Click1" />
                                </td>
                          </tr>
                          <tr>
                              <td class="auto-style26">&nbsp;</td>
                              <td class="auto-style27">
                                    &nbsp;</td>
                          </tr>
                      </table>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style38"></td>
                  <td class="auto-style51"></td>
                  <td class="auto-style40">
                      &nbsp;</td>
              </tr>
              </table>
           
          <table class="auto-style41">
              <tr>
                  <td class="auto-style43"></td>
                  <td class="auto-style47">
                      <div style="text-align:center">
                          Doctors along with chamber info</div>
                  </td>
                  <td class="auto-style44"></td>
              </tr>
              <tr>
                  <td class="auto-style45"></td>
                  <td class="auto-style48">
                                 <div class="auto-style37">
                                      <asp:GridView ID="dataDoc" runat="server" AutoGenerateColumns="False" Width="875px"  >
                                          <Columns>
                                             <asp:BoundField DataField="id" HeaderText ="C. Code" />
                                              <asp:BoundField DataField="name" HeaderText ="Doctors Name" />
                                              <asp:BoundField DataField="about" HeaderText ="About" />
                                              <asp:BoundField DataField="a_name" HeaderText ="Chamber" />
                                              <asp:TemplateField HeaderText="Appointment" >
                                                  <ItemTemplate>
                                                      <asp:Button ID="Button3" runat="server" BackColor="#993399" BorderStyle="None" CommandArgument='<%# Eval("id")%>' ForeColor="#FFFFCC" Height="26px" OnClick="Button3_Click" Text="Book" Width="80px" />
                                                  </ItemTemplate>
                                                  <ItemStyle Width="81px" />
                                              </asp:TemplateField>
                                              </Columns>
                                      </asp:GridView>
                                  </div>
                              </td>
                  <td class="auto-style46"></td>
              </tr>
              <tr>
                  <td class="auto-style42">&nbsp;</td>
                  <td class="auto-style49">
                      <asp:Label ID="lvlTest" runat="server"></asp:Label>
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table>
           
    </div>
   
</asp:Content>