<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: larger;
    }
        .auto-style2 {
            height: 680px;
            width: 1437px;
            margin-left: 0px;
        }
        body {
            background-color: white;
            http: //localhost:59827/images/NewFolder1/contact-us-13-32.png
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Contact Us</h1>
        <p class="auto-style1"><strong>Submit a request</strong></p>
    </div>
    <div>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
    &nbsp;
        <br />
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ValidationGroup="ContactUs" Width="245px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
        <br />
        <asp:TextBox ID="txtSubject" runat="server" ValidationGroup="ContactUs" Width="249px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescription" runat="server" Height="79px" TextMode="MultiLine" ValidationGroup="ContactUs" Width="256px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send" ValidationGroup="ContactUs" />
&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" ValidationGroup="ContactUs" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" style="color: #339933"></asp:Label>

        
    </div>
</asp:Content>

