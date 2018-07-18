using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Team121Dataset;
using Team121DatasetTableAdapters;
using System.Web.Security;
using System.Collections;

public partial class SignInPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        using (User_tTableAdapter aAdapter = new User_tTableAdapter())
        {
            User_tDataTable aTable;

            aTable = aAdapter.GetDataByUserLoginIDPassword(Login1.UserName, Login1.Password);

            //aTable = aAdapter.GetDataBy(Login1.UserName, Login1.Password);

            if (aTable.Rows.Count == 1)
            {
                
                User_tRow aRow = aTable.Rows[0] as User_tRow;

                int intPK = aRow.userID;
                string strFName = aRow.firstname;
                string strLName = aRow.lastname;

                Hashtable aHash = new Hashtable()
                {
                    {"userpk", intPK}, { "fname", strFName}, { "lname", strLName}
                };
                //Session.Add("CustRow", aRow);
                Session.Add("userInfo", aHash);
                Session.Add("userpk", intPK);
                //Response.Redirect("ApplicationPageX.aspx");

                if (Request.QueryString["ReturnUrl"] != string.Empty)
                {
                    FormsAuthentication.RedirectFromLoginPage(strFName, false);
                }
                else
                {
                    FormsAuthentication.SetAuthCookie(strFName, false);
                }

            }
        }
    }
}
