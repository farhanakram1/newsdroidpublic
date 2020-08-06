@extends('layouts.frontend.app')

@section('title','Category')

@push('css')

@endpush

@section('content')
    <section class="block-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-12">
					<div class="block category-listing">
						<div class="row">
                            @forelse($posts as $post)
								<div class="col-md-6">
									<div class="post-block-style post-grid clearfix">
										<div class="post-thumb">
											<a href="#">
                                                <img src="{{ Storage::disk('public')->url('post/'.$post->image) }}" alt="{{ $post->title }}">    
                                            </a>
										</div>
										<div class="post-content">
											<h2 class="post-title title-large">
												<a href="{{ route('post.details',$post->slug) }}">{{ $post->title }}</a>
											</h2>
											<div class="post-meta">
												<span class="post-date">{{ $post->created_at->diffForHumans() }}</span>
												<span class="post-comment pull-right"><i class="fa fa-comments-o"></i></span>
                                                <span>
                                                    @guest
                                                        <a href="javascript:void(0);" onclick="toastr.info('To add favorite list. You need to login first.','Info',{
                                                            closeButton: true,
                                                            progressBar: true,
                                                        })"><i class="fa fa-heart"></i>{{ $post->favorite_to_users->count() }}</a>
                                                    @else
                                                        <a href="javascript:void(0);" onclick="document.getElementById('favorite-form-{{ $post->id }}').submit();"
                                                        class="{{ !Auth::user()->favorite_posts->where('pivot.post_id',$post->id)->count()  == 0 ? 'favorite_posts' : ''}}"><i class="fa fa-heart"></i>{{ $post->favorite_to_users->count() }}</a>

                                                        <form id="favorite-form-{{ $post->id }}" method="POST" action="{{ route('post.favorite',$post->id) }}" style="display: none;">
                                                            @csrf
                                                        </form>
                                                    @endguest
                                                </span>
                                            </div>
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
                    {{--{{ $posts->links() }}--}}
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
							<h3 class="block-title"><span>Popular News</span></h3>
								
							

							
						</div><!-- Popular news widget end -->

						<div class="widget text-center">
							<img class="banner img-fluid" src="images/banner-ads/ad-sidebar.png" alt="" />
						</div><!-- Sidebar Ad end -->

						<div class="widget m-bottom-0">
							<h3 class="block-title"><span>Newsletter</span></h3>
							<div class="ts-newsletter">
								<div class="newsletter-introtext">
									<h4>Get Updates</h4>
									<p>Subscribe our newsletter to get the best stories into your inbox!</p>
								</div>

								<div class="newsletter-form">
									<form action="#" method="post">
										<div class="form-group">
											<input type="email" name="email" id="newsletter-form-email" class="form-control form-control-lg" placeholder="E-mail" autocomplete="off">
											<button class="btn btn-primary">Subscribe</button>
										</div>
									</form>
								</div>
							</div><!-- Newsletter end -->
						</div><!-- Newsletter widget end -->

					</div><!-- Sidebar right end -->
				</div><!-- Sidebar Col end -->

			</div><!-- Row end -->
		</div><!-- Container end -->
    </section><!-- First block end -->
    
    @endsection

@push('js')

@endpush