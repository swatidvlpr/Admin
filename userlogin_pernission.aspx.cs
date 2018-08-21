using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_userlogin_pernission : System.Web.UI.Page
{
    global gl = new global();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gl.ddl_select("Departmentmaster", "Depart_id,Departmentnm", "Departmentnm", "Depart_id", "'0'", "'Select'", ddldepartment);
            gl.ddl_select("Designation", "Designation_id,Designationnm", "Designationnm", "Designation_id", "'0'", "'Select'", ddldesignation);
            gl.ddl_select("Branchmaster", "Branchid,branchname", "branchname", "Branchid", "'0'", "'Select'", ddlwrkngpage);
            gl.chkboxlist("Page", "pagename", "Pageid", CheckBoxprmsn);
            gl.display("userlogin_prmsn", GridView1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Button1.Text == "Update")
        {
            for (int i = 0; i <= CheckBoxprmsn.Items.Count - 1; i++)
            {
                if (CheckBoxprmsn.Items[i].Selected)
                {
                    string idd = Convert.ToInt32(GridView1.SelectedValue).ToString();
                    using (SqlCommand cmd = new SqlCommand("Update userlogin_prmsn set userid=@userid, username=@username, department=@department, designation=@designation, working_branch=@working_branch, password=@password, cnfrm_pwd=@cnfrm_pwd, permission_page=@permission_page where permission_id=@permission_id", gl.con))
                    {
                        cmd.Parameters.AddWithValue("@permission_id", idd);
                        cmd.Parameters.AddWithValue("@userid", txtuserid.Text);
                        cmd.Parameters.AddWithValue("@username", txtusernm.Text);
                        cmd.Parameters.AddWithValue("@department", ddldepartment.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@designation", ddldesignation.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@working_branch", ddlwrkngpage.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@password", txtpassword.Value);
                        cmd.Parameters.AddWithValue("@cnfrm_pwd", txtcnfrmpwd.Value);
                        cmd.Parameters.AddWithValue("@permission_page", CheckBoxprmsn.Items[i].Text);
                        gl.con.Open();
                        cmd.ExecuteNonQuery();
                        gl.con.Close();
                        Label1.Text = "Updatted Successfully";
                    }
                        
                   
                }
            }
        }
        else
        {
            for (int i = 0; i <= CheckBoxprmsn.Items.Count - 1; i++)
            {
                if (CheckBoxprmsn.Items[i].Selected)
                {
                    using (SqlCommand cmd = new SqlCommand("insert into userlogin_prmsn( userid, username, department, designation, working_branch, password, cnfrm_pwd, permission_page) values( @userid, @username, @department, @designation, @working_branch, @password, @cnfrm_pwd, @permission_page)", gl.con))
                    {
                        cmd.Parameters.AddWithValue("@userid", txtuserid.Text);
                        cmd.Parameters.AddWithValue("@username", txtusernm.Text);
                        cmd.Parameters.AddWithValue("@department", ddldepartment.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@designation", ddldesignation.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@working_branch", ddlwrkngpage.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@password", txtpassword.Value);
                        cmd.Parameters.AddWithValue("@cnfrm_pwd", txtcnfrmpwd.Value);
                        cmd.Parameters.AddWithValue("@permission_page", CheckBoxprmsn.Items[i].Text);
                        gl.con.Open();
                        cmd.ExecuteNonQuery();
                        gl.con.Close();
                        gl.display("userlogin_prmsn", GridView1);
                        Label1.Text = "Submitted Successfully";
                        Button1.Text = "Submit";
                    }
                    txtcnfrmpwd.Value = "";
                    txtpassword.Value = "";
                    txtuserid.Text = "";
                    txtusernm.Text = "";
                    ddldepartment.SelectedIndex = 0;
                    ddldesignation.SelectedItem.Text = "";
                    ddlwrkngpage.SelectedIndex = 0;
                    CheckBoxprmsn.SelectedIndex = 0;
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userlogin_pernission.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string idd = Convert.ToInt32(GridView1.SelectedValue).ToString();
        gl.read1("userlogin_prmsn", "permission_id", "'" + idd + "'");
        txtuserid.Text = gl.ds.Tables[0].Rows[0]["userid"].ToString();
        txtusernm.Text = gl.ds.Tables[0].Rows[0]["username"].ToString();
        txtpassword.Value = gl.ds.Tables[0].Rows[0]["password"].ToString();
        txtcnfrmpwd.Value = gl.ds.Tables[0].Rows[0]["cnfrm_pwd"].ToString();

        string department = gl.ds.Tables[0].Rows[0]["department"].ToString();

         for (int i = 0; i < ddldepartment.Items.Count; i++)
        {
            if (ddldepartment.Items[i].Text == department)
            {
                ddldepartment.Items[i].Selected = true;
            }
            else
            {
                ddldepartment.Items[i].Selected = false;
            }
        
        
        }
         string designation = gl.ds.Tables[0].Rows[0]["designation"].ToString();

         for (int i = 0; i < ddldesignation.Items.Count; i++)
         {
             if (ddldesignation.Items[i].Text == designation)
             {
                 ddldesignation.Items[i].Selected = true;
             }
             else
             {
                 ddldesignation.Items[i].Selected = false;
             }


         }
         string working_branch = gl.ds.Tables[0].Rows[0]["working_branch"].ToString();

         for (int i = 0; i < ddlwrkngpage.Items.Count; i++)
         {
             if (ddlwrkngpage.Items[i].Text == working_branch)
             {
                 ddlwrkngpage.Items[i].Selected = true;
             }
             else
             {
                 ddlwrkngpage.Items[i].Selected = false;
             }


         }
         string permission_page = gl.ds.Tables[0].Rows[0]["permission_page"].ToString();

         for (int i = 0; i <= CheckBoxprmsn.Items.Count - 1; i++)
         {
             if (CheckBoxprmsn.Items[i].Text == permission_page)
             {
                 CheckBoxprmsn.Items[i].Selected = true;
             }
             else
             {
                 CheckBoxprmsn.Items[i].Selected =false;
             }
         }
         Button1.Text = "Update";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        gl.delete("userlogin_prmsn", "permission_id", "'" + id1 + "'");
        gl.display("userlogin_prmsn", GridView1);
    }
    protected void ddldepartment_SelectedIndexChanged(object sender, EventArgs e)
    {
        gl.ddlcond("Designation", "Designationnm", "Designation_id", "Depart_id", "'" + ddldepartment.SelectedValue + "'", ddldesignation);
        ddldesignation.SelectedIndex = 0;
    }
}