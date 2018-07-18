using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team121DatasetTableAdapters;
using static Team121Dataset;

public partial class KASMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            Label1.Text = string.Format("Welcome Back {0}", HttpContext.Current.User.Identity.Name);
            Label1.Visible = true;

            if (Menu1.Items[7].Text == "Sign In/Sign Up")
            {
                Menu1.Items[7].Text = "Sign Out";

                Menu1.Items[7].NavigateUrl = "~/SignOutPage.aspx";
            }

        //    using (User_tTableAdapter aAdapter = new User_tTableAdapter())
        //    {
        //        User_tDataTable aTable;

        //        aTable = aAdapter.GetDataByUserID(Convert.ToInt32(Session["userpk"]));

        //        if (aTable.Rows.Count > 0)
        //        {
        //            if ((int)aTable.Rows[0]["userRoleID"] == 3)
        //            {

        //                Menu1.Items[8].Selectable = true;
        //                Menu1.Items[8].Text = "User Info";
        //                Menu1.Items[8].NavigateUrl = "~/UserInfoPage.aspx";
        //                Menu1.Items[8].Selectable = true;
        //            }
        //        }
        //    }
        //}
        //else
        //{
        //    Menu1.Items[8].Selectable = false;
        }
    }
}
