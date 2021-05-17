<div>
    <div class="uni-banner-default" style="background: url({{ asset('storage/' . \App\Models\SiteInfo::find(1)->header_bg) }}) no-repeat;">
        <div class="container">
            <!-- Page title -->
            <div class="page-title">
                <div class="page-title-inner">
                    <h1>
                        {{ $identifier == 'images' ? 'Image' : 'Video' }} Gallery
                    </h1>
                </div>
            </div>
            <!-- End page title -->

            <!-- Breadcrumbs -->
            <ul class="breadcrumbs">
                <li><a href="/">Home</a></li>
                <li><a href="#">Gallery</a></li>
            </ul>
            <!-- End breadcrumbs -->
        </div>
    </div>

    <div class="uni-gallery-body">
        <div class="container">
            {{--<ul class="nav mb-3">
                <li class="{{ $identifier == 'images' ? 'active' : '' }}">
                    <a href="{{ route('app.gallery', 'images') }}">Images</a>
                </li>
                <li class="{{ $identifier != 'images' ? 'active' : '' }}">
                    <a href="{{ route('app.gallery', 'video') }}">Videos</a>
                </li>
            </ul>--}}
            @if($identifier == 'images')
            <div class="row"  id="lightgallery1">
                @foreach($images as $image)
                <div class="col-md-3 col-sm-6" data-src="images/gallery/photo/1.jpg">
                    <div class="item-img">
                        <img src="{{ asset('storage/' . $image->source) }}" alt="{{ $image->title }}" class="img-responsive">
                    </div>
                </div>
                @endforeach
            </div>
            @else
            <div class="row"  id="lightgallery2">
                @foreach($videos as $video)
                <div class="col-md-4 col-sm-6" data-src="https://youtu.be/{{ $video->source }}">
                    <div class="item-img">
                        <iframe src="https://www.youtube.com/embed/{{ $video->source }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                @endforeach
            </div>
            @endif
        </div>
    </div>
</div>
