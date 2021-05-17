@push('stylesheets')
<link href="{{ asset('css/blog.css') }}" rel="stylesheet">
@endpush

<div>
    <div class="uni-banner-default" style="background: url({{ asset('storage/' . \App\Models\SiteInfo::find(1)->header_bg) }}) no-repeat;">
        <div class="container">
            <!-- Page title -->
            <div class="page-title">
                <div class="page-title-inner">
                    <h1>Blog</h1>
                </div>
            </div>
            <!-- End page title -->

            <!-- Breadcrumbs -->
            <ul class="breadcrumbs">
                <li><a href="/">Home</a></li>
                <li><a href="#">Blog</a></li>
            </ul>
            <!-- End breadcrumbs -->
        </div>
    </div>

    <div class="uni-services-body">

        <!--Blog-->
        <div class="uni-our-services-1">
            <div class="uni-shortcode-icons-box-5" style="padding-top: 2em">
                <div class="container">
                    <div class="row">
                        @foreach($blogs as $blog)
                        <div class="col-md-4">
                            <div class="uni-our-doctor-item-default">
                                <div class="item-img">
                                    <a href="{{ route('app.blog.show', $blog->url) }}">
                                        <img src="{{ asset('storage/' . $blog->image) }}" alt="{{ $blog->title }}" class="img-responsive">
                                    </a>
                                </div>
                                <div class="item-caption">
                                    <div class="item-caption-info" style="padding-top: .5em; padding-bottom: .5em">
                                        <h3 style="padding-bottom: .5em">{{ $blog->title }}</h3>
                                        <p style="padding-bottom: .5em">{{ Str::limit(strip_tags($blog->article), 100, '...') }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>