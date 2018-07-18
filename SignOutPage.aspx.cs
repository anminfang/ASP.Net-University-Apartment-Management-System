using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignOutPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Clear();
        Session.Remove("UserInfo");
        Session.Remove("userpk");
        Response.Redirect("~/HomePage.aspx");

    }
}
