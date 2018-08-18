<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
      
<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>

<link rel="shortcut icon" type="image/x-icon" href="images/fev.png"/>
<link href="https://fonts.googleapis.com/css?family=Oleo+Script|Overlock" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oleo+Script" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oleo+Script" rel="stylesheet">
	<title>Welcome to BMS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Travel Adventure a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<link href="css/JiSlider.css" rel="stylesheet"> <!-- banner js-->

<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> <!-- Testimonials js-->

<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'> <!-- lightbox css --> <!-- gallery js -->

<!-- default css files -->
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- default css files -->
	
<!--web font-->
<link href="//fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!--//web font-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class=" container-fluid header">
<div class="col-md-2"><img src="images/logo.png" class="img-responsive center-block"></div>
<div class="col-md-8"><h1 style="margin-top:0;">Welcome to BMS</h1></div>
</div>
	<!--background-->
	<!-- Main-Content -->
	<div class="main-w3layouts-form">
		<h2>Login to your account</h2>
		<!-- main-w3Login to your account</h2>
		<!-- main-w3Login to your account</h2>
		<!-- main-w3layouts-form -->
        <div>

			<div class="fields-w3-agileits">
				<span class="fa fa-user" aria-hidden="true"></span>
				<%--<input type="text" name="Username" required="" placeholder="Username" />--%>
                <asp:TextBox ID="Username" runat="server" placeholder="Username"></asp:TextBox>
			</div>
			<div class="fields-w3-agileits">
				<span class="fa fa-key" aria-hidden="true"></span>
				<input type="password" name="Password" id="Password" required="" runat="server" placeholder="Password" />
  
  
               <%-- <asp:TextBox id="Password" runat="server" placeholder="Password" TextMode="MultiLine" CssClass="Password" ></asp:TextBox>--%>
			</div>
            
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn-lg btn-info" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn-lg btn-info" OnClick="Button2_Click" ValidationGroup="a"/>
			<%--<button class=" btn-lg btn-info">Submit</button>
			<button class=" btn-lg btn-info">Cancel</button>--%>
		</div>
		<!--// main-w3layouts-form -->
		<!-- Social icons -->
		
		<!--// Social icons -->
	</div>
	<!--// Main-Content-->
	<!-- copyright -->
	<!--// copyright -->
	<!--//background-->


 <!-- Modal -->
    </div>
    </form>
</body>
</html>
