<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgot Password.aspx.cs" Inherits="Forgot_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: larger;
    }
     body{
            background-color:black;
        }


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <h1>Forgot your password?</h1>
    <p class="auto-style1"><strong>Enter your details below to submit a password reset request.</strong></p>
        </div>
    <br />
    <br />
    <div>

        <asp:Label ID="lblEmail" runat="server" Text="User Email"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnCheck" runat="server" Text="Check" ValidationGroup="ForgotPass" />
        <br />
        <br />
        <asp:Label ID="lblPassQuestion" runat="server" Text="Password Question"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblAns" runat="server" Text="Answer"></asp:Label>
&nbsp;<asp:TextBox ID="txtAns" runat="server" ValidationGroup="ForgotPassword"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnRecover" runat="server" Text="Recover" ValidationGroup="ForgotPassword" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" ValidationGroup="ForgotPassword" />
        <br />
        <br />

    </div>
</asp:Content>

