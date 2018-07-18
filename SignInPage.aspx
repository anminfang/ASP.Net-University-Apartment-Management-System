<%@ Page Title="" Language="C#" MasterPageFile="~/KASMasterPage.master" AutoEventWireup="true" CodeFile="SignInPage.aspx.cs" Inherits="SignInPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
Sign in</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <asp:Login ID="Login1" runat="server" BackColor="#f8f8f8" BorderColor="#E6E2D8" BorderStyle="None" Font-Names="Verdana" Font-Size="Large" ForeColor="#333333" CreateUserText="Sign Up" CreateUserUrl="~/SignUpPage.aspx" OnAuthenticate="Login1_Authenticate" CheckBoxStyle-CssClass="climate" LabelStyle-CssClass="climate" BorderPadding="0" LoginButtonText="Sign in" RememberMeText="Remember me" TitleText="" UserNameRequiredErrorMessage="Username is required." Height="311px" Width="505px">
        <CheckBoxStyle CssClass="climate" />
        <%--<InstructionTextStyle Font-Italic="True" ForeColor="Black"></InstructionTextStyle>--%>

<LabelStyle CssClass="climate"></LabelStyle>

        <LoginButtonStyle BackColor="#FF3F3F" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" Font-Names="Verdana" Font-Size="0.8em" ForeColor="White"></LoginButtonStyle>
        <TextBoxStyle Font-Size="0.8em"></TextBoxStyle>

    </asp:Login>

    
</asp:Content>

