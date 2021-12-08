<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="apm.aspx.cs" Inherits="Wine.apm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script type="text/javascript">
           $(document).ready(function () {

               // $(document).ready(function () {
               // $('.table').DataTable();
               //});

               $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
               //$('.table1').DataTable();
           });
       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-6">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>პროდუქციის დეტალები</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/publisher.png" />
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
                        <label>პროდუქციის ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>კუთხე</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="მაგ: კახეთი" Value="" />
                              <asp:ListItem Text="აფხაზეთის არ." Value="აფხაზეთი არ."/>
                              <asp:ListItem Text="სამეგრელოს და ზემო სვანეთის" Value="სამეგრელო და ზემო სვანეთი"/>
                              <asp:ListItem Text="გურია" Value="გურია"/>
                              <asp:ListItem Text="აჭარის არ." Value="აჭარის არ."/>
                              <asp:ListItem Text="რაჭა-ლეჩხუმის და ქვემო სვანეთი" Value="რაჭა-ლეჩხუმის და ქვემო სვანეთი"/>
                              <asp:ListItem Text="იმერეთი" Value="იმერეთი"/>
                              <asp:ListItem Text="სამცხე-ჯავახეთი" Value="სამცხე-ჯავახეთი"/>
                              <asp:ListItem Text="შიდა ქართლი" Value="შიდა ქართლი"/>
                              <asp:ListItem Text="მცხეთა-მთიანეთი" Value="მცხეთა-მთიანეთი"/>
                              <asp:ListItem Text="ქვემო ქართლი" Value="ქვემო ქართლი"/>
                              <asp:ListItem Text="კახეთი" Value="კახეთი"/>

                           </asp:DropDownList>
                        </div>
                     </div>
                      
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="დამატება" OnClick="Button2_Click" />
                     </div>
                     <div class="col-6">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="განახლება" OnClick="Button3_Click" />
                     </div>
                     <div class="col-12">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="წაშლა" OnClick="Button4_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <br>
         </div>
         <div class="col-md-6">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>სია</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wine %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                           <Columns>
                              <asp:BoundField DataField="publisher_id" HeaderText="ID" ReadOnly="True" SortExpression="publisher_id" />
                              <asp:BoundField DataField="publisher_address" HeaderText="კუთხის დასახელება" SortExpression="publisher_address" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    
</asp:Content>

