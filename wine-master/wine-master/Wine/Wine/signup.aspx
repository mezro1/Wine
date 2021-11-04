<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Wine.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script src="//geodata.solutions/includes/countrystatecity.js"></script>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card" >
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/edit.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Registration</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                              
                            </div>
                             <div class="col-md-6">
                              <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="DD//MM//YYYY" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        
                         <div class="row">
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                              
                            </div>
                             <div class="col-md-6">
                              <label>Phone Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox4" runat="server" placeholder="Number" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>                        
                         <div class="row">
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox5" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                              
                            </div>
                             <div class="col-md-6">
                              <label>USER ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" placeholder="User ID" ></asp:TextBox>
                                </div>
                            </div>
                        </div>                      
                         <div class="row">
                            <div class="col-md-4">
                                <label>Select Country</label>
                                <div class="form-group">
                                      <select name="country" class="countries" id="countryId">
                                          <option value="">Select Country</option>
                                      </select>                                  
                                </div>                              
                            </div>
                             <div class="col-md-4">
                              <label>Select State</label>
                                <div class="form-group">
                                    <select name="state" class="states" id="stateId">
                                        <option value="">Select State</option>
                                    </select>  
                                </div>
                            </div>
                             <div class="col-md-4">
                              <label>Select City</label>
                                <div class="form-group">
                                    <select name="city" class="cities" id="cityId">
                                        <option value="">Select City</option>
                                    </select>                                     
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label>Adress</label>
                                <div class="form-group">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="Textbox7" runat="server"  placeholder="User ID" ></asp:TextBox>                                      
                                    </div>                                    
                                    </div>
                               </div>
                            <div class="col-md-6">
                                <label>Zip Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox8" runat="server" placeholder="Zip Code"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <a href="signup.aspx"><input class="btn btn-outline-success btn-block" id="button2" type="button" value="Sign Up" /></a>
                        </div>
                    </div>                   
                </div>
                <a href="homepage.aspx"><< Back To Home </a><br />
            </div>       
        </div>
    </div>
</asp:Content>
