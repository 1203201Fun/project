<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">	
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Play:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>  
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>

<!---- start-smoth-scrolling---->
<!---image-carsuals---->
	    <link href="css/owl.carousel.css" rel="stylesheet">
	    <link href="css/owl.theme.css" rel="stylesheet">
   		<script src="js/owl.carousel.js"></script>
   		<script>
	    $(document).ready(function() {
	      $("#owl-demo").owlCarousel({
	      	navigation: true,
		    navigationText: [
		      "<i class='icon-chevron-left icon-white'></i>",
		      "<i class='icon-chevron-right icon-white'></i>"
		      ],
	        items :3,
	        slideSpeed :100,
	        lazyLoad : true,
	        autoPlay : true,
	      });
	    });
	    </script>
   		<!---//End-carsuals---->

</head>
<body>
	<div class="banner" id="home">
		<div class="container">
			<div class="header">
				<div class="header-left">
					<a href="index.html"><img src="images/logo.png" alt=""></a>
				</div>
				<div class="menu">
                                     <a class="toggleMenu" href="#"><img src="images/menu-icon.png" alt="" /> </a>

					<ul class="nav" id="nav">
					<li><a href="#home" class="scroll">HOME</a></li>
					<li><a href="#about" class="scroll">ABOUT</a></li>
					<li><a href="#features" class="scroll">FEATURES</a></li>
					<li><a href="#contact" class="scroll">CONTACT</a></li>
					</ul>
                                  <!----start-top-nav-script---->
		                      <script type="text/javascript" src="js/responsive-nav.js"></script>

					<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>


		<!----//End-top-nav-script---->

				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="banner-bottom">
				<div class="col-md-6">
					<div class="banner-bottom-left">
						<img src="images/phone.png" alt="">
					</div>
				</div>
				<div class="col-md-6">
					<div class="banner-bottom-right">
						<h1>Device Management</h1>
						<h3>Simple, Useful and Amazing</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enimcidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim</p>
						<ul>
							<li><a class="active" href="login.jsp"> &nbsp;Login In&nbsp;</a></li>
							<li><a href="#">Learn More</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="welcome" id="about">
		<div class="container">
			<div class="welcome-top">
				<h3>Welcome to BezalShop</h3>
				<img src="images/border.png" alt="">
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enimcidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim</p>
			</div>
			<div class="welcome-bottom">
				<div class="col-md-4">
					<div class="welcome-bottom-one">
						<span class="w-fst"> </span>
						<h4>Responsive Layout</h4>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="welcome-bottom-one">
						<span class="w-snd"> </span>
						<h4>Beautiful Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="welcome-bottom-one">
						<span class="w-tre"> </span>
						<h4>Easy to Use</h4>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>		
		</div>
	</div>
	<div class="features" id="features">
		<div class="container">
			<div class="features-main">
				<div class="col-md-6">
					<div class="features-left">
						<img src="images/phone-1.png" alt="">
					</div>
				</div>
				<div class="col-md-6">
					<div class="features-right">
						<h3>Excellent Features</h3>
						<img src="images/border.png" alt="">
						<p>The utility of our system and efficiently, use it to management center equipment. </p>
						<ul>
							<li><span class="one"> </span><p>Device Search</p></li>
							<li><span class="tw"> </span><p>Check Tables</p></li>
							<li><span class="tr"> </span><p>UserInformation</p></li>
							<li><span class="fr"> </span><p>Add New Device</p></li>
							<li><span class="fv"> </span><p>Contrac Us</p></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="news">
		<div class="container">
			<div class="news-main">
				<div class="col-md-4">
					<div class="news-left">
						<h4>Newsletter Sign Up</h4>
					</div>
				</div>
				<div class="col-md-8">
					<div class="news-right">
						<span>
							<input type="text"  value="Your email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your email address';}">
							<input type="submit" value="SUBSCRIBE">
						</span>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
		<!--getin-starts-Here-->
	<div class="getin" id="contact">
		<div class="container">
			<div class="getin-top">
				<h3>Get In Touch</h3>
				<img src="images/border.png" alt="">
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>
			</div>
			<div class="getin-bottom">
				<div class="col-md-5">
					<div class="getin-left">
						<h4>Contact Details :-</h4>
						<ul>
							<li><span class="get-ph"> </span><p>(804) 747-5204</p></li>
							<li><span class="get-cl"> </span><p>(804) 747-4771</p></li>
							<li><span class="get-msg"> </span><p><a href="mailto:example@email.com">jaaj@bejal.com</a></p></li>
							<li><span class="get-dp"> </span><p>3951 Westerre Parkway, suite 350 Richmond, VA 23233</p></li>
						</ul>
					</div>
				</div>
				<div class="col-md-7">
					<div class="getin-right">
						<h4>Contact Us :-</h4>
						<form> 
					     <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
						 <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
						<input type="text" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
						<textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
						 <div class="clear"> </div>
						<div class="sub-button">
							<input name="submit" type="submit" value="SEND">
						</div>
					</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--footer-starts-Here-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<a href="#home" class="scroll"><img src="images/top-arw.png" alt=""></a>
			</br></br>
				
				<h3>Go to Top</h3>
			
				<p>Copyright &copy; 2014.HITCS Information Security Team xFun All rights reserved.</p>
			</div>
		</div>
	</div>
	<!--footer-ends-Here-->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>