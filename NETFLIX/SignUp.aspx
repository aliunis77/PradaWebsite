<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link href="style/Style.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  
    <style type="text/css">
        .auto-style2 {
            color: #000099;
            font-weight: bold;
        }
        .auto-style3 {
            color: #000099;
            font-size: large;
        }

        .auto-style4 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>


             .center{
             
              margin:auto;
              width:50%;
              padding:10px;
          }


    .auto-style5 {
        color: #000000;
    }


        .auto-style6 {
            color: #000000;
            background-color: #FFFFFF;
        }


    </style>

    <div class="center">
    <form action="action_page.php" style="border: 1px solid #ccc">
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            <h1><strong><span class="auto-style6">Sign Up</span></strong></h1>
            <p class="auto-style3" style="box-sizing: inherit; font-weight: 500; letter-spacing: 0px; line-height: 2.08rem; font-family: DenimMedium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <strong class="auto-style4">Create an account to save orders, payment and more</strong></p>
            <hr>


            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style1" EnableViewState="False" ErrorMessage="*" ValidationGroup="SignUp" style="color: #FF0000"></asp:RequiredFieldValidator>
            <span class="auto-style2">
            <label for="ID">ID</label></span>&nbsp;&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="9"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style1" EnableViewState="False" ErrorMessage="Must be 9 Digits!" ValidationExpression="\d{9}" ValidationGroup="SignUp" style="color: #FF0000"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtFirstName" CssClass="auto-style1" EnableViewState="False" ValidationGroup="SignUp" style="color: #FF0000"></asp:RequiredFieldValidator>
            <span class="auto-style2">
            <label for="FirstName">First Name </label>
            </span>&nbsp;<br />
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <label for="LastName">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName" CssClass="auto-style1" EnableViewState="False" ErrorMessage="*" ValidationGroup="SignUp" style="color: #FF0000"></asp:RequiredFieldValidator>
            <span class="auto-style2">Last Name</span></label>
            <br />
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <label for="email"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="auto-style1" ErrorMessage="*" ControlToValidate="TextBox1" EnableViewState="False" ValidationGroup="SignUp" style="color: #FF0000"></asp:RequiredFieldValidator>
            <span class="auto-style2">Email</span></label>
            &nbsp;<br />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <br />
            <br />
            <span class="auto-style2"><label for="BirthDay">Birthday</label></span>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            
            <asp:Label ID="lblQuestion" runat="server" Text="Question Password" style="color: #000099"></asp:Label>
            <br />
            <asp:DropDownList runat="server" Height="25px" Width="276px" ID="QuestionPass">
                <asp:ListItem>Choose your Question!</asp:ListItem>
                <asp:ListItem>What is your favorite color?</asp:ListItem>
                <asp:ListItem>What is your favorite movie?</asp:ListItem>
                <asp:ListItem>What is your favorite pet?</asp:ListItem>
                <asp:ListItem>What is your habbit?</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblAns" runat="server" style="color: #000099" Text="Answer"></asp:Label>
            <br />
            <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="State" style="color: #000099"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CountryName" DataValueField="CountryName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [CountryName] FROM [tblCountries]"></asp:SqlDataSource>
            <br />
            <br />
            <label for="ID">
                <b>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style1" ErrorMessage="*" ControlToValidate="RadioButtonList1" EnableViewState="False" ValidationGroup="SignUp" style="color: #FF0000"></asp:RequiredFieldValidator>
            <span class="auto-style1">Gender</span><br />
                </b>
            </label>
            &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <label for="psw"><b>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" CssClass="auto-style1" EnableViewState="False" ErrorMessage="*" ValidationGroup="SignUp" style="color: #FF0000"></asp:RequiredFieldValidator>
            <span class="auto-style1">Password</span></b></label>
            
            <br />
            
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br /> <br />
            &nbsp;<label for="psw-repeat"><b><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" EnableViewState="False" ValidationGroup="SignUp" style="color: #FF0000"></asp:RequiredFieldValidator>
            <span class="auto-style1">Repeat</span> <span class="auto-style1">Password</span>&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" CssClass="auto-style1" ErrorMessage="is not same password!!" style="color: #FF0000"></asp:CompareValidator>
            <br />
            </b>
            </label>
            &nbsp;&nbsp;<div class="clearfix">

                <asp:Button class="btn btn-outline-success" ID="Button1" runat="server" Text="Sign Up" ValidationGroup="SignUp" />
                &nbsp;<asp:Button ID="Button2" class="btn btn-outline-danger" runat="server" Text="Cancel" />
                &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </form>

        </div>
</asp:Content>

