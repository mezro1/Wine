<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="Wine.adminmembermanagement" %>
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
         <div class="col-sm ">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>წევრის დეტალები</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-2">
                        <label>წევრის ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>სრული სახელი</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>ანგარიშის სტატუსი</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>   
                               <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>

                           </div>
                        </div>
                     </div>
                      <div class="col-md-4 ">
                          <label>Danger Zone</label>
                          <div class="form-group">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="მომხმარებლის წაშლა" OnClick="Button2_Click" />
                     </div>
                          </div>
                  </div>
                 
                  <div class="row">
                  
                    
                  </div>
                  <div class="row">
                    
                  </div>
                  
               </div>
            </div>
            
         </div>
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-xl-12 col-lg-12">
                        <center>
                           <h4>წევრთა სია</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wine %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                           <Columns>
                              <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                              <asp:BoundField DataField="full_name" HeaderText="სახელი" SortExpression="full_name" />
                              <asp:BoundField DataField="account_status" HeaderText="სტატუსი" SortExpression="account_status" />
                              <asp:BoundField DataField="contact_no" HeaderText="საკონტაქტო No" SortExpression="contact_no" />
                              <asp:BoundField DataField="email" HeaderText="ელ. ფოსტა" SortExpression="email" />
                              <asp:BoundField DataField="state" HeaderText="ქვეყანა" SortExpression="state" />
                              <asp:BoundField DataField="city" HeaderText="ქალაქი" SortExpression="city" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm">
                <center>
                    <h4>
                        
                    </h4>
                </center>
            </div>
        </div>
    </div>
</asp:Content>
