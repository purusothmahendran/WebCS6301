using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Resource_Resource : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../default.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String id, name;
        String selectString = "select * from dbo.person where username=@Username and password=@Password";
        SqlConnection connection = new SqlConnection("Data Source=PURUSOTH-PC;Initial Catalog=resource_management;Integrated Security=True");
        connection.Open();
        SqlCommand com = new SqlCommand(selectString, connection);

        com.Parameters.AddWithValue("@Username", username.Text);
        com.Parameters.AddWithValue("@Password", password.Text);



        SqlDataReader dr = com.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            id = dr.GetValue(9).ToString();
            name = dr.GetValue(0).ToString();


            if (id != "")
            {

                Session["user_id"] = id;
                Session["user_name"] = name;
                Response.Redirect("../default.aspx");
            }

        }
        else
        {
            Response.Redirect("./events.aspx");
        }


    }
}
