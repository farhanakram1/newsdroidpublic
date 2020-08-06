@extends('layouts.frontend.app')

@section('title','Home')

@push('css')

@endpush

@section('content')
	<section class="block-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-12">

					<div class="block category-listing">
						<ul class="subCategory unstyled">
							@forelse($categories as $category)
								<li><a href="{{ route('category.posts',$category->slug) }}">{{ $category->name }}</a></li>
							@empty
								<h3>No Category</h3>
							@endforelse
						</ul>

						<div class="row">
							@forelse($posts as $post)
								<div class="col-md-6">
									<div class="post-block-style post-grid clearfix">
										<div class="post-thumb">
											<a href="#">
												<img class="img-fluid" src="{{ Storage::disk('public')->url('post/'.$post->image) }}" alt="" />
											</a>
										</div>
										<div class="post-content">
											<h2 class="post-title title-large">
												<a href="{{ route('post.details',$post->slug) }}">{{ $post->title }}</a>
											</h2>
											<div class="post-meta">
												<span class="post-author"><a href="{{ route('post.details',$post->slug) }}">{{$post->user->name}}</a></span>
												<span class="post-date">{{ $post->created_at->diffForHumans() }}</span>
												<span class="post-comment pull-right"><i class="fa fa-comments-o"></i>
												<a href="#" class="comments-link"><span>{{ $post->comments->count() }}</span></a></span>
											</div>
											<p>{!! str_limit($post->body,'80') !!}</p>
										</div><!-- Post content end -->
									</div><!-- Post Block style end -->
								</div><!-- Col 1 end -->
							@empty
								<h3>No Post</h3>
							@endforelse
						</div><!-- Row end -->
					</div><!-- Block Lifestyle end -->

					<div class="paging">
		            <ul class="pagination">
						{{ $posts->links() }}
		            </ul>
	          	</div><!-- Paging end -->


				</div><!-- Content Col end -->

				<div class="col-lg-4 col-md-12">
					<div class="sidebar sidebar-right">
						<div class="widget">
							<h3 class="block-title"><span>Follow Us</span></h3>

							<ul class="social-icon">
								<li><a href="#" target="_blank"><i class="fa fa-rss"></i></a></li>
								<li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#" target="_blank"><i class="fa fa-vimeo-square"></i></a></li>
								<li><a href="#" target="_blank"><i class="fa fa-youtube"></i></a></li>
							</ul>
						</div><!-- Widget Social end -->

						<div class="widget color-default">
							<h3 class="block-title"><span>Recent News</span></h3>
							<div class="list-post-block">
								<ul class="list-post">
									@foreach($recentposts as $recentpost)
										<li class="clearfix">
											<div class="post-block-style post-float clearfix">
												<div class="post-thumb">
													<a href="#">
														<img class="img-fluid" src="{{ Storage::disk('public')->url('post/'.$recentpost->image) }}" alt="{{$recentpost->title}}" />
													</a>
												</div><!-- Post thumb end -->

												<div class="post-content">
													<h2 class="post-title title-small">
														<a href="#">{{$recentpost->title}}</a>
													</h2>
													<div class="post-meta">
														<span class="post-date">{{$recentpost->created_at->diffForHumans()}}</span>
													</div>
												</div><!-- Post content end -->
											</div><!-- Post block style end -->
										</li><!-- Li 1 end -->
									@endforeach
								</ul><!-- List post end -->
							</div><!-- List post block end -->

						</div><!-- Popular news widget end -->

						<div class="widget text-center">
							<img class="banner img-fluid" src="{{ asset('assets/frontend/images/banner-ads/ad-sidebar.png') }}" alt="" />
						</div><!-- Sidebar Ad end -->

					</div><!-- Sidebar right end -->
				</div><!-- Sidebar Col end -->

			</div><!-- Row end -->
		</div><!-- Container end -->
    </section><!-- First block end -->
    
@endsection

@push('js')

@endpush