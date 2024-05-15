<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: large;
    }
 body{
            background-color:white;
        }



</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Log In</h1>
        <p class="auto-style1"><strong>Already have an account? Enter your info below.</strong></p>
    </div>
    <form >
  <div class="imgcontainer">
        </div>

  <div class="container">
      <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
&nbsp;<asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ValidationGroup="LogIn" Width="153px"></asp:TextBox>
      <label for="psw"><b>
      <br />
      <br />
      </b>
      <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
&nbsp; </label>
      <asp:TextBox ID="txtPass" runat="server" TextMode="Password" ValidationGroup="LogIn" Width="159px"></asp:TextBox>
      <br />
      <br />
      <asp:Button ID="btnLogIn" runat="server" Text="Log In" ValidationGroup="LogIn" OnClick="btnLogIn_Click" />
&nbsp;&nbsp;
      <asp:Button ID="btnCancel" runat="server" Text="Cancel" ValidationGroup="LogIn" />
      <br />
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <br />
      <label>
      <br />
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <span class="psw">
      <br />
      <br />
      </span>
      <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Forgot Password.aspx" ValidationGroup="LogIn">Forgot Your Password? </asp:LinkButton>
      <br />
  </div>
</form>




</asp:Content>

