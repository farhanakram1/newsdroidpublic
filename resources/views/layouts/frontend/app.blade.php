<!DOCTYPE html>
<html lang="en">

<head>

	<!-- Basic Page Needs
	================================================== -->
	<meta charset="utf-8">
	<title>@yield('title') - {{ config('app.name', 'News Droid') }}</title>

	<!-- Mobile Specific Metas
	================================================== -->

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<!--Favicon-->
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	
	<!-- CSS
	================================================== -->
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/bootstrap.min.css') }}">
	<!-- Template styles-->
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/style.css') }}">
	<!-- Responsive styles-->
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/responsive.css') }}">
	<!-- FontAwesome -->
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/font-awesome.min.css') }}">
	<!-- Animation -->
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/animate.css') }}">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/owl.carousel.min.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/owl.theme.default.min.css') }}">
	<!-- Colorbox -->
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/colorbox.css') }}">
	<!-- Toastr CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
	<script>
		@if($errors->any())
			@foreach($errors->all() as $error)
				toastr.error('{{ $error }}','Error',{
					closeButton:true,
					progressBar:true,
				});
			@endforeach
		@endif
	</script>

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
	
<body>

	<div class="body-inner">

	<!-- <div class="preload"></div> -->


	@include('layouts.frontend.partial.header')

	@yield('content')


	@include('layouts.frontend.partial.footer')


	<!-- Javascript Files
	================================================== -->

	<!-- initialize jQuery Library -->
	<script type="text/javascript" src="{{ asset('assets/frontend/js/jquery.js') }}"></script>
	<!-- Bootstrap jQuery -->
	<script type="text/javascript" src="{{ asset('assets/frontend/js/bootstrap.min.js') }}"></script>
	<!-- Owl Carousel -->
	<script type="text/javascript" src="{{ asset('assets/frontend/js/owl.carousel.min.js') }}"></script>
	<!-- Color box -->
	<script type="text/javascript" src="{{ asset('assets/frontend/js/jquery.colorbox.js') }}"></script>
	<!-- Smoothscroll -->
	<script type="text/javascript" src="{{ asset('assets/frontend/js/smoothscroll.js') }}"></script>

	<!-- Template custom -->
	<script type="text/javascript" src="{{ asset('assets/frontend/js/custom.js') }}"></script>
	<!-- Toastr JS -->
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
    {!! Toastr::message() !!}    

	
	</div><!-- Body inner end -->
</body>

</html>