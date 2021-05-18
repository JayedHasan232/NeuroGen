<div>
    <div class="uni-banner-default" style="background: url({{ asset('storage/' . \App\Models\SiteInfo::find(1)->header_bg) }}) no-repeat;">
        <div class="container">
            <!-- Page title -->
            <div class="page-title">
                <div class="page-title-inner">
                    <h1>about us</h1>
                </div>
            </div>
            <!-- End page title -->

            <!-- Breadcrumbs -->
            <ul class="breadcrumbs">
                <li><a href="/">Home</a></li>
                <li><a href="#">about us</a></li>
            </ul>
            <!-- End breadcrumbs -->
        </div>
    </div>

    <div class="uni-about-body">

        <!--WHO WE ARE-->
        <div class="uni-about-who-are-you">
            <div class="container">
                <div class="uni-services-title">
                    <h3>{{ $about->title }}</h3>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="uni-about-who-are-you-left">
                            <img src="{{ asset('storage/' . $about->image) }}" alt="Circle of care" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="uni-about-who-are-you-right">
                            <p style="font-size: 14px;">{{ $about->overview }}</p>
                            <h4>Circle of Care</h4>
                            <ul>
                                @php
                                    $circles = explode(',', $about->circle);
                                @endphp

                                @foreach($circles as $circle)
                                <li>{{ $circle }}</li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
