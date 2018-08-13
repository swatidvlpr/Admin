using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Adminlogin : System.Web.UI.Page
{
    global gl = new global();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gl.display("Adminlogin", GridView1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Update")
        {
            string idd = Convert.ToInt32(GridView1.SelectedValue).ToString();
            using (SqlCommand cmd = new SqlCommand("Update Adminlogin set usernm=@usernm, mobile=@mobile, emailid=@emailid, password=@password, confirmpassword=@confirmpassword, C_date=@C_date", gl.con))
            {
                cmd.Parameters.AddWithValue("@id", idd);
                cmd.Parameters.AddWithValue("@usernm", txtname.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                cmd.Parameters.AddWithValue("@emailid", txtEmailid.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Value);
                cmd.Parameters.AddWithValue("@confirmpassword",txtcnfrmpwd.Value);
                cmd.Parameters.AddWithValue("@C_date", txtdt.Text);
                gl.con.Open();
                cmd.ExecuteNonQuery();
                gl.con.Close();

                Label1.Text = "Updated Successfully";
            }
        }
        else
        {
            using (SqlCommand cmd = new SqlCommand("insert into Adminlogin(usernm, mobile, emailid,password,confirmpassword,C_date) values(@usernm,@mobile,@emailid,@password,@confirmpassword,@C_date)", gl.con))
            {

                cmd.Parameters.AddWithValue("@usernm", txtname.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                cmd.Parameters.AddWithValue("@emailid", txtEmailid.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Value);
                cmd.Parameters.AddWithValue("@confirmpassword", txtcnfrmpwd.Value);
                cmd.Parameters.AddWithValue("@C_date", txtdt.Text);
                gl.con.Open();
                cmd.ExecuteNonQuery();
                gl.con.Close();

                Label1.Text = "Submitted Successfully";
                gl.display("Adminlogin", GridView1);
                txtcnfrmpwd.Value = "";
                txtdt.Text = "";
                txtEmailid.Text = "";
                txtmobile.Text = "";
                txtname.Text = "";
                txtpassword.Value = "";
                Button1.Text = "Submit";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminlogin.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string idd = Convert.ToInt32(GridView1.SelectedValue).ToString();
        gl.read1("Adminlogin", "id", "'" + idd + "'");
        txtname.Text = gl.ds.Tables[0].Rows[0]["usernm"].ToString();
        txtmobile.Text = gl.ds.Tables[0].Rows[0]["mobile"].ToString();
        txtEmailid.Text = gl.ds.Tables[0].Rows[0]["emailid"].ToString();
        txtpassword.Value = gl.ds.Tables[0].Rows[0]["password"].ToString();
        txtcnfrmpwd.Value = gl.ds.Tables[0].Rows[0]["confirmpassword"].ToString();
        txtdt.Text = gl.ds.Tables[0].Rows[0]["C_date"].ToString();
        Button1.Text = "Update";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        gl.delete("Adminlogin", "id", "'" + id1 + "'");
        gl.display("Adminlogin", GridView1);
    }
}