using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Admin : System.Web.UI.Page
{
    global gl = new global();
    public bool auth;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        gl.da = new SqlDataAdapter("select * from Adminlogin where usernm='" + Username.Text + "' and password='" + Password.Value+ "'", gl.con);
            gl.da.Fill(gl.ds);
            if (gl.ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Please Contact System Admin....')</script>");
            }
            else
            {

                gl.con.Open();
                cmd = new SqlCommand("select * from Adminlogin where usernm='" + Username.Text + "'", gl.con);

                dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    if (dr["password"].ToString() == Password.Value)
                    {
                        auth = true;
                    }

                    else
                    {

                        auth = false;
                        Response.Write("<script>alert('username and password are incorrect')</script>");

                    }
                }
                else
                {

                    auth = false;
                    Response.Write("<script>alert('username and password are incorrect')</script>");

                }

                if (auth == true)
                {

                    Session["Id"] = dr["usernm"].ToString();
                    //Session["name"] = dr["seller_nm"].ToString();

                    Response.Redirect("Home.aspx");

                }
                else
                {
                    this.Response.Cookies.Remove("abc");
                    this.Session.RemoveAll();
                }
                gl.con.Close();


            }
      }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Username.Text = "";
        Password.Value = "";
    }
}