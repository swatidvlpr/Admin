<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Credential_user.aspx.cs" Inherits="Admin_Credential_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .main-page {
            padding-right:300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-page">
                <div id="form1" class="forms validation">
                  

                          <div class="form-title">
							<h4>Admin Login:</h4>
                              <br />
						</div>
                           <div class="form-body" id="form">
                               
                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >User Name</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                   <asp:TextBox ID="txtuser" runat="server" Class="form-control"></asp:TextBox>                                    
                                </div>                              
                              


                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Mobile No:</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:TextBox ID="txtmobile" runat="server" Class="form-control"></asp:TextBox>
                                </div>
                              
                               <%--<div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Emailid :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:TextBox ID="txtEmailid" runat="server" Class="form-control"></asp:TextBox>
                                </div>
                            
                               <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >User Id:</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:TextBox ID="txtuserid" runat="server" Class="form-control"></asp:TextBox>
                                </div>--%>


                                 <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Password :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                     <input id="txtpassword" type="password" runat="server" class="form-control" validationgroup="a" placeholder="Password"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter password" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                                </div>
                               <div class="col-md-6 form-group" style="text-align:right;">
                                       <label > Confirm password :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                     <input id="txtcnfrmpwd" type="password" runat="server" class="form-control" validationgroup="a" placeholder="ConfirmPassword"/>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="It should be confirm  password" ControlToCompare="txtpassword" ControlToValidate="txtcnfrmpwd"></asp:CompareValidator>

                                </div>

                               <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Date :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:TextBox ID="txtdt" runat="server" Class="form-control"></asp:TextBox>
                                </div>

                               <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Credential Permission :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                        <asp:ListItem>HR</asp:ListItem>
                                        <asp:ListItem>PAYROLL</asp:ListItem>
                                        <asp:ListItem>DSR</asp:ListItem>
                                    </asp:CheckBoxList>
                                </div>

                             <div class="col-md-12 form-group">

                                 <asp:Button ID="Button1" runat="server" Text="SEARCH" 
        Class=" btn btn-warning " onclick="Button1_Click" />
              &nbsp;<asp:Button ID="Button2" runat="server" Class=" btn btn-info " 
        Text="Reset" ValidationGroup="a" onclick="Button2_Click" />&nbsp;
                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                               <div class="col-md-12 form-group">
                                   <div class="table-responsive">
<table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" >
  
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
                            DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
     BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <Columns>
                               
                                <asp:BoundField DataField="usernm" HeaderText="Username">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="mobile" HeaderText="Mobileno">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="emailid" HeaderText="Emailid">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="password" HeaderText="Password">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="confirmpassword" HeaderText="Confirmpassword">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_date" HeaderText="Date">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>

                                <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
                                          <asp:CommandField ShowDeleteButton="True" />

                            </Columns>
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
  
       
</table>                                
    
         </div>

                               </div>

                           </div>

                   


                </div>
      </div>
</asp:Content>

