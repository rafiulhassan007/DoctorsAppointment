<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorsProfile.aspx.cs" Inherits="WebPractice.DoctorsProfile" MasterPageFile="~/Site.Master" %>

<asp:Content ID="DoctorsProfile_c1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">
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
            font-size: 50px;
        }
        .auto-style30 {
            margin-left: 11px;
        }
        .auto-style33 {
            width: 153px;
        }
        .auto-style34 {
            width: 100%;
            height: 229px;
        }
        .auto-style35 {
            width: 153px;
            height: 29px;
        }
        .auto-style36 {
            height: 29px;
        }
        .auto-style37 {
            width: 153px;
            height: 22px;
        }
        .auto-style38 {
            height: 22px;
        }
        .auto-style39 {
            width: 153px;
            height: 33px;
        }
        .auto-style40 {
            height: 33px;
        }
        .auto-style41 {
            width: 153px;
            height: 26px;
        }
        .auto-style42 {
            height: 26px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="DoctorsProfile_c2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height: 496px; margin-left:220px; margin-top:80px; margin-bottom:80px; background-color:rgba(52, 73, 94,0.6); margin-bottom: 0px; width: 954px;" >
    
        <table style="width: 100%; height: 494px;">
            <tr>
                <td class="auto-style6">
                    <div style="height: 70px; text-align:center;" class="auto-style29">
                        Profile</div>
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
                                    <asp:TextBox ID="tbxUfullname" runat="server" Width="313px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Password:</td>
                                <td class="auto-style24">
                                    <asp:TextBox ID="tbxDPPas" runat="server" Width="182px" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Speciality(1st):</td>
                                <td class="auto-style24">
                                    <asp:DropDownList ID="DDL1" runat="server" Height="22px" style="margin-left: 0px; margin-right: 3px" Width="322px">
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
                                    <asp:DropDownList ID="DDL2" runat="server" Height="22px" style="margin-left: 0px; margin-right: 3px" Width="322px">
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
                                    <asp:DropDownList ID="DDL3" runat="server" Height="22px" style="margin-left: 0px; margin-right: 3px" Width="322px">
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
                                    <asp:TextBox ID="tbxDPabout" runat="server" Width="316px" Height="85px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27"></td>
                                <td class="auto-style28">
                                    <asp:Button ID="Button1" runat="server" Text="Update" Width="104px" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" Width="104px" CssClass="auto-style30" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27">&nbsp;</td>
                                <td class="auto-style28">
                                    <asp:Label ID="lvlStatus" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td class="auto-style5">
                    <table class="auto-style34">
                        <tr>
                            <td class="auto-style39"></td>
                            <td class="auto-style40">
                                &lt;&lt;APPOINTMENT SLOT&gt;&gt;</td>
                        </tr>
                        <tr>
                            <td class="auto-style41">Appoinment</td>
                            <td class="auto-style42">
                                <asp:DropDownList ID="DDLApname" runat="server" Height="22px" Width="209px" OnSelectedIndexChanged="DDLApname_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style35">Name/Place:</td>
                            <td class="auto-style36">
                                <asp:TextBox ID="tbxAPname" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style41">Select City:</td>
                            <td class="auto-style42">
                                  <asp:DropDownList ID="DDLcity" runat="server" Height="22px" Width="208px">
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
                            <td class="auto-style33">Day:</td>
                            <td>
                                  <asp:DropDownList ID="DDLday" runat="server" Height="22px" Width="208px">
                                      <asp:ListItem>Saturday</asp:ListItem>
                                      <asp:ListItem>Sunday</asp:ListItem>
                                      <asp:ListItem>Monday</asp:ListItem>
                                      <asp:ListItem>Tuesday</asp:ListItem>
                                      <asp:ListItem>Wednesday</asp:ListItem>
                                      <asp:ListItem>Thursday</asp:ListItem>
                                      <asp:ListItem>Friday</asp:ListItem>
                                  </asp:DropDownList>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style37">Time:</td>
                            <td class="auto-style38">
                                <asp:TextBox ID="tbxTime" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style37">Max. Appoinments:</td>
                            <td class="auto-style38">
                                  <asp:DropDownList ID="DDLmax" runat="server" Height="22px" Width="208px">
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                      <asp:ListItem>15</asp:ListItem>
                                      <asp:ListItem>20</asp:ListItem>
                                      <asp:ListItem>22</asp:ListItem>
                                      <asp:ListItem>23</asp:ListItem>
                                      <asp:ListItem>24</asp:ListItem>
                                      <asp:ListItem>25</asp:ListItem>
                                      <asp:ListItem>26</asp:ListItem>
                                      <asp:ListItem>27</asp:ListItem>
                                      <asp:ListItem>28</asp:ListItem>
                                      <asp:ListItem>29</asp:ListItem>
                                      <asp:ListItem>30</asp:ListItem>
                                      <asp:ListItem>31</asp:ListItem>
                                      <asp:ListItem>32</asp:ListItem>
                                      <asp:ListItem>33</asp:ListItem>
                                      <asp:ListItem>34</asp:ListItem>
                                      <asp:ListItem>35</asp:ListItem>
                                      <asp:ListItem>36</asp:ListItem>
                                      <asp:ListItem>37</asp:ListItem>
                                      <asp:ListItem>38</asp:ListItem>
                                      <asp:ListItem>39</asp:ListItem>
                                      <asp:ListItem>40</asp:ListItem>
                                      <asp:ListItem>41</asp:ListItem>
                                      <asp:ListItem>42</asp:ListItem>
                                      <asp:ListItem>43</asp:ListItem>
                                      <asp:ListItem>44</asp:ListItem>
                                      <asp:ListItem>45</asp:ListItem>
                                      <asp:ListItem>46</asp:ListItem>
                                      <asp:ListItem>47</asp:ListItem>
                                      <asp:ListItem>48</asp:ListItem>
                                      <asp:ListItem>49</asp:ListItem>
                                      <asp:ListItem>50</asp:ListItem>
                                  </asp:DropDownList>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style37">Status:</td>
                            <td class="auto-style38">
                                <asp:RadioButtonList ID="RBListStatus" runat="server" Width="125px">
                                    <asp:ListItem Selected="True">Active</asp:ListItem>
                                    <asp:ListItem>Inactive</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style37">
                                <asp:Label ID="lvlSlotStatus" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style38">
                                <asp:Button ID="Button3" runat="server" Text="Update/Insert" Width="209px" OnClick="Button3_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style37">&nbsp;</td>
                            <td class="auto-style38">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style37">&nbsp;</td>
                            <td class="auto-style38">
                                <asp:Button ID="btnSeeApp" runat="server" OnClick="btnSeeApp_Click" Text="See Appointments" Width="210px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
    
    </div>
   
</asp:Content>
