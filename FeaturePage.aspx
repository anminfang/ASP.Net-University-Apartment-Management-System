<%@ Page Title="Features" Language="C#" MasterPageFile="~/KASMasterPage.master" AutoEventWireup="true" CodeFile="FeaturesPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
Features</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" Runat="Server">
    <link href="styles.css" rel="stylesheet" />
    <link href="tables.css" rel="stylesheet" />
    <script src="JavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
     <!--
    KAScade housing Systems
           Khulood ALGhasra
           March 2018

       -->
    <meta charset="UTF-8" />
    <title>Features</title>
    <link href="styles.css" rel="stylesheet" />

    <style>
        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /*Hide the images by default */
        .mySlides {
            display: inline-flex;
        }

        /* Next & previous buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
            }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

            .active, .dot:hover {
                background-color: #717171;
            }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }
    </style>

    <script src="JavaScript.js">
        var slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        // Thumbnail image controls
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }

    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" Runat="Server">
    
    <nav style="float:left">
            <ul>
                <li> Cozy study area</li>
                <li> Ping pong and billard tables</li>
                <li> Outdoor gated space with a grill</li>
                <li> Breakfast/Coffee Concierge</li>
                <li> Gym, open 24/7</li>
                <li> Saltwater Luxury Resort Style Pool</li>
                <li> Assigned Parking</li>
            </ul>
        </nav>

        <aside style="float:right">
            <nav>
                <ul>
                    <li> Tanning Salon</li>
                    <li> Basketball Court</li>
                    <li> Volleyball Court</li>
                    <li> Microwave</li>
                    <li> Walk-In Closets</li>
                    <li> Wheelchair Accessible (Rooms)</li>
                    <li> High Speed Internet Access</li>
                </ul>
            </nav>
        </aside>
       

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <!-- Slideshow container -->
    <div class="slideshow-container">

        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <div class="numbertext">1/5</div>
            <img src="Image/study.jpg" style="width:120%">
            <div class="caption">Hang out with your friends in our amazing common rooms!</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2/5</div>
            <img src="Image/pool.jpg" style="width:75%">
            <div class="caption">Swimming pools for all weather.. with hot and cool water! </div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 /5</div>
            <img src="Image/gym.jpg" style="width:70%">
            <div class="caption">State of the art equipment in our Rec Center.</div>
        </div>        
        <div class="mySlides fade">
            <div class="numbertext">5 / 5</div>
            <img src="Image/coffee.jpg" style="width:135%">
            <div class="caption">Coffee shops in every building to help you take the day on!</div>
        </div>

        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br />

   <%-- <footer>
        KAScade Housing Systems &deg;&deg; Developed by Kholood AlGhasra - Anmin Fang - Swathi Kumar &copy; kascade@kascadeSystems.com &deg;&deg; March 2018
    </footer>--%>
<%--</form>--%>
</asp:Content>

