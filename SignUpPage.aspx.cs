using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Team121Dataset;
using Team121DatasetTableAdapters;
using System.Collections;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;

public partial class SignUpPage : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=buscissql\cisweb;Initial Catalog=Team121DB;Persist Security Info=True;User ID=response;Password=design");
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    Membership.CreateUser(TextBox2.Text, TextBox3.Text);
        //    Label10.Text = "Successfully created user " + TextBox2.Text;
        //}
        //catch (MembershipCreateUserException ex)
        //{
        //    switch (ex.StatusCode)
        //    {
        //        case MembershipCreateStatus.DuplicateEmail:
        //            Label10.Text = "You have supplied a duplicate email address.";
        //            break;
        //        case MembershipCreateStatus.DuplicateUserName:
        //            Label10.Text = "You have supplied a duplicate username.";
        //            break;
        //        case MembershipCreateStatus.InvalidEmail:
        //            Label10.Text = "You have not supplied a proper email address.";
        //            break;
        //        default:
        //            Label10.Text = "ERROR: " + ex.Message.ToString();
        //            break;
        //    }
        //}


        conn.Open();

        SqlCommand cmdDuplicate = conn.CreateCommand();
        cmdDuplicate.CommandType = CommandType.Text;
        cmdDuplicate.CommandText = "SELECT userLoginID From User_t";
        SqlDataReader reader = cmdDuplicate.ExecuteReader();

        if(reader.HasRows)
        {
            while(reader.Read())
            {
                if(TextBox2.Text.Equals(Convert.ToString(reader.GetValue(0))))
                {
                    Label10.Visible = true;
                    Label10.Text = "Duplicate username, please choose another username";
                    return;
                    
                }               
            }
            reader.Close();
        }

        SqlCommand cmdCreate = conn.CreateCommand();
        cmdCreate.CommandType = CommandType.Text;
        cmdCreate.CommandText = "INSERT INTO [dbo].[User_t] ([userLoginID], [password], [apartmentID], [userRoleID], [firstName], [lastName], [gender], [phone], [email], [address]) VALUES ('" + TextBox2.Text + "', '" + TextBox3.Text + "', 0000, 3, '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + DropDownList1.SelectedValue + "', '" + TextBox7.Text + "', '" + TextBox8.Text + "', '" + TextBox9.Text + "')";
        cmdCreate.ExecuteNonQuery();

        conn.Close();

        Label1.Visible = true;

    }






    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx");
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }

}
