using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   

    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        String Email = this.txtEmail.Text;
        String Password = this.txtPass.Text;



        Session["email"] = Email;
        if (Email == "admin@admin.com" && Password == "admin1212!")
            Response.Redirect("https://www.codingnepalweb.com/demos/admin-dashboard-panel-html-css-javascript/");

        String st = "select * from [USERS] where [Email]='" + Email + "' and [Password]='" + Password + "'";
        DataTable dt = DBFunction.SelectFromTable(st, "Clients.accdb");
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("Home2.aspx");
        }
        else
        {
            this.Label1.Text = "<h5>Don't have an account?<a href=\"SignUp.aspx\"><span>Sign up</span></a> </h5>\r\n";
        }


    }
}