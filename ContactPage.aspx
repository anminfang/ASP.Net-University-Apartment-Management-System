<%@ Page Title="Contact" Language="C#" MasterPageFile="~/KASMasterPage.master" AutoEventWireup="true" CodeFile="ContactPage.aspx.cs" Inherits="ContactPage"MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" Runat="Server">
    <link href="styles.css" rel="stylesheet" />
    <link href="tables.css" rel="stylesheet" />
    <script src="JavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" Runat="Server">
     

    <p> For any questions, feel free to contact us at any time and we will get back to you!</p>

    <br />
    <img src="Image/map.jpg" style="float:left" />
    <br />
    <p>
        <strong>Address</strong>
        One Market Street, 36th Floor
        San Francisco, CA 94105
        <br />
        <strong>Phone</strong>
        415-444-5577
    </p>
    <br />

    <section id="form">
        <p>Required values are marked by an asterisk (*)</p>
        <%-- ACTION --%>
        <form id="contact" name="contact" action="Not Set" method="post">

            <fieldset id="info">
                <legend>User Information</legend>

                <label for="name">Name *</label>
                <input type="text" placeholder="First and last name" required />
                <br />
                <br />
                <label for="phone">Phone</label>
                <input type="text" placeholder="nnn-nnn-nnnn" pattern="^\d{10}$|^(\(\d{3}\)\s*)?\d{3}[\s-]?\d{4}$" />
                <br />
                <br />
                <label for="email">Email address *</label>
                <input type="text" placeholder="Email address" required />
                <br />
                <br />
                <label for="comment">Message *</label>
                <textarea rows="5" cols="20" required>Please enter your comment here </textarea>
                <br />
                <br />
                <%--<input type="button" value="Submit" />--%>
                <asp:Button ID="Button1" runat="server" Text="Submit" CommandName="Submit" OnClick="Button1_Click" BackColor="#FF3F3F"/><br />
                <asp:Label ID="Label1" runat="server" Text="Your information has been submitted. Thank you." Visible="false"></asp:Label>
            </fieldset>
        </form>
    </section>

</asp:Content>

