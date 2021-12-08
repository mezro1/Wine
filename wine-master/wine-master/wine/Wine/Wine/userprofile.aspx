<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Wine.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>პროფილი</h4>
                           <span>ანგარიშის სტატუსი - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="თქვენი სტატუსი"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>სახელი და გვარი</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>დაბადების თარიღი</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>საკონტაქტო</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" " TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>მეილი</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=" " TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>ქვეყანა</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="მაგ: საქართველო" Value="select" />
                              <asp:ListItem Text="Afganistan" Value="Afganistan"/>
                              <asp:ListItem Text="Albania" Value="Albania"/>
                              <asp:ListItem Text="Algeria" Value="Algeria"/>
                              <asp:ListItem Text="American Samoa" Value="American Samoa"/>
                              <asp:ListItem Text="Andorra" Value="Andorra"/>
                              <asp:ListItem Text="Angola" Value="Angola"/>
                              <asp:ListItem Text="Anguilla" Value="Anguilla"/>
                              <asp:ListItem Text="Antigua & Barbuda" Value="Antigua & Barbuda"/>
                              <asp:ListItem Text="Argentina" Value="Argentina"/>
                              <asp:ListItem Text="Armenia" Value="Armenia"/>
                              <asp:ListItem Text="Aruba" Value="Aruba"/>
                              <asp:ListItem Text="Australia" Value="Australia"/>
                              <asp:ListItem Text="Austria" Value="Austria"/>
                              <asp:ListItem Text="Azerbaijan" Value="Azerbaijan"/>
                              <asp:ListItem Text="Bahamas" Value="Bahamas"/>
                              <asp:ListItem Text="Bahrain" Value="Bahrain"/>
                              <asp:ListItem Text="Bangladesh" Value="Bangladesh"/>
                              <asp:ListItem Text="Barbados" Value="Barbados"/>
                              <asp:ListItem Text="Belarus" Value="Belarus"/>
                              <asp:ListItem Text="Belgium" Value="Belgium"/>
                              <asp:ListItem Text="Belize" Value="Belize"/>
                              <asp:ListItem Text="Benin" Value="Benin"/>
                              <asp:ListItem Text="Bermuda" Value="Bermuda"/>
                              <asp:ListItem Text="Bhutan" Value="Bhutan"/>
                              <asp:ListItem Text="Bolivia" Value="Bolivia"/>
                              <asp:ListItem Text="Bonaire" Value="Bonaire"/>
                              <asp:ListItem Text="Bosnia & Herzegovina" Value="Bosnia & Herzegovina"/>
                              <asp:ListItem Text="Botswana" Value="Botswana"/>
                              <asp:ListItem Text="Brazil" Value="Brazil"/>
                              <asp:ListItem Text="British Indian Ocean Ter" Value="British Indian Ocean Ter"/>
                              <asp:ListItem Text="Brunei" Value="Brunei"/>
                              <asp:ListItem Text="Bulgaria" Value="Bulgaria"/>
                              <asp:ListItem Text="Burkina Faso" Value="Burkina Faso"/>
                              <asp:ListItem Text="Burundi" Value="Burundi"/>
                              <asp:ListItem Text="Cambodia" Value="Cambodia"/>
                              <asp:ListItem Text="Cameroon" Value="Cameroon"/>
                              <asp:ListItem Text="Canada" Value="Canada"/>
                              <asp:ListItem Text="Canary Islands" Value="Canary Islands"/>
                              <asp:ListItem Text="Cape Verde" Value="Cape Verde"/>
                              <asp:ListItem Text="Cayman Islands" Value="Cayman Islands"/>
                              <asp:ListItem Text="Central African Republic" Value="Central African Republic"/>
                              <asp:ListItem Text="Chad" Value="Chad"/>
                              <asp:ListItem Text="Channel Islands" Value="Channel Islands"/>
                              <asp:ListItem Text="Chile" Value="Chile"/>
                              <asp:ListItem Text="China" Value="China"/>
                              <asp:ListItem Text="Christmas Island" Value="Christmas Island"/>
                              <asp:ListItem Text="Cocos Island" Value="Cocos Island"/>
                              <asp:ListItem Text="Colombia" Value="Colombia"/>
                              <asp:ListItem Text="Comoros" Value="Comoros"/>
                              <asp:ListItem Text="Congo" Value="Congo"/>
                              <asp:ListItem Text="Cook Islands" Value="Cook Islands"/>
                              <asp:ListItem Text="Costa Rica" Value="Costa Rica"/>
                              <asp:ListItem Text="Cote DIvoire" Value="Cote DIvoire"/>
                              <asp:ListItem Text="Croatia" Value="Croatia"/>
                              <asp:ListItem Text="Cuba" Value="Cuba"/>
                              <asp:ListItem Text="Curaco" Value="Curaco"/>
                              <asp:ListItem Text="Cyprus" Value="Cyprus"/>
                              <asp:ListItem Text="Czech Republic" Value="Czech Republic"/>
                              <asp:ListItem Text="Denmark" Value="Denmark"/>
                              <asp:ListItem Text="Djibouti" Value="Djibouti"/>
                              <asp:ListItem Text="Dominica" Value="Dominica"/>
                              <asp:ListItem Text="Dominican Republic" Value="Dominican Republic"/>
                              <asp:ListItem Text="East Timor" Value="East Timor"/>
                              <asp:ListItem Text="Ecuador" Value="Ecuador"/>
                              <asp:ListItem Text="Egypt" Value="Egypt"/>
                              <asp:ListItem Text="El Salvador" Value="El Salvador"/>
                              <asp:ListItem Text="Equatorial Guinea" Value="Equatorial Guinea"/>
                              <asp:ListItem Text="Eritrea" Value="Eritrea"/>
                              <asp:ListItem Text="Estonia" Value="Estonia"/>
                              <asp:ListItem Text="Ethiopia" Value="Ethiopia"/>
                              <asp:ListItem Text="Falkland Islands" Value="Falkland Islands"/>
                              <asp:ListItem Text="Faroe Islands" Value="Faroe Islands"/>
                              <asp:ListItem Text="Fiji" Value="Fiji"/>
                              <asp:ListItem Text="Finland" Value="Finland"/>
                              <asp:ListItem Text="France" Value="France"/>
                              <asp:ListItem Text="French Guiana" Value="French Guiana"/>
                              <asp:ListItem Text="French Polynesia" Value="French Polynesia"/>
                              <asp:ListItem Text="French Southern Ter" Value="French Southern Ter"/>
                              <asp:ListItem Text="Gabon" Value="Gabon"/>
                              <asp:ListItem Text="Gambia" Value="Gambia"/>
                              <asp:ListItem Text="Georgia" Value="Georgia"/>
                              <asp:ListItem Text="Germany" Value="Germany"/>
                              <asp:ListItem Text="Ghana" Value="Ghana"/>
                              <asp:ListItem Text="Gibraltar" Value="Gibraltar"/>
                              <asp:ListItem Text="Great Britain" Value="Great Britain"/>
                              <asp:ListItem Text="Greece" Value="Greece"/>
                              <asp:ListItem Text="Greenland" Value="Greenland"/>
                              <asp:ListItem Text="Grenada" Value="Grenada"/>
                              <asp:ListItem Text="Guadeloupe" Value="Guadeloupe"/>
                              <asp:ListItem Text="Guam" Value="Guam"/>
                              <asp:ListItem Text="Guatemala" Value="Guatemala"/>
                              <asp:ListItem Text="Guinea" Value="Guinea"/>
                              <asp:ListItem Text="Guyana" Value="Guyana"/>
                              <asp:ListItem Text="Haiti" Value="Haiti"/>
                              <asp:ListItem Text="Hawaii" Value="Hawaii"/>
                              <asp:ListItem Text="Honduras" Value="Honduras"/>
                              <asp:ListItem Text="Hong Kong" Value="Hong Kong"/>
                              <asp:ListItem Text="Hungary" Value="Hungary"/>
                              <asp:ListItem Text="Iceland" Value="Iceland"/>
                              <asp:ListItem Text="Indonesia" Value="Indonesia"/>
                              <asp:ListItem Text="India" Value="India"/>
                              <asp:ListItem Text="Iran" Value="Iran"/>
                              <asp:ListItem Text="Iraq" Value="Iraq"/>
                              <asp:ListItem Text="Ireland" Value="Ireland"/>
                              <asp:ListItem Text="Isle of Man" Value="Isle of Man"/>
                              <asp:ListItem Text="Israel" Value="Israel"/>
                              <asp:ListItem Text="Italy" Value="Italy"/>
                              <asp:ListItem Text="Jamaica" Value="Jamaica"/>
                              <asp:ListItem Text="Japan" Value="Japan"/>
                              <asp:ListItem Text="Jordan" Value="Jordan"/>
                              <asp:ListItem Text="Kazakhstan" Value="Kazakhstan"/>
                              <asp:ListItem Text="Kenya" Value="Kenya"/>
                              <asp:ListItem Text="Kiribati" Value="Kiribati"/>
                              <asp:ListItem Text="Korea North" Value="Korea North"/>
                              <asp:ListItem Text="Korea Sout" Value="Korea Sout"/>
                              <asp:ListItem Text="Kuwait" Value="Kuwait"/>
                              <asp:ListItem Text="Kyrgyzstan" Value="Kyrgyzstan"/>
                              <asp:ListItem Text="Laos" Value="Laos"/>
                              <asp:ListItem Text="Latvia" Value="Latvia"/>
                              <asp:ListItem Text="Lebanon" Value="Lebanon"/>
                              <asp:ListItem Text="Lesotho" Value="Lesotho"/>
                              <asp:ListItem Text="Liberia" Value="Liberia"/>
                              <asp:ListItem Text="Libya" Value="Libya"/>
                              <asp:ListItem Text="Liechtenstein" Value="Liechtenstein"/>
                              <asp:ListItem Text="Lithuania" Value="Lithuania"/>
                              <asp:ListItem Text="Luxembourg" Value="Luxembourg"/>
                              <asp:ListItem Text="Macau" Value="Macau"/>
                              <asp:ListItem Text="Macedonia" Value="Macedonia"/>
                              <asp:ListItem Text="Madagascar" Value="Madagascar"/>
                              <asp:ListItem Text="Malaysia" Value="Malaysia"/>
                              <asp:ListItem Text="Malawi" Value="Malawi"/>
                              <asp:ListItem Text="Maldives" Value="Maldives"/>
                              <asp:ListItem Text="Mali" Value="Mali"/>
                              <asp:ListItem Text="Malta" Value="Malta"/>
                              <asp:ListItem Text="Marshall Islands" Value="Marshall Islands"/>
                              <asp:ListItem Text="Martinique" Value="Martinique"/>
                              <asp:ListItem Text="Mauritania" Value="Mauritania"/>
                              <asp:ListItem Text="Mauritius" Value="Mauritius"/>
                              <asp:ListItem Text="Mayotte" Value="Mayotte"/>
                              <asp:ListItem Text="Mexico" Value="Mexico"/>
                              <asp:ListItem Text="Midway Islands" Value="Midway Islands"/>
                              <asp:ListItem Text="Moldova" Value="Moldova"/>
                              <asp:ListItem Text="Monaco" Value="Monaco"/>
                              <asp:ListItem Text="Mongolia" Value="Mongolia"/>
                              <asp:ListItem Text="Montserrat" Value="Montserrat"/>
                              <asp:ListItem Text="Morocco" Value="Morocco"/>
                              <asp:ListItem Text="Mozambique" Value="Mozambique"/>
                              <asp:ListItem Text="Myanmar" Value="Myanmar"/>
                              <asp:ListItem Text="Nambia" Value="Nambia"/>
                              <asp:ListItem Text="Nauru" Value="Nauru"/>
                              <asp:ListItem Text="Nepal" Value="Nepal"/>
                              <asp:ListItem Text="Netherland Antilles" Value="Netherland Antilles"/>
                              <asp:ListItem Text="Netherlands" Value="Netherlands"/>
                              <asp:ListItem Text="Nevis" Value="Nevis"/>
                              <asp:ListItem Text="New Caledonia" Value="New Caledonia"/>
                              <asp:ListItem Text="New Zealand" Value="New Zealand"/>
                              <asp:ListItem Text="Nicaragua" Value="Nicaragua"/>
                              <asp:ListItem Text="Niger" Value="Niger"/>
                              <asp:ListItem Text="Nigeria" Value="Nigeria"/>
                              <asp:ListItem Text="Niue" Value="Niue"/>
                              <asp:ListItem Text="Norfolk Island" Value="Norfolk Island"/>
                              <asp:ListItem Text="Norway" Value="Norway"/>
                              <asp:ListItem Text="Oman" Value="Oman"/>
                              <asp:ListItem Text="Pakistan" Value="Pakistan"/>
                              <asp:ListItem Text="Palau Island" Value="Palau Island"/>
                              <asp:ListItem Text="Palestine" Value="Palestine"/>
                              <asp:ListItem Text="Panama" Value="Panama"/>
                              <asp:ListItem Text="Papua New Guinea" Value="Papua New Guinea"/>
                              <asp:ListItem Text="Paraguay" Value="Paraguay"/>
                              <asp:ListItem Text="Peru" Value="Peru"/>
                              <asp:ListItem Text="Phillipines" Value="Phillipines"/>
                              <asp:ListItem Text="Pitcairn Island" Value="Pitcairn Island"/>
                              <asp:ListItem Text="Poland" Value="Poland"/>
                              <asp:ListItem Text="Portugal" Value="Portugal"/>
                              <asp:ListItem Text="Puerto Rico" Value="Puerto Rico"/>
                              <asp:ListItem Text="Qatar" Value="Qatar"/>
                              <asp:ListItem Text="Republic of Montenegro" Value="Republic of Montenegro"/>
                              <asp:ListItem Text="Republic of Serbia" Value="Republic of Serbia"/>
                              <asp:ListItem Text="Reunion" Value="Reunion"/>
                              <asp:ListItem Text="Romania" Value="Romania"/>
                              <asp:ListItem Text="Russia" Value="Russia"/>
                              <asp:ListItem Text="Rwanda" Value="Rwanda"/>
                              <asp:ListItem Text=" Barthelemy" Value="St Barthelemy"/>
                              <asp:ListItem Text="St Eustatius" Value="St Eustatius"/>
                              <asp:ListItem Text="St Helena" Value="St Helena"/>
                              <asp:ListItem Text="St Kitts-Nevis" Value="St Kitts-Nevis"/>
                              <asp:ListItem Text="St Lucia" Value="St Lucia"/>
                              <asp:ListItem Text="St Maarten" Value="St Maarten"/>
                              <asp:ListItem Text="St Pierre & Miquelon" Value="St Pierre & Miquelon"/>
                              <asp:ListItem Text="St Vincent & Grenadines" Value="St Vincent & Grenadines"/>
                              <asp:ListItem Text="Saipan" Value="Saipan"/>
                              <asp:ListItem Text="Samoa" Value="Samoa"/>
                              <asp:ListItem Text="Samoa American" Value="Samoa American"/>
                              <asp:ListItem Text="San Marino" Value="San Marino"/>
                              <asp:ListItem Text="Sao Tome & Principe" Value="Sao Tome & Principe"/>
                              <asp:ListItem Text="Saudi Arabia" Value="Saudi Arabia"/>
                              <asp:ListItem Text="Senegal" Value="Senegal"/>
                              <asp:ListItem Text="Seychelles" Value="Seychelles"/>
                              <asp:ListItem Text="Sierra Leone" Value="Sierra Leone"/>
                              <asp:ListItem Text="Singapore" Value="Singapore"/>
                              <asp:ListItem Text="Slovakia" Value="Slovakia"/>
                              <asp:ListItem Text="Slovenia" Value="Slovenia"/>
                              <asp:ListItem Text="Solomon Islands" Value="Solomon Islands"/>
                              <asp:ListItem Text="Somalia" Value="Somalia"/>
                              <asp:ListItem Text="South Africa" Value="South Africa"/>
                              <asp:ListItem Text="Spain" Value="Spain"/>
                              <asp:ListItem Text="Sri Lanka" Value="Sri Lanka"/>
                              <asp:ListItem Text="Sudan" Value="Sudan"/>
                              <asp:ListItem Text="Suriname" Value="Suriname"/>
                              <asp:ListItem Text="Swaziland" Value="Swaziland"/>
                              <asp:ListItem Text="Sweden" Value="Sweden"/>
                              <asp:ListItem Text="Switzerland" Value="Switzerland"/>
                              <asp:ListItem Text="Syria" Value="Syria"/>
                              <asp:ListItem Text="Tahiti" Value="Tahiti"/>
                              <asp:ListItem Text="Taiwan" Value="Taiwan"/>
                              <asp:ListItem Text="Tajikistan" Value="Tajikistan"/>
                              <asp:ListItem Text="Tanzania" Value="Tanzania"/>
                              <asp:ListItem Text="Thailand" Value="Thailand"/>
                              <asp:ListItem Text="Togo" Value="Togo"/>
                              <asp:ListItem Text="Tokelau" Value="Tokelau"/>
                              <asp:ListItem Text="Tonga" Value="Tonga"/>
                              <asp:ListItem Text="Trinidad & Tobago" Value="Trinidad & Tobago"/>
                              <asp:ListItem Text="Tunisia" Value="Tunisia"/>
                              <asp:ListItem Text="Turkey" Value="Turkey"/>
                              <asp:ListItem Text="Turkmenistan" Value="Turkmenistan"/>
                              <asp:ListItem Text="Turks & Caicos Is" Value="Turks & Caicos Is"/>
                              <asp:ListItem Text="Tuvalu" Value="Tuvalu"/>
                              <asp:ListItem Text="Uganda" Value="Uganda"/>
                              <asp:ListItem Text="United Kingdom" Value="United Kingdom"/>
                              <asp:ListItem Text="kraine" Value="Ukraine"/>
                              <asp:ListItem Text="United Arab Erimates" Value="United Arab Erimates"/>
                              <asp:ListItem Text="United States of America" Value="United States of America"/>
                              <asp:ListItem Text="Uraguay" Value="Uraguay"/>
                              <asp:ListItem Text="Uzbekistan" Value="Uzbekistan"/>
                              <asp:ListItem Text="Vanuatu" Value="Vanuatu"/>
                              <asp:ListItem Text="Vatican City State" Value="Vatican City State"/>
                              <asp:ListItem Text="Venezuela" Value="Venezuela"/>
                              <asp:ListItem Text="Vietnam" Value="Vietnam"/>
                              <asp:ListItem Text="Virgin Islands (Brit" Value="Virgin Islands (Brit)"/>
                              <asp:ListItem Text="Virgin Islands (USA)" Value="Virgin Islands (USA)"/>
                              <asp:ListItem Text="Wake Island" Value="Wake Island"/>
                              <asp:ListItem Text="Wallis & Futana Is" Value="Wallis & Futana Is"/>
                              <asp:ListItem Text="Yemen" Value="Yemen"/>
                              <asp:ListItem Text="Zaire" Value="Zaire"/>
                              <asp:ListItem Text="Zambia" Value="Zambia"/>
                              <asp:ListItem Text="Zimbabwe" Value="Zimbabwe"/>
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>ქალაქი</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder=""></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>zip კოდი</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>მისამართი</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=" " TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">შესვლის სერთიფიკატები</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label> ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="" ReadOnly="False"></asp:TextBox>
                        </div>
                     </div>
                      
                     <div class="col-md-4">
                        <label>ძველი პაროლი</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="********" ReadOnly="False"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>ახალი პაროლი</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="********" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="განახლება" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/logo.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         
                                <center>
                                    <h4>აქტივობა</h4>
                                                               <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="შენი ღვინის ინფორმაცია"></asp:Label>

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">

                            <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" Font-Bold="True">
                            
                        </asp:GridView>
                            </div>
                        </div>
                        
                    </div>                   
                </div>

            </div>

            </div>       
           
        </div>
    
</asp:Content>
