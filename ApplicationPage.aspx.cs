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

public partial class Secure_ApplicationPage : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=buscissql\cisweb;Initial Catalog=Team121DB;Persist Security Info=True;User ID=response;Password=design");

    protected void Page_Load(object sender, EventArgs e)
    {

        using (Application_tTableAdapter aAdapter = new Application_tTableAdapter())
        {
            Application_tDataTable aTable;

            aTable = aAdapter.GetDataByUserID(Convert.ToInt32(Session["userpk"]));
            //aRow = aTable.Rows[0] as Application_tRow;

            if (aTable.Rows.Count == 1)
            {
                DetailsView1.Visible = true;
                Panel1.Visible = false;


                //Label24.Text = Convert.ToString((Session["userpk"]));
            }
            else
            {
                DetailsView1.Visible = false;
                Panel1.Visible = true;

                //Label1.Text = Convert.ToString(aRow.userID);
                //Label24.Text = Convert.ToString((Session["userpk"]));
            }
        }

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int defaultAptNum = 8888;
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO [dbo].[Application_t] ([userID], [firstname], [lastname], [gender], [phone], [email], [address], [roomplan], [family], [pets], [parking], [moveindate], [apartmentID])" +
            " VALUES ('" + Session["userpk"] + "', '" + firstname.Text + "', '" + lastname.Text + "', '" + DropDownListGender.SelectedValue + "', '" + phone.Text + "', '" + email.Text + "', '" + address.Text + "', '" + DropDownListRoomPlan.SelectedValue + "', '" + DropDownListFamily.SelectedValue + "', '" + DropDownListPets.SelectedValue + "', '" + DropDownListParking.SelectedValue + "', '" + TextBoxMoveinDate.Text + "', @roomNum)";
        cmd.Parameters.AddWithValue("@roomNum", defaultAptNum);
        cmd.ExecuteNonQuery();
        conn.Close();
        Label12.Visible = true;
        firstname.Text = "";
        lastname.Text = "";
        phone.Text = "";
        email.Text = "";
        address.Text = "";
        TextBoxMoveinDate.Text = "";
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx");
        firstname.Text = "";
        lastname.Text = "";
        phone.Text = "";
        email.Text = "";
        address.Text = "";
        TextBoxMoveinDate.Text = "";
    }


    //protected void customerDetail-itemUpdated(object sender, DetailsViewCommandEventArgs e)
    //{

    //}

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        DetailsView1.Fields[0].Visible = false;
        DetailsView1.Fields[1].Visible = false;
        DetailsView1.Fields[13].Visible = false;
    }
}
