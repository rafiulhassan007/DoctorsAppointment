<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocSignUp.aspx.cs" Inherits="WebPractice.index" MasterPageFile="~/Site.Master" %>


<asp:Content ID="DoctorSignUp_c1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">
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
            height: 95px;
            width: 122px;
        }
        .auto-style26 {
            height: 95px;
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
            width: 98%;
            height: 326px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="DoctorSignUp_c2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height: 496px; margin-left:220px; margin-top:80px; margin-bottom:80px; background-color:rgba(52, 73, 94,0.6); margin-bottom: 0px; width: 954px;" >
    
        <table style="width: 100%; height: 494px;">
            <tr>
                <td class="auto-style6">
                    <div style="height: 70px; font-size: 50px; text-align:center;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Sign Up Form</div>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <div style="height: 332px; margin-top: 0px;">
                        <table style="margin-top: 10px;" class="auto-style29">
                            <tr>
                                <td class="auto-style15">Full Name:</td>
                                <td class="auto-style11">
                                    <asp:TextBox ID="tbxDfullname" runat="server" Width="313px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style16">Email:</td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="tbxDemail" runat="server" Width="182px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Password:</td>
                                <td class="auto-style24">
                                    <asp:TextBox ID="tbxDpassword" runat="server" Width="182px" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Speciality(1st):</td>
                                <td class="auto-style24">
                                    <asp:DropDownList ID="DDS1" runat="server" Height="22px" style="margin-left: 0px; margin-right: 3px" Width="322px">
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
                                <td class="auto-style22">Speciality(2nd):</td>
                                <td class="auto-style24">
                                    <asp:DropDownList ID="DDS2" runat="server" Height="22px" style="margin-left: 0px; margin-right: 3px" Width="322px">
                                        <asp:ListItem>None</asp:ListItem>
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
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Speciality(3rd):</td>
                                <td class="auto-style24">
                                    <asp:DropDownList ID="DDS3" runat="server" Height="22px" style="margin-left: 0px; margin-right: 3px" Width="322px">
                                        <asp:ListItem>None</asp:ListItem>
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
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25">About:</td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="tbxDabout" runat="server" Width="316px" Height="85px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27"></td>
                                <td class="auto-style28">
                                    <asp:Button ID="Button1" runat="server" Text="SignUp" Width="104px" OnClick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">&nbsp;</td>
                                <td class="auto-style28">
                                    <asp:Label ID="lvlDconf" runat="server" Width="220px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td class="auto-style5">
                    <div style="height: 365px; background-image: url('designComponents/Doc_signUp.png'); background-size:cover; width: 394px; margin-left: 59px;">
                    </div>
                </td>
            </tr>
            </table>
    
    </div>
   
</asp:Content>
