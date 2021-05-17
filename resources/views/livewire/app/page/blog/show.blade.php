@push('stylesheets')
<link href="{{ asset('css/blog.css') }}" rel="stylesheet">
@endpush

<div class="uni-our-services-1">
    <div class="uni-shortcode-icons-box-5" style="padding-top: 2em">
        <div class="container blog-show">
            <h1 class="title">{{ $blog->title }}</h1>
            <div class="image">
                <img src="{{ asset('storage/' . $blog->image) }}" alt="{{ $blog->title }}" class="img-responsive">
            </div>
            <div class="article">
                {!! $blog->article !!}
            </div>
        </div>
    </div>
</div>