@extends('layouts.frontend.app')

@section('title','Pofile')

@push('css')
    
@endpush

@section('content')
    <section class="block-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="author-box">
						<div class="author-img pull-left">
							<img src="{{ Storage::disk('public')->url('profile/'.Auth::user()->image) }}" alt="">
						</div>
						<div class="author-info">
							<h3>{{Auth::user()->name}}</h3>
							<br>
							<strong>Posts:</strong> <span>{{Auth::user()->posts->count()}}</span>
							<strong>Comments:</strong> <span>{{Auth::user()->comments->count()}}</span>
							<p class="author-url">{{Auth::user()->email}}</p>
							<p>{{Auth::user()->about}}</p>
							<div class="authors-social">
		                        <span>Follow Me: </span>
		                        <a href="#"><i class="fa fa-behance"></i></a>
		                        <a href="#"><i class="fa fa-twitter"></i></a>
		                        <a href="#"><i class="fa fa-facebook"></i></a>
		                        <a href="#"><i class="fa fa-google-plus"></i></a>
		                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
		                    </div>
						</div>
					</div> <!-- Author box end -->
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12">
					<section id="tabs" class="project-tab">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<nav>
										<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
											<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">All Posts</a>
											<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Shared Posts</a>
										</div>
									</nav>
									<div class="tab-content" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
											<table class="table" cellspacing="0">
												<thead>
													<tr>
														<th>Post Title</th>
														<th>Posted</th>
													</tr>
												</thead>
												<tbody>
													@foreach($posts as $post)
														<tr>
															<td><a href="#">{{$post->title}}</a></td>
															<td>{{$post->created_at->diffForHumans()}}</td>
														</tr>
													@endforeach
												</tbody>
											</table>
										</div>
										<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
											<table class="table" cellspacing="0">
												<thead>
													<tr>
														<th>Post Title</th>
														<th>Date</th>
													</tr>
												</thead>
												<tbody>
													@foreach($shareposts as $sharepost)
														<tr>
															<td><a href="#">{{$sharepost->title}}</a></td>
															<td>{{$sharepost->created_at}}</td>
														</tr>
													@endforeach
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div><!-- Row end -->
		</div><!-- Container end -->
	</section><!-- First block end -->
@endsection

@push('js')

@endpush