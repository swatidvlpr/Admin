using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Credential_user : System.Web.UI.Page
{
    global gl = new global();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gl.display("login", GridView1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Update")
        {
            //string idd = Convert.ToInt32(GridView1.SelectedValue).ToString();
            //using (SqlCommand cmd = new SqlCommand("Update Adminlogin set usernm=@usernm, mobile=@mobile, emailid=@emailid, password=@password, confirmpassword=@confirmpassword, C_date=@C_date", gl.con))
            //{
            //    cmd.Parameters.AddWithValue("@id", idd);
            //    cmd.Parameters.AddWithValue("@usernm", txtname.Text);
            //    cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
            //    cmd.Parameters.AddWithValue("@emailid", txtEmailid.Text);
            //    cmd.Parameters.AddWithValue("@password", txtpassword.Value);
            //    cmd.Parameters.AddWithValue("@confirmpassword", txtcnfrmpwd.Value);
            //    cmd.Parameters.AddWithValue("@C_date", txtdt.Text);
            //    gl.con.Open();
            //    cmd.ExecuteNonQuery();
            //    gl.con.Close();

            //    Label1.Text = "Updated Successfully";
            //}
        }
        else
        {
            for (int i = 0; i <= CheckBoxList1.Items.Count; i++)
            {
                using (SqlCommand cmd = new SqlCommand("insert into login(userid,mobile, password, conformpassword,Type, C_date) values(@userid,@mobile,@password,@conformpassword,@Type,@C_date", gl.con))
                {
                    cmd.Parameters.AddWithValue("@Type", CheckBoxList1.Items[0].Text);
                    string usernm = "";
                   // cmd.Parameters.AddWithValue("@usernm", txtname.Text);
                    cmd.Parameters.AddWithValue("@userid", txtuserid.Text);
                    cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                    cmd.Parameters.AddWithValue("@emailid", txtEmailid.Text);
                   
                    cmd.Parameters.AddWithValue("@password", txtpassword.Value);
                    cmd.Parameters.AddWithValue("@confirmpassword", txtcnfrmpwd.Value);
                    cmd.Parameters.AddWithValue("@Employee_Code",txtuser.Text);
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
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}