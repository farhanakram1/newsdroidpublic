@extends('layouts.frontend.app')

@section('title','Top Uploaders')

@push('css')
    
@endpush

@section('content')
    <section class="block-wrapper">
		<div class="container">
			<div class="row">
                @forelse($topUploaders as $topUploader)
                    @if($topUploader->role_id == 2)
                    <div class="col-lg-4 col-md-4">
                        <div class="author-box">
                            <div class="author-img pull-left">
                                <img src="{{ Storage::disk('public')->url('profile/'.$topUploader->image) }}" alt="{{ $topUploader->name }}">
                            </div>
                            <div class="author-info">
                                <h3>{{$topUploader->name}}</h3>
                                <div class="author-counter pull-right">
                                    <span>{{$topUploader->posts->count()}}</span>
                                </div>
                                <p class="author-url"><a href="#">{{$topUploader->email}}</a></p>
                                <p>{{$topUploader->about}}</p>
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
                        
                    </div><!-- Content Col end -->
                    @endif
                @empty
                    <h3>No Top Uploader</h3>
                @endforelse

			</div><!-- Row end -->
		</div><!-- Container end -->
	</section><!-- First block end -->
@endsection

@push('js')

@endpush