<div class="trending-bar d-md-block d-lg-block d-none">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="trending-title">Trending Now</h3>
					<div id="trending-slide" class="owl-carousel owl-theme trending-slide">
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">Psl final to be held in lahore qaddafi stadium</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 1 end -->
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">Packages mall johar town has started carrefor services</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 2 end -->
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">Lahore school of economics has started new admissions</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 3 end -->
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">Tiger force Punjab became operational</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 4 end -->
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">McDonald's DHA is now providing Drive Thru 24/7</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 5 end -->
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">Punjab Police planning to remove all checkposts</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 6 end -->
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">Punjab province opened public transport today</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 7 end -->
						<div class="item">
						   <div class="post-content">
						      <h2 class="post-title title-small">
						         <a href="#">Nadra offices reopening from 17th May</a>
						      </h2>
						   </div><!-- Post content end -->
						</div><!-- Item 8 end -->
					</div><!-- Carousel end -->
				</div><!-- Col end -->
			</div><!--/ Row end -->
		</div><!--/ Container end -->
	</div><!--/ Trending end -->

	<div id="top-bar" class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="ts-date">
						<i class="fa fa-calendar-check-o"><?php echo "Today is " . date("Y/m/d");?></i>
					</div>
					<ul class="unstyled top-nav">
						<li><a href="#">About</a></li>
						<li><a href="#">Write for Us</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">Contact Us</a></li>

					</ul>
				</div><!--/ Top bar left end -->

				<div class="col-md-4 top-social text-lg-right text-md-center">
					<ul class="unstyled">
						<li>
							<a title="Facebook" href="https://web.facebook.com/?_rdc=1&_rdr">
								<span class="social-icon"><i class="fa fa-facebook"></i></span>
							</a>
							<a title="Twitter" href="#">
								<span class="social-icon"><i class="fa fa-twitter"></i></span>
							</a>
							<a title="Google+" href="#">
								<span class="social-icon"><i class="fa fa-google-plus"></i></span>
							</a>
							<a title="Linkdin" href="#">
								<span class="social-icon"><i class="fa fa-linkedin"></i></span>
							</a>
							<a title="Rss" href="#">
								<span class="social-icon"><i class="fa fa-rss"></i></span>
							</a>
							<a title="Skype" href="#">
								<span class="social-icon"><i class="fa fa-skype"></i></span>
							</a>
						</li>
					</ul><!-- Ul end -->
				</div><!--/ Top social col end -->
			</div><!--/ Content row end -->
		</div><!--/ Container end -->
	</div><!--/ Topbar end -->

	<!-- Header start -->
	<header id="header" class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-12">
					<div class="logo">
						 <a href="{{ route('home') }}">
							<img src="{{asset('assets/frontend/images/logos/logo.png')}}" alt="">
						 </a>
					</div>
				</div><!-- logo col end -->

				<div class="col-md-9 col-sm-12 header-right">
					<div class="ad-banner float-right">
						<a href="#"><img src="{{asset('assets/frontend/images/banner-ads/ad-top-header.png')}}" class="img-fluid" alt=""></a>
					</div>
				</div><!-- header right end -->
			</div><!-- Row end -->
		</div><!-- Logo and banner area end -->
	</header><!--/ Header end -->

	<div class="main-nav clearfix">
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-expand-lg col">
					<div class="site-nav-inner float-left">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
               </button>
               <!-- End of Navbar toggler -->

						<div id="navbarSupportedContent" class="collapse navbar-collapse navbar-responsive-collapse">
							<ul class="nav navbar-nav">
								<li class="{{ Request::is('/') ? 'active' : '' }}">
									<a href="{{ route('home') }}">Home</a>
								</li>
								<li class="{{ Request::is('posts*') ? 'active' : '' }}">
									<a href="{{ route('posts') }}">Posts</a>
								</li>
								<li class="{{ Request::is('categories*') ? 'active' : '' }}">
									<a href="{{ route('categories') }}">Categories</a>
								</li>
								<li class="{{ Request::is('topuploaders') ? 'active' : '' }}">
									<a href="{{ route('topuploaders') }}">Top Uploaders</a>
								</li>
                                @guest
                                    <li><a href="{{ route('login') }}">Login</a></li>
                                    <li><a href="{{ route('register') }}">Register</a></li>
                                @else
                                    @if(Auth::user()->role->id == 1)
                                        <li><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                                    @endif
                                    @if(Auth::user()->role->id == 2)
                                        <li><a href="{{ route('user.dashboard') }}">Dashboard</a></li>
										<li><a href="{{ route('user.profile', Auth::user()->username) }}">Profile</a></li>
                                    @endif
                                @endguest
								<!-- Features menu end -->
							</ul><!--/ Nav ul end -->
						</div><!--/ Collapse end -->

					</div><!-- Site Navbar inner end -->
				</nav><!--/ Navigation end -->

				<div class="nav-search">
					<span id="search"><i class="fa fa-search"></i></span>
				</div><!-- Search end -->
				
				<div class="search-block" style="display: none;">
					<input type="text" class="form-control" placeholder="Type what you want and enter">
					<span class="search-close">&times;</span>
				</div><!-- Site search end -->

			</div><!--/ Row end -->
		</div><!--/ Container end -->

	</div><!-- Menu wrapper end -->