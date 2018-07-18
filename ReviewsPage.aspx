<%@ Page Title="" Language="C#" MasterPageFile="~/KASMasterPage.master" AutoEventWireup="true" CodeFile="ReviewsPage.aspx.cs" Inherits="ReviewsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
Reviews</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" Runat="Server">
    <script src="JavaScript.js"></script>
    <link href="styles.css" rel="stylesheet" />
    <link href="tables.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" Runat="Server">
    <p> What our residents are saying about us! </p>
        <section id="reviews">
            <br />
            <br />
            <img src="Image/user1.png" style="float:left; width:60px; height:60px " />
            <br />
            <br />
            <img src="Image/stars.png" style="width:70px; height:12px" />
            <p>

                <strong>
                    Sansa Stark:  <br />
                </strong>
                <i>7 hours ago..</i>
                <br />
                <br />
                Staff are friendly and bus stop very close! Swimming pools and tennis courts are a plus as well
            </p>
            <br />

            <img src="Image/user2.png" style="float:left; width:60px; height:60px" />
            <br />
            <br />
            <img src="Image/stars.png" style="width:70px; height:12px" />

            <p>
                <strong>
                    Jon Snow: <br />
                </strong>
                <i>
                    2 days ago..
                </i>
                <br />
                <br />
                I love the view from my room, and how quiet it is. My dog loves playing in the yard
            </p>
            <br />

            <img src="Image/user3.png" style="float:left; width:60px; height:60px" />
            <br />
            <br />
            <img src="Image/stars.png" style="width:70px; height:12px" />
            <p>
                <strong>
                    Jamie Lannister: <br />
                </strong>
                <i>
                    1 week ago..
                </i>
                <br />
                <br />

                There are no market places nearby, which makes shopping really difficult :(
            </p>
            <br />

        </section>
</asp:Content>

