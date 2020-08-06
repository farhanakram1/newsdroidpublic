@extends('layouts.frontend.app')

@section('title')
{{ $post->title }}
@endsection

@push('css')
    
@endpush

@section('content')
    <section class="block-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="single-post">
                        <div class="post-title-area">
                            <div class="post-tags">
                                <span>Categories:</span>
                                @foreach($post->categories as $category)
                                    <a href="{{ route('category.posts',$category->slug) }}">{{ $category->name }}</a>
                                @endforeach
                            </div>
                            
                            <h2 class="post-title">
                            {{ $post->title }}
                            </h2>
                            <div class="post-meta">
                                <span class="post-author">
                                    By <a href="#">{{ $post->user->name }}</a>
                                </span>
                                <span class="post-date"><i class="fa fa-clock-o"></i> {{ $post->created_at->diffForHumans() }}</span>
                                <span class="post-hits"><i class="fa fa-eye"></i> {{ $post->view_count }}</span>
                                <span class="post-comment"><i class="fa fa-comments-o"></i>{{$post->comments->count()}}</span>
                                <a href="#" class="comments-link"><span></a></span>
                            </div>
                        </div><!-- Post title end -->

                        <div class="post-content-area">
                            <div class="post-media post-featured-image">
                                <a href="{{ Storage::disk('public')->url('post/'.$post->image) }}" class="gallery-popup">
                                <img src="{{ Storage::disk('public')->url('post/'.$post->image) }}" class="img-fluid" alt=""></a>
                            </div>
                            <div class="entry-content">
                                {!! html_entity_decode($post->body) !!}
                            </div><!-- Entery content end -->

                            <div class="tags-area clearfix">
                                <div class="post-tags">
                                    <span>Tags:</span>
                                    @foreach($post->tags as $tag)
                                        <a href="{{ route('tag.posts',$tag->slug) }}">{{ $tag->name }}</a>
                                    @endforeach
                                </div>
                            </div><!-- Tags end -->

                            <div class="share-items clearfix">
                            <ul class="post-social-icons unstyled">
                                <li class="facebook">
                                    <a href="#">
                                    <i class="fa fa-facebook"></i> <span class="ts-social-title">Facebook</span></a>
                                </li>
                                <li class="twitter">
                                    <a href="#">
                                    <i class="fa fa-twitter"></i> <span class="ts-social-title">Twitter</span></a>
                                </li>
                                <li class="gplus">
                                    <a href="#">
                                    <i class="fa fa-google-plus"></i> <span class="ts-social-title">Google +</span></a>
                                </li>
                                <li class="pinterest">
                                    <a href="#">
                                    <i class="fa fa-pinterest"></i> <span class="ts-social-title">Pinterest</span></a>
                                </li>
                            </ul>
                            </div><!-- Share items end -->

                        </div><!-- post-content end -->
                    </div><!-- Single post end -->

                    <div class="author-box">
                        <div class="author-img pull-left">
                            <img src="images/news/author.png" alt="">
                        </div>
                        <div class="author-info">
                            <h3>{{ $post->user->name }}</h3>
                            <p class="author-url"><a href="#">{{ $post->user->email }}</a></p>
                            <p>{{ $post->about }}</p>
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

                    <!-- Post comment start -->
                    <div id="comments" class="comments-area block">
                        <h3 class="block-title"><span>{{$post->comments->count()}}</span></h3>

                        <ul class="comments-list">
                            @if($post->comments->count() > 0)
                                @foreach($post->comments as $comment)
                                <li>
                                    <div class="comment">
                                        <img class="comment-avatar pull-left" alt="" src="images/news/user1.png">
                                        <div class="comment-body">
                                            <div class="meta-data">
                                                <span class="comment-author">{{ $comment->user->name }}</span>
                                                <span class="comment-date pull-right">{{ $comment->created_at->diffForHumans()}}</span>
                                            </div>
                                            <div class="comment-content">
                                            <p>{{ $comment->comment }}</p></div>
                                        </div>
                                    </div><!-- Comments end -->
                                </li><!-- Comments-list li end -->
                                @endforeach
                            @else
                                <h3>No comments, be the first to comment!</h3>
                            @endif
                        </ul><!-- Comments-list ul end -->
                    </div><!-- Post comment end -->

                    <div class="comments-form">
                        <h3 class="title-normal">Leave a comment</h3>
                        @guest
                            <p>For post a new comment. You need to login first. <a href="{{ route('login') }}">Login</a></p>
                        @else
                        <form method="post" action="{{ route('comment.store',$post->id) }}">
                            @csrf
                            <div class="row">
                                <div class="col-sm-12">
                                    <textarea name="comment" rows="4" class="text-area-messge form-control"
                                                placeholder="Enter your comment" aria-required="true" aria-invalid="false"></textarea >
                                </div><!-- col-sm-12 -->
                                <div class="col-sm-12">
                                <br>
                                    <button class="btn btn-success" type="submit" id="form-submit"><b>POST COMMENT</b></button>
                                </div><!-- col-sm-12 -->

                            </div><!-- row -->
                        </form><!-- Form end -->
                        @endguest
                    </div><!-- Comments form end -->

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
                        
                            <div class="list-post-block">
                                <ul class="list-post">
                                <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            

                                            <div class="post-content">
                                                <h2 class="post-title title-small">
                                                    <a href="#">Nadra offices reopening from 17th May</a>
                                                    
                                                </h2>
                                                <div class="post-meta">
                                                    <span class="post-date">May 15, 2020</span>
                                                </div>
                                            </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 1 end -->
                                    <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            

                                            <div class="post-content">
                                                <h2 class="post-title title-small">
                                                    <a href="#">Punjab province opened public transport today</a>
                                                    
                                                </h2>
                                                <div class="post-meta">
                                                    <span class="post-date">May 17, 2020</span>
                                                </div>
                                            </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 1 end -->

                                    <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            

                                            <div class="post-content">
                                                <h2 class="post-title title-small">
                                                    <a href="#">Tutti fruity frozen yogurt new opening</a>
                                                </h2>
                                                <div class="post-meta">
                                                    <span class="post-date">May 16, 2020</span>
                                                </div>
                                            </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 2 end -->

                                    <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            

                                            <div class="post-content">
                                                <h2 class="post-title title-small">
                                                    <a href="#">Punjab Police planning to remove all checkposts</a>
                                                </h2>
                                                <div class="post-meta">
                                                    <span class="post-date">May 13, 2020</span>
                                                </div>
                                            </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 3 end -->

                                    

                                </ul><!-- List post end -->
                            </div><!-- List post block end -->

                        </div><!-- Popular news widget end -->

                      

                        <div class="widget widget-tags">
                            <h3 class="block-title"><span>Tags</span></h3>
                            <ul class="unstyled clearfix">
                            <li><a href="#">Apps</a></li>
                            <li><a href="#">Architechture</a></li>
                            <li><a href="#">Food</a></li>
                            <li><a href="#">Gadgets</a></li>
                            <li><a href="#">Games</a></li>
                            <li><a href="#">Health</a></li>
                            <li><a href="#">Lifestyles</a></li>
                            <li><a href="#">Robotics</a></li>
                            <li><a href="#">Software</a></li>
                            <li><a href="#">Tech</a></li>
                            <li><a href="#">Travel</a></li>
                            <li><a href="#">Video</a></li>
                        </ul>
                        </div><!-- Tags end -->

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