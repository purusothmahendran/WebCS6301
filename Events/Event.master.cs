using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Events_Event : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] != null)
        {
            username.Text = Session["user_id"].ToString();
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../default.aspx");

    }
}
