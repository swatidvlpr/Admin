<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Admin_Adminlogin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
							<h3>Admin Login:</h3>
                              <br />
						</div>
                           <div class="form-body" id="form">
                               
                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Name :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:TextBox ID="txtname" runat="server" Class="form-control" ValidationGroup="a" placeholder="Username"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your name" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                                </div>                            
                              
                               
                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >mobile :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:TextBox ID="txtmobile" runat="server" Class="form-control" ValidationGroup="a" placeholder="Mobileno"></asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="txtmobile_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtmobile">
                                    </cc1:FilteredTextBoxExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter youe mobile no" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                                </div>
                              
                               <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Emailid :</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:TextBox ID="txtEmailid" runat="server" Class="form-control" ValidationGroup="a" placeholder="Emailid"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your emailid" ControlToValidate="txtEmailid"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid emailid" ControlToValidate="txtEmailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            


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
                                    <asp:TextBox ID="txtdt" runat="server" Class="form-control" ValidationGroup="a" placeholder="Date"></asp:TextBox>
                                    <cc1:CalendarExtender ID="txtdt_CalendarExtender" runat="server" Enabled="True" PopupPosition="TopRight" TargetControlID="txtdt">
                                    </cc1:CalendarExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the date" ControlToValidate="txtdt"></asp:RequiredFieldValidator>
                                </div>
                             <div class="col-md-12 form-group">

                                 <asp:Button ID="Button1" runat="server" Text="Submit" 
        Class=" btn btn-warning " ValidationGroup="a" onclick="Button1_Click" Width="100px"/>
              &nbsp;<asp:Button ID="Button2" runat="server" Class=" btn btn-info " 
        Text="Reset" ValidationGroup="a" onclick="Button2_Click" Width="80px"/>&nbsp;
                                 <br />
                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                             </div>
                               
                                <div class="col-md-12">
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

