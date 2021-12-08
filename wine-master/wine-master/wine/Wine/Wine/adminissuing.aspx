<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminissuing.aspx.cs" Inherits="Wine.adminissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("
                < thead ></thead > ").append($(this).find("tr: first"))).dataTable();
       });
 
 
    </script>
     
    <script>
  src="https://code.jquery.com/ui/1.8.19/jquery-ui.js"
  integrity="sha256-aQa8sotujTr5wGMrL58iTBAaDE+VvKM8Gtyj15GtrX0="
  crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">
   <div class="container-fluid">
 <div class="row">
 <div class="col-md-5">
 <div class="card">
 <div class="card-body">
 <div class="row">
 <div class="col">
 <center>
 <h4>ღვინის გაცემა</h4>
 </center>
 </div>
 </div>
 <div class="row">
 <div class="col">
 <center>
 <img width="100px" src="images/logo.png" />
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
 <label>წევრის ID</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=""></asp:TextBox>
 </div>
 </div>
 <div class="col-md-6">
 <label>ღვინის ID</label>
 <div class="input-group">
 <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
 <asp:Button for="TextBox1" class="btn btn-dark" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
 </div>
 </div>
 </div>
 <div class="row">
 <div class="col-md-6">
 <label>წევრის სახელი</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
 </div>
 </div>
 <div class="col-md-6">
 <label>ღვინის სახელი</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
 </div>
 </div>
 </div>
 <div class="row">
 <div class="col-md-6">
 <label>გაცემის თარიღი</label>
 <div class="form-group">
     <asp:Label ID="lblPrintedStartDate" runat="server" Text=" "
            AssociatedControlID="TextBox5"></asp:Label>
 <asp:TextBox  ID="TextBox5" runat="server"  ></asp:TextBox>
 <script type="text/javascript">
     $(document).ready(function () {
         $("#<%= TextBox5.ClientID%>").datepicker({ dateFormat: "dd/mm/yy" });
    });
 </script>
  </div>
 </div>
 <div class="col-md-6">
 <label>დაბრუნების თარიღი</label>
 <div class="form-group">
<asp:Label ID="Label1" runat="server" Text=" "
            AssociatedControlID="TextBox6"></asp:Label>
 <asp:TextBox  ID="TextBox6" runat="server"  ></asp:TextBox>
 <script type="text/javascript">
     $(document).ready(function () {
         $("#<%= TextBox6.ClientID%>").datepicker({ dateFormat: "dd/mm/yy" });
     });
 </script> </div>
 </div>
 </div>
 <div class="row">
 <div class="col-6">
 <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="გაცემა" OnClick="Button2_Click" />
 </div>
 <div class="col-6">
 <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="დაბრუნება" OnClick="Button4_Click" />
 </div>
 </div>
 </div>
 </div>
 </a>
 <br>
 <br>
 </div>
 <div class="col-md-7">
 <div class="card">
 <div class="card-body">
 <div class="row">
 <div class="col">
 <center>
 <h4>გაცემული ღვინის სია</h4>
 </center>
 </div>
 </div>
 <div class="row">
 <div class="col">
 <hr>
 </div>
 </div>
 <div class="row">
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:wine %>' SelectCommand="SELECT * FROM [wine_issue_tbl]">
 </asp:SqlDataSource>
 <div class="col">
 <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
 <Columns>
 <asp:BoundField DataField="member_id" HeaderText="წევრის ID " SortExpression="member_id"></asp:BoundField>
 <asp:BoundField DataField="member_name" HeaderText="წევრის სახელი" SortExpression="member_name"></asp:BoundField>
 <asp:BoundField DataField="wine_id" HeaderText="ღვინის ID" SortExpression="wine_id"></asp:BoundField>
 <asp:BoundField DataField="wine_name" HeaderText="ღვინის სახელი" SortExpression="wine_name"></asp:BoundField>
 <asp:BoundField DataField="issue_date" HeaderText="გასვლის თარიღი" SortExpression="issue_date"></asp:BoundField>
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
