using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Team121Dataset;
using Team121DatasetTableAdapters;
using System.Web.Security;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Specialized;
using System.Text;

public partial class AdministrationPage : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(@"Data Source=buscissql\cisweb;Initial Catalog=Team121DB;Persist Security Info=True;User ID=response;Password=design");

    protected void Page_Load(object sender, EventArgs e)
    {

        using (User_tTableAdapter aAdapter = new User_tTableAdapter())
        {
            User_tDataTable aTable;

            aTable = aAdapter.GetDataByUserID((int)Session["userpk"]);

            if (aTable.Rows.Count == 1)
            {

                User_tRow aRow = aTable.Rows[0] as User_tRow;

                if (aRow.userRoleID == 1)
                {
                    DetailsView1.Visible = true;
                }
                else
                {
                    DetailsView1.Visible = false;
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    Label13.Visible = false;
                    Label14.Visible = false;
                    Label15.Visible = false;
                    Label1.Visible = true;
                }
            }
        }
    }

    protected void CustomerDetail_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        //DetailsView1.DataBind();
        //DropDownList dropDownList = (DropDownList)DetailsView1.FindControl("DropDownList1");

        //int aptNum = Convert.ToInt32(((DropDownList)DetailsView1.FindControl("DropDownList1")).SelectedValue);
        //Label3.Text = (((DropDownList)DetailsView1.FindControl("DropDownList1")).SelectedValue);
        //conn.Open();
        //SqlCommand cmd = conn.CreateCommand();
        //cmd.CommandType = System.Data.CommandType.Text;
        //cmd.CommandText = "UPDATE[dbo].[Apartment] SET[statusID] = 1 WHERE(([apartmentID] = @roomNum))";
        //cmd.Parameters.AddWithValue("@roomNum", aptNum);
        //Label2.Visible = true;
        //cmd.ExecuteNonQuery();
        

        //cmd.CommandType = System.Data.CommandType.Text;
        //cmd.CommandText = "SELECT statusID FROM Apartment WHERE apartmentID = @apartmentID";
        //cmd.Parameters.AddWithValue("@apartmentID", Convert.ToInt32(dropDownList.SelectedValue));
        //SqlDataReader sqlDataReader = cmd.ExecuteReader();
        //Label4.Text = dropDownList.SelectedValue;
        //if ((int)sqlDataReader[0] == 1)
        //{
        //    Label3.Text = "This apartment has been rented.";
        //}

        //conn.Close();

    }

    //protected void CustomerDetail_ItemUpdating(object sender, DetailsViewUpdatedEventArgs e)
    //{

    //    DropDownList dropDownList = (DropDownList)DetailsView1.FindControl("DropDownList1");

    //    conn.Open();
    //    SqlCommand cmd = conn.CreateCommand();
    //    cmd.CommandType = System.Data.CommandType.Text;
    //    cmd.CommandText = "SELECT statusID FROM Apartment WHERE apartmentID = @apartmentID";
    //    cmd.Parameters.AddWithValue("@apartmentID", Convert.ToInt32(dropDownList.SelectedValue));
    //    SqlDataReader sqlDataReader = cmd.ExecuteReader();
    //    if((int)sqlDataReader[0] == 1)
    //    {
    //        Label3.Text = "This apartment has been rented.";
    //    }

    //}



}
