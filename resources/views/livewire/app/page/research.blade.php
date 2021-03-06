<div>
    <div class="uni-banner-default" style="background: url({{ asset('storage/' . \App\Models\SiteInfo::find(1)->header_bg) }}) no-repeat;">
        <div class="container">
            <!-- Page title -->
            <div class="page-title">
                <div class="page-title-inner">
                    <h1>Research</h1>
                </div>
            </div>
            <!-- End page title -->

            <!-- Breadcrumbs -->
            <ul class="breadcrumbs">
                <li><a href="/">Home</a></li>
                <li><a href="#">Research</a></li>
            </ul>
            <!-- End breadcrumbs -->
        </div>
    </div>

    <div class="uni-services-body">

        <!--RESEARCH-->
        <div class="uni-our-services-1">
            <div class="uni-shortcode-icons-box-5">
                <div class="container">
                    <div class="row">
                        @foreach($researchs as $research)
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
                                            <h4>{{ $research->title }}</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-caption">
                                    <p>
                                        <b>Date: {{ $research->date }}</b><br>
                                        {{ $research->overview }}
                                    </p>
                                    <a href="{{ asset('storage/' . $research->source) }}" class="readmore" target="_blank">Read More</a>
                                    @auth()
                                        @if(Auth::user()->role != 0)
                                            <a href="{{ route('admin.research.edit', $research->id) }}" class="readmore" target="_blank" title="Only admin or modarator can see this.">Edit</a>
                                        @endif
                                    @endauth
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
