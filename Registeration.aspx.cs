using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string first_name, last_name, ssn, email, mobile, type, username, password, gender;
        first_name = TextBox1.Text;
        last_name = TextBox2.Text;
        ssn = TextBox4.Text;
        email = TextBox3.Text;
        mobile = TextBox8.Text;
        type = DropDownList2.Text;
        username = TextBox5.Text;
        password = TextBox6.Text;
        gender = DropDownList1.Text;
        String SelectString = "INSERT INTO dbo.person VALUES(@FirstName, @LastName, @Ssn, @Mobile, @Email, @Type, @Username, @Password,@gender)";
        SqlConnection connection = new SqlConnection("Data Source=PURUSOTH-PC;Initial Catalog=resource_management;Integrated Security=True");
        connection.Open();

        SqlCommand cmd = connection.CreateCommand();
        cmd.CommandText = SelectString;

        SqlParameter fn = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        fn.Value = first_name;
        cmd.Parameters.Add(fn);
        SqlParameter ln = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        ln.Value = last_name;
        cmd.Parameters.Add(ln);
        SqlParameter ss = new SqlParameter("@Ssn", SqlDbType.VarChar, 50);
        ss.Value = ssn;
        cmd.Parameters.Add(ss);
        SqlParameter mo = new SqlParameter("@Mobile", SqlDbType.VarChar, 50);
        mo.Value = mobile;
        cmd.Parameters.Add(mo);
        SqlParameter em = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        em.Value = email;
        cmd.Parameters.Add(em);
        SqlParameter ty = new SqlParameter("@Type", SqlDbType.VarChar, 50);
        ty.Value = type;
        cmd.Parameters.Add(ty);
        SqlParameter un = new SqlParameter("@Username", SqlDbType.VarChar, 50);
        un.Value = username;
        cmd.Parameters.Add(un);
        SqlParameter pw = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        pw.Value = password;
        cmd.Parameters.Add(pw);

        SqlParameter gen = new SqlParameter("@gender", SqlDbType.VarChar, 50);
        gen.Value = gender;
        cmd.Parameters.Add(gen);

        int result=cmd.ExecuteNonQuery();
        if (result != null)
        {
           Response.Redirect("./default.aspx");
        }
        connection.Close();
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(TextBox5.Text))
        {
            SqlConnection connection = new SqlConnection("Data Source=PURUSOTH-PC;Initial Catalog=resource_management;Integrated Security=True");
            connection.Open();
            SqlCommand com = new SqlCommand("select * from dbo.person where Username=@id", connection);
            
            com.Parameters.AddWithValue("@id", TextBox5.Text);

            SqlDataReader dr = com.ExecuteReader();
            if(dr.HasRows)
            {
                Label1.Text = "UserName not available";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else{
                Label1.Text = "Username is available";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
    }
