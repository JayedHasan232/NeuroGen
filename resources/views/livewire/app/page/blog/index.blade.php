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
            <div class="uni-shortcode-icons-box-5">
                <div class="container">
                    <div class="row">
                        @foreach($blogs as $blog)
                        <div class="col-md-4">
                            <div class="uni-shortcode-icons-box-5-default">
                                <div class="item-icons-title">
                                    <div class="col-md-4 uni-clear-padding">
                                        <div class="item-icons">
                                            <img src="images/icons_box/icon_4/book.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 uni-clear-padding">
                                        <div class="item-title">
                                            <h4>{{ $blog->title }}</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-caption">
                                    <p>
                                        <b>Category: {{ $blog->category->title }}</b><br>
                                        {{ Str::limit(strip_tags($blog->article), 100, '...') }}
                                    </p>
                                    <a href="/" class="readmore">Read More</a>
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