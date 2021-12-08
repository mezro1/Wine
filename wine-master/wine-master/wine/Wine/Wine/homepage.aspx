
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Wine.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">
 <section id="slider">
     <div class="videoContainer hide-for-small-only">
         <div class="overlay"></div>
         <video autoplay muted loop id="myVideo">
            <source src="./images/background.mp4" type="video/mp4" style="width:100%">
           </video>
      </div>

</section>
<link href="css/customstyle.css" rel="stylesheet" />
    <!---------Services-------->
    <section id="services">
	<div class="container-fluid">
	<h1>ჩვენი სერვისი</h1>

    
	<div class="row services">
	<div class="col-md-4 text-center">
        <div class="icon">
        <i class="fas fa-wine-bottle" style="font-size:46px" aria-hidden="true"></i>
        </div>
        <h3>კომპანიებისთვის</h3>
        <p>ციფრული მარკეტინგის პლატფორმა "ღვინერეა" გთავაზობთ მსხვილ და მცირე კომპანიებს თქვენი პროდუქციის რეალიზებაში, რადგან უფრო მეტად აქტიუალური გახდეს ქართული პროდუქციის გაცნობა კაცობრიობისთვის.</p>      
	</div>
        <div class="col-md-4 text-center">
        <div class="icon">
        <i class="fas fa-wine-bottle" style="font-size:46px"></i>
        </div>
        <h3>კერძო პირებისთვის</h3>
            <p>         ციფრული მარკეტინგის პლატფორმა "ღვინერეა" გთავაზობთ კერძო პირებს თქვენი პროდუქტის დიდ ბაზარზე წარმოჩინებას და მისთვის სათანადო ფასის მინიჭებას.</p>
        </div>
        
        <div class="col-md-4 text-center">
        <div class="icon">
        <i class="fas fa-wine-bottle" style="font-size:46px"></i>
        </div>
        <h3>კლიენტებისთვის</h3>
            <p>ციფრული მარკეტინგის პლატფორმა "ღვინერეა" გთავაზობთ მომხმარებლებს ნახოთ ბაზარზე წარდგენილი ყველა ქართული პროდუქცია და ერთმანეთს გაუზიაროთ შეხედულებები ვინ ლიდერობს და რომელი არის უკეთესი კლიენტისათვის: კომპანია თუ კერძო პირი?</p>
        </div>
        </div>
        </div>
    </section>
    <style>
        /*---------Services----------*/
#services {
    background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)), url(images/win1.jpg);
    background-size: cover;
    background-position: center;
    color: #f05b67 !important;
    background-attachment: fixed;
    padding-top: 50px;
    padding-bottom: 50px;
}

    #services h1 {
        text-align: center;
        color: #f05b67 !important;
        padding-bottom: 10px;
    }

        #services h1: :after {
            content: "";
            background: #f05b67;
            display: block;
            height: 3px;
            width: 170px;
            margin: 20px auto 5px;
        }

.services {
    margin-top: 40px;
}

.icon {
    font-size: 40px;
    margin: 20px auto;
    padding: 10px;
    height: 80px;
    width: 80px;
    border: 1px solid #f05b67;
    border-radius: 50%;
}

#services p {
    font-size: 18px;
    margin-top: 20px;
    color: #f05b67;
}

.services .col-md-4:hover {
    background:; 
    
    cursor: pointer;
    transition: 0.7s;
}

    </style>
    
    <!---------About-------->
    <section id="about">
	<div class="container"></div>
	<div class="row">
	<div class="col-md-12">
	<h2>ჩვენს შესახებ</h2>
	<div class="about-content">
ჩვენი მისიაა, რაც შეიძლება მეტ ადამიანს გავასინჯოთ და შევაყვაროთ პრემიუმ ხარისხის მქონე ქართული ღვინო.
„ღვინერეა“ აერთიანებს  ღვინის მწარმოებელ კომპანიებს მთელი საქართველოს მასშტაბით და ჩვენი მიზანია შევქმნათ სივრცე სადაც ღვინის მოყვარულებს ექნებათ საშუალება აირჩიონ საქართველოში დამზადებული და  წარმოებული  ქართული პრემიუმ ხარისხის მქონე  ღვინო.
 „ღვინერეა“ მიზანია გააერთიანოს რაც შეიზლება მეტი მწარმოებელი ღვინის კომპანია  მთელი საქართველოს მასშტაბით. ამასთანავე  ჩვენს მომხმარებელს გავუმარტივოთ ღვინის არჩევა და ვუზრუნველყოთ ხარიასხიანი ღვინის მიწოდება. ჩვენი წევრი კომპანიების მხრიდან მინიჭებული მანდატის შესაბამისად, „ღვინერეა“   ასრულებს მომხმარებელსა და ღვინის  კომპანიას შორის  შუამავალი რგოლის ფუნქციას.
 ჩვენს ბაზარზე შემოსული კომპანიები გამოირჩევიან მაღალი ხარისხით, უნიკალური დამზადების ტექნოლოგიით და რაც ყველაზე მნისვნელოვანია ხარისხით. ჩვენი პარტნიორი კომპანიები  არის სხვადასხვა სამთავრობო და არასამთავრობო საბჭოს წევრები. მათ შორის, საქართველოს სავაჭრო-სამრეწველო პალატის, საქართველოს სოფლის მეურნეობისა და სასოფლო განვითარების ალიანსისის წარმომადგენლები.

        </>
	</div>
        </div>
        </section>
    <style>
        #about {
    padding-top: 50px;
    padding-bottom: 50px;
    color: #f05b67;
    background-color:black!important;
    text-align:center;
}

    #about btn {
        margin-top: 20px;
        margin-bottom: 30px;
    }

.about-content {
    padding-top: 20px;
}

.skills-bar p {
    margin-bottom: 6px;
    font-weight: 600;
}

.progress-bar {
    border-radius: 16px;
}

.progress {
    border-radius: 16px !important;
    margin-bottom: 20px;
}
    </style>
    <!--------Plans--------->
    <section id="plan">
         <div class="container-fluid">
             <h1>პაკეტები</h1>
             <div class="row">
             <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>პაკეტი BASIC</h2>
                     <p>₾ 0/<span> კვირა</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>გეძლევათ საშუალება წარადგინოთ თავი ციფრული მარკეტინგის ბაზარზე</li>
                        
                         </ul>
                     </div>
                     <div class="price-button">
                     <a class="buy-btn" href="homepage.aspx#contact">გაწევრიანდით უფასოდ</a>
                     </div>
                 </div>
                 </div>
                 <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>პაკეტი STANDARD</h2>
                     <p>₾ 49,99/<span> თვე</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>მთელი თვის განმავლობაში მარკეტინგი თქვენს ხელთ არის.</li>
                        
                         </ul>
                     </div>
                     <div class="price-button">
                     <a class="buy-btn" href="homepage.aspx#contact">გაწევრიანდით ახლავე</a>
                     </div>
                 </div>
                 </div>
                 <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>პაკეტი PLUS</h2>
                     <p>₾ 119,99/<span> 3 თვე</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>PLUS პაკეტთან ერთად აღმოაჩენ მეტ + კავშირს. </li>
                         </ul>
                     </div>
                     <div class="price-button">
                     <a class="buy-btn" href="homepage.aspx#contact">გაწევრიანდით ახლავე</a>
                     </div>
                 </div>
                 </div>
                 <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>პაკეტი SOLID</h2>
                     <p>₾ 249,99/<span>6 თვე</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>პაკეტი SOLID  - მყარი ნაბიჯი წარმატებისკენ!</i></li>
                         
                         </ul>
                     
                     </div>
                     
                     <div class="price-button">
                     <a class="buy-btn" href="homepage.aspx#contact">გაწევრიანდით ახლავე</a>
                     </div>
                 </div>
                 </div>
                  </div>
             </div>
         </section>
    <style>
        /*------------Price Plans--------*/
#plan{
    background-color:black!important;
    min-height:140px;
    word-wrap: break-word;
}
#price {
    padding: 40px 0;
    background: #f05b67;
    background-color: #f05b67!important;

}

.single-price {
    margin: 10px auto;
    display: inline;
    float: left;
    width: 100%;
    background-color: black;
    transition: 0.5s;
   
}

    .single-price:hover {
        box-shadow: 0 2px 20px #f05b67;
    }

.price-head {
    background-color: black;
    display: inline;
    float: left;
    padding: 10px 5px;
    text-align: center;
    width: 100%
    

}

    .price-head h2 {
        font-size: 30px;
        font-weight: bold;
        margin-bottom: 5px;
        padding: 5px;
        text-transform: uppercase;
        color:#f05b67!important;
       

    }

    .price-head p {
        font-size: 25px;
        color:#f05b67!important;
        font-weight: bold;
        line-height: 30px;
        min-height:140px;
    }

#price span {
    font-size: 15px;
    color:black!important;
            min-height:140px;


}

.price-content {
    display: inline;
    float: left;
    width: 100%;
    padding: 0 15px;
    color:#f05b67!important;

}

    .price-content ul li {
        border-bottom: 1px solid #f05b67;
        padding: 15px 10px;
        list-style: none;
                min-height:140px;

    }

ul li:last-child {
    border: none;
}

.fa-check-circle {
    color: green;
    margin-right: 10px;
    font-size: 20px;
}

.fa-times-circle {
    color: darkred;
    margin-right: 10px;
    font-size: 20px;
}

.price-button {
    display: inline;
    float: left;
    padding: 15px 15px 30px;
    text-align: center;
    width: 100%;
}

.buy-btn {
    background-color: #f05b67;
    border-radius: 3px;
    display: inline-block;
    font-size: 18px;
    padding: 15px 50px;
    transition: 0.5s;
}

    .buy-btn:hover {
        border-color: 1px #f05b67;
        background-color: #f05b67;
    }

a {
    text-decoration: none !important;
    color: white;
}


/*-----------------Get In Touch---------------------------*/
#conact {
    background: lightseagreen;
    padding-top: 40px;
    padding-bottom: 40px;
    color: lightseagreen;
}

.contact-form {
    padding: 15px;
    color: lightseagreen;
}

.form-control {
    border-radius: 0 !important;
    border: bold !important;
    box-shadow: 0 2px 20px #333;
}

#placeholder {
    color: lightseagreen;
}

.follow {
    background: white;
    padding: 10px;
    margin: 15px;
    text-decoration: underline;
    color: lightseagreen;
}

.contact-info .fa {
    margin: 10px;
    color: lightseagreen;
    font-weight: bold;
}
/*-----------------Footer-----------*/
#footer {
    background:lightblue;
    color: lightseagreen;
    padding: 240px;
    height:240px;
    
}

.fa-american-sign-language-interpreting {
    margin: 28px;
    color: lightseagreen;
}
    </style>
    <!--------Team-------->
    <section id="team">
        <div class="container">
            <h1>ჩვენი გუნდი</h1>
            <div class="row">
            <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/mezro.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>ნიკა მეზვრიშვილი</h2>
                    <h3>Founder / CEO</h3>
                </div>
                <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/luka.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>ლუკა ძლიერიშვილი</h2>
                    <h3>Founder / CEO</h3>
                </div>
                <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/vati.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>გიორგი ვათიაშვილი</h2>
                    <h3>Founder / CEO</h3>
                </div>
                <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/shio.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>გიორგი შიოშვილი</h2>
                    <h3>Founder / CEO</h3>
                </div>

            </div>            
            </div>                   
    </section>
    <style>
        /*----------team--------*/
#team{
    padding-top:50px;
    padding-bottom:50px;
    color:#f05b67;
    background-color:black!important;
}
h1{
    text-align:center;
    color:#f05b67  !important;
    padding-bottom:10px;
}
h1:after{
    content:'';
    background: #f05b67;
    display:block;
    height:3px;
    width:170px;
    margin:20px auto 5px;
}
.profile-pic {
    margin-top: 25px;
}

    .profile-pic .img-box {
        opacity: 4;
        display: block;
        position: center;
        margin-left: auto;
        margin-right: auto;
    }

        .profile-pic .img-box img {
            filter: grayscale(2);
        }

            .profile-pic .img-box img:hover {
                filter: grayscale(0);
                cursor: pointer;
            }

    .profile-pic h2 {
        font-size: 22px;
        font-weight: bold;
        margin-top: 15px;
        color: #f05b67 !important;
    }

    .profile-pic h3 {
        font-size: 15px;
        font-weight: bold;
        margin-top: 15px;
    }

#team .fa {
    height: 25px;
    width: 25px;
    color: #f05b67 !important;
    background: black!important;
    padding: 4px;
    border-radius: 50%;
}

.img-box ul {
    padding: 15px 0;
    position: center;
    z-index: 2;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    opacity: 0;
    background-position: center;
    position: absolute;
}

    .img-box ul li {
        padding: 5px;
        display: inline-block;
        background-position: center;
       
    }

.img-box:hover ul {
    opacity: 1;
    position: center;
}

.img-box ul, .img-box ul li {
    transition: 0.5s;
}

    </style>
    <!---------Contact------->
    <section id="contact">
        <div class="container">
            <h1>კონტაქტი</h1>
            <div class="row">
            <div class="col-md-6">
                <form class="contact-form">
                <div class="form-group">
                    
                    <div class="form-group">
                        <asp:Label ID="lblSubject" runat="server" Text="რის შესახებ ?" Font-Bold="true"></asp:Label>
                                                <asp:TextBox ID="txtSubject" runat="server" Width="197px"></asp:TextBox>
                          </div>


                    <div class="form-group">
                        <asp:Label ID="lblBody" runat="server" Text="ტექსტი" Font-Bold="true"></asp:Label>
                                                <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Width="250px" Height="100px"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="ვისგან ?" Font-Bold="true"></asp:Label>
                                                <asp:TextBox ID="txtToAddress" runat="server" Width="250px"></asp:TextBox>
                        </div>
                    
                        
                    </div>
                        <asp:Button ID="btnSendMail" runat="server" Text="გაგზავნა" Font-Bold="true" BackColor="YellowGreen" OnClick="btnSendMail_Click" />
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                </form>
                
                </div>
                <div class="col-md-6 contact-info">
                <div class="follow"><b>მისამართი:</b><i class="fa fa-map-marker"></i> 77, მერაბ კოსტავას ქუჩა, თბილისი </div>
                <div class="follow"><b>მობილური:</b><i class="fa fa-mobile"></i> + 995 597 17 92 82 </div></div>
                </div>
                 </div>
    
           
        </section>
    <style>
#contact {
    background-color: black!important;
    padding-top: 40px;
    padding-bottom: 40px;
    color: lightseagreen;

}

.contact-form {
    padding: 15px;
    color: #f05b67!important;
    
}

.form-control {
    border-radius: 0 !important;
    border: bold !important;
    box-shadow: 0 2px 20px #f05b67!important;
  
}

#placeholder {
    background-color: #f05b67!important;
}

.follow {
    background: black!important;
    padding: 10px;
    margin: 15px;
    text-decoration: underline;
    color: #f05b67;
    float:right;
}

.contact-info .fa {
    margin: 10px;
    color: #f05b67;
    font-weight: bold;
    float:right;
}
    </style>


</asp:Content>



