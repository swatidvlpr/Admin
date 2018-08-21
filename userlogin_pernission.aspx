<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="userlogin_pernission.aspx.cs" Inherits="Admin_userlogin_pernission" %>
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
							<h4>User Login:</h4>
                              <br />
						</div>
                           <div class="form-body" id="form">
                               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >User Name</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                   <asp:TextBox ID="txtusernm" runat="server" Class="form-control" ValidationGroup="a"></asp:TextBox>  
                                     
                                </div>                              
                              <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >User Id</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                   <asp:TextBox ID="txtuserid" runat="server" Class="form-control" ValidationGroup="a"></asp:TextBox>  
                                    
                                </div>          
                               
                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Department</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:DropDownList ID="ddldepartment" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddldepartment_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                               <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Designation</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:DropDownList ID="ddldesignation" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Working Branch</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:DropDownList ID="ddlwrkngpage" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                                              
                                 <div class="col-md-6 form-group" style="text-align:right;">
                                       <label >Password</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                     <input id="txtpassword" type="password" runat="server" class="form-control" validationgroup="a" placeholder="Password"/>
                                    </div>
                               <div class="col-md-6 form-group" style="text-align:right;">
                                       <label > Confirm password</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                     <input id="txtcnfrmpwd" type="password" runat="server" class="form-control" validationgroup="a" placeholder="ConfirmPassword"/>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="It should be correct password" ControlToCompare="txtpassword" ControlToValidate="txtcnfrmpwd"></asp:CompareValidator>
                                </div>
                                <div class="col-md-6 form-group" style="text-align:right;">
                                       <label > Permission Page</label>                                  
                                  </div>
                                <div class="col-md-6 form-group" style="text-align:left;">
                                    <asp:CheckBoxList ID="CheckBoxprmsn" runat="server" class="form-control" CellPadding="4">
                                    </asp:CheckBoxList>
                                    
                                </div>                            
                                   <div class="col-md-8 form-group"></div>  
                           <%-- <div class="col-md-2 form-group"></div> 
                                   <div class="col-md-2 form-group"></div>              
                            <div class="col-md-2 form-group"></div>    --%>
                               <div class="col-md-2 form-group">

                                 <asp:Button ID="Button1" runat="server" Text="Submit" 
        Class=" btn btn-warning " ValidationGroup="a" OnClick="Button1_Click" Width="80px"/>
                                   </div>
         <div class="col-md-2 form-group">
              &nbsp;<asp:Button ID="Button2" runat="server" Class=" btn btn-info " 
        Text="Reset" ValidationGroup="a" OnClick="Button2_Click" Width="80px" />&nbsp;
                             <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
                               <div class="col-md-12 form-group">
                                   <div class="table-responsive">
<table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" >
  
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                            DataKeyNames="permission_id" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <Columns>
                               
                                <asp:BoundField DataField="userid" HeaderText="UserId">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="username" HeaderText="UserName">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="department" HeaderText="Department">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                
                                <asp:BoundField DataField="designation" HeaderText="Designation">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                 <asp:BoundField DataField="working_branch" HeaderText="Working Branch">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                 <asp:BoundField DataField="permission_page" HeaderText="Permission Page">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="password" HeaderText="Password">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:BoundField DataField="cnfrm_pwd" HeaderText="Confirm Password">
                                <HeaderStyle HorizontalAlign="Left"  />
                                <ItemStyle HorizontalAlign="Left"  />
                                </asp:BoundField>
                                <asp:TemplateField  HeaderText="Edit">
                        <ItemTemplate>
                        
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/DSR/icon/edit.png" CommandName="Select"  />
                        
                        </ItemTemplate>
                        
                        </asp:TemplateField>
            <asp:TemplateField  HeaderText="Delete">
                        <ItemTemplate>
                        
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/DSR/icon/No.png"   CommandName="Delete" OnClientClick="return confirm('Do u delete Record?')" />
                        </ItemTemplate>
                        </asp:TemplateField> 
                <asp:TemplateField  HeaderText="Action">
                        <ItemTemplate>
                        
                            <asp:Button ID="btnadd" runat="server" Text="Add" BackColor="YellowGreen"/>                        
                        </ItemTemplate>
                    </asp:TemplateField>
                                <%--<asp:CommandField SelectText="Edit" ShowSelectButton="True" />
                                          <asp:CommandField ShowDeleteButton="True" />--%>

                            </Columns>
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
  
       
</table>                                
    
         </div>

                               </div>
              </ContentTemplate>
                                   </asp:UpdatePanel>
                               </div>
                  
                </div>
      </div>
</asp:Content>

