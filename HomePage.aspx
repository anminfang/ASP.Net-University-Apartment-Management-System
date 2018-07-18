<%@ Page Title="Home" Language="C#" MasterPageFile="~/KASMasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">Home</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style>
        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Hide the images by default */
        .mySlides {
            display: block;
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
        .caption {
            color: black;
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <!-- Slideshow container -->
    <div class="slideshow-container">
                <div class="mySlides fade">
            <div class="numbertext">5 / 6</div>
            <img src="Image/apt5.jpg" style="width:100%">
            
        </div>
       <%-- <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <div class="numbertext">1 / 6</div>
            <img src="Image/apt1.jpg" style="width:100%">
            <div class="text">Incredibly spacious, with good lighting</div>
        </div>--%>

<%--       <%-- <div class="mySlides fade">
            <div class="numbertext">2 / 6</div>
            <img src="Image/apt2.jpg" style="width:100%">
            <div class="caption">What a view!</div>
        </div>

        <%--<div class="mySlides fade">
            <div class="numbertext">3 / 6</div>
            <img src="Image/apt3.jpg" style="width:100%">
            <div class="caption">Day or night, this view would take your breath away!</div>
        </div>
        <div class="mySlides fade">
            <div class="numbertext">4 / 6</div>
            <img src="Image/apt4.jpg" style="width:100%">
            <div class="caption">Luxury at its finest</div>
        </div>
        <div class="mySlides fade">
            <div class="numbertext">5 / 6</div>
            <img src="Image/apt5.jpg" style="width:100%">
            <div class="caption">Comfortable living rooms</div>
        </div>
        <div class="mySlides fade">
            <div class="numbertext">6 / 6</div>
            <img src="Image/apt6.jpg" style="width:100%">
            <div class="caption">Dining area like no other</div>
        </div>
        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
         class="next" onclick="plusSlides(1)">&#10095;
    </div>--%>
    
    <div>
        <p>
            <strong>
                Features <br/>
            </strong>
            <em>Fully</em> furnished apartments, highspeed internet, in-unit washing machine and dryer, dishwasher, and more!
            The outside complex area features a fully equipped 24/7 gym, a swimming pool and a tanning bed. Inside our main building, we offer free coffee and tea while you study, an entertainment area
            with a ping-pong table and videogames. You and your family will love our park area where you can have picnics all year round! What are you waiting for? Sign up for an apartment now!    
        </p>
    </div>
    <div>
        <strong>
            Floor plans <br />
        </strong>
        <p>Click on the image to start you application</p>

        <a href="ApplicationPage.aspx">
            <img src="Image/2bed.jpg" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;">
            <img src="Image/3bed.jpg" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;">
            <img src="Image/4bed.jpg" style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;">
        </a>
        <p style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;">Two bedroom apartment (998 SQ. FT.)</p>
        <p style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;">Three bedroom apartment (1,057 SQ. FT.)</p>
        <p style="float: left; width: 30%; margin-right: 1%; margin-bottom: 0.5em;">Four bedroom apartment (1,279 SQ. FT.)</p>
        <p style="clear: both;">

            <br />
    </div>
</asp:Content>

