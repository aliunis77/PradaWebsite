using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSign_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string firstName = this.txtFirstName.Text;
        string ID = this.TextBox2.Text;
        string lastName = this.txtLastName.Text;
        string password = this.TextBox3.Text;
        string Birthday = this.txtEmail.Text;

        string st = "insert into [Users] ([FirstName],[ID],[LastName],[Password],[EMail],[PassQuestion],[PassAnswer],[Gender],[State],[Birthday])values('" + firstName + "','" + ID + "','" + lastName + "','" + password + "','" + this.txtEmail.Text + "','" + this.QuestionPass.Text + "','" + this.txtAnswer.Text + "','" + this.RadioButtonList1.SelectedValue + "','" + this.DropDownList1.Text + "','" + Birthday + "')";

        User user;
        user = new User();
        user.UserEmail = this.TextBox1.Text;
        if (user.IsExistUser())
            this.Label1.Text = "you are already registered";
        else
        {
            DBFunction.ChangeTable(st, ("DB1.accdb"));
            Response.Redirect("LogIn.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");

    }
}



  