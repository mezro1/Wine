<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="Wine.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">
 <section id="slider">
     <div class="videoContainer hide-for-small-only">
         <div class="overlay"></div>
         <video autoplay muted loop id="myVideo">
            <source src="./images/background.mp4" type="video/mp4">
           </video>
      </div>

</section>

    <!---------Services-------->
    <section id="services">
	<div class="container">
	<h1>Our Services</h1>

    
	<div class="row services">
	<div class="col-md-3 text-center">
        <div class="icon">
        <i class="fas fa-wine-bottle" style="font-size:46px" aria-hidden="true"></i>
        </div>
        <h3>Wine</h3>
        <p>wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine </p>      
	</div>
        <div class="col-md-3 text-center">
        <div class="icon">
        <i class="fas fa-wine-bottle" style="font-size:46px"></i>
        </div>
        <h3>Wine</h3>
            <p>wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine</p>
        </div>
        <div class="col-md-3 text-center">
        <div class="icon">
        <i class="fas fa-wine-bottle" style="font-size:46px"></i>
        </div>
        <h3>Wine</h3>
            <p>wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine</p>
        </div>
        <div class="col-md-3 text-center">
        <div class="icon">
        <i class="fas fa-wine-bottle" style="font-size:46px"></i>
        </div>
        <h3>Wine</h3>
            <p>wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine wine</p>
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

.services .col-md-3:hover {
    background: lightskyblue;
    cursor: pointer;
    transition: 0.1s;
}

    </style>
    
    <!---------About-------->
    <section id="about">
	<div class="container"></div>
	<div class="row">
	<div class="col-md-6">
	<h2>About Us</h2>
	<div class="about-content">
მეღვინე — მეღვინეთუხუცესის ხელქვეითი მოხელე ძველ საქართველოში. მეღვინეების ძირითადი მოვალეობა იყო ღვინის გადასახადის გაწერა და შემოსავლის აღრიცხვა, ანგარიშის შედგენა. მათ ევალებოდათ აგრეთვე საღვინე ჭურჭლის ყურისგდება. ერთ-ერთი მეღვინე პირადად მეფეს ემსახურებოდა და მას „პირის მეღვინე“ ეწოდებოდა. სავარაუდოა, რომ „ჴელმწიფის კარის გარიგებაში“ მოხსენებული „პირის მეღვინე“ და „პირის მწდე“ ერთი და იგივე მოხელე იყო.	</div>
	<button type="button" class="btn btn-danger">Read More>>
        </button>
	</div>
        </div>
        </section>
    <style>
        #about {
    padding-top: 50px;
    padding-bottom: 50px;
    color: #f05b67;
    background-color:black!important;
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
         <div class="container">
             <h1>Plan</h1>
             <div class="row">
             <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>FREE</h2>
                     <p>$0/<span> month</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you </li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-times-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-times-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-times-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-times-circle" aria-hidden="true"></i>Helps you</li>
                         </ul>
                     </div>
                     <div class="price-button">
                     <a class="buy-btn" href="#">Join Free</a>
                     </div>
                 </div>
                 </div>
                 <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>Free</h2>
                     <p>$0/<span> month</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-times-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-times-circle" aria-hidden="true"></i>Helps you</li>
                         </ul>
                     </div>
                     <div class="price-button">
                     <a class="buy-btn" href="#">Join Now</a>
                     </div>
                 </div>
                 </div>
                 <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>Free</h2>
                     <p>$0/<span> month</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-times-circle" aria-hidden="true"></i>Helps you</li>
                         </ul>
                     </div>
                     <div class="price-button">
                     <a class="buy-btn" href="#">Join Now</a>
                     </div>
                 </div>
                 </div>
                 <div class="col-md-3">
                 <div class="single-price">
                 <div class="price-head">
                     <h2>Free</h2>
                     <p>$0/<span> month</span></p>
                     </div>
                     <div class="price-content">
                     <ul>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         <li><i class="fa fa-check-circle" aria-hidden="true"></i>Helps you</li>
                         </ul>
                     </div>
                     <div class="price-button">
                     <a class="buy-btn" href="#">Join Now</a>
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
    }

#price span {
    font-size: 15px;
    color:black!important;
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
    padding: 24px;
}

.fa-american-sign-language-interpreting {
    margin: 28px;
    color: lightseagreen;
}
    </style>
    <!--------Team-------->
    <section id="team">
        <div class="container">
            <h1>Our Team</h1>
            <div class="row">
            <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/boy.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>Nika Mezvrishvili</h2>
                    <h3>Founder / CEO</h3>
                </div>
                <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/boy.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>Nika Mezvrishvili</h2>
                    <h3>Founder / CEO</h3>
                </div>
                <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/boy.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>Nika Mezvrishvili</h2>
                    <h3>Founder / CEO</h3>
                </div>
                <div class="col-md-3 profile-pic text-center">
            <div class="img-box">
            <img src="images/boy.png" width="250" height="250" class="img-responsive" />
                        <ul>
                           
                        </ul>
                    </div>
                    <h2>Nika Mezvrishvili</h2>
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
            <h1>Get in touch</h1>
            <div class="row">
            <div class="col-md-6">
                <form class="contact-form">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Your Name" />                    
                    </div>
                    <div class="form-group">
                    <input type="email" class="form-control" placeholder="Your Email" />                    
                    </div>
                    <div class="form-group">
                    <input type="number" class="form-control" placeholder="Your Number" />                    
                    </div>
                    <div class="form-group">
                    <textarea class="form-control" rows="4" placeholder="Your Message"></textarea>                
                    </div>
                    <button type="submit" class="btn btn-danger">Send Message</button>
                </form>
                </div>
                <div class="col-md-6 contact-info">
                <div class="follow"><b>Adress:</b><i class="fa fa-map-marker"></i> 77, მერაბ კოსტავას ქუჩა, თბილისი </div>
                 </div>
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
