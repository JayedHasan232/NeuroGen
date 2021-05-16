<div>
    <div class="uni-banner-default uni-background-1">
        <div class="container">
            <!-- Page title -->
            <div class="page-title">
                <div class="page-title-inner">
                    <h1>Gallery</h1>
                </div>
            </div>
            <!-- End page title -->

            <!-- Breadcrumbs -->
            <ul class="breadcrumbs">
                <li><a href="#">Home</a></li>
                <li><a href="#">Gallery</a></li>
            </ul>
            <!-- End breadcrumbs -->
        </div>
    </div>

    <div class="uni-gallery-body">
        <div class="container">
            <div class="uni-shortcode-tabs-default">
                <div class="uni-shortcode-tab-2">
                    <div class="tabbable-panel">
                        <div class="tabbable-line">
                            <ul class="nav nav-tabs ">
                                <li class="active">
                                    <a href="#tab_default_1" data-toggle="tab" aria-expanded="false">
                                        Photos </a>
                                </li>
                                <li class="">
                                    <a href="#tab_default_2" data-toggle="tab" aria-expanded="true">
                                        Videos </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_default_1">
                                    <div class="row"  id="lightgallery1">
                                        @foreach($images as $image)
                                        <div class="col-md-3 col-sm-6" data-src="images/gallery/photo/1.jpg">
                                            <div class="item-img">
                                                <img src="{{ asset('storage/' . $image->source) }}" alt="{{ $image->title }}" class="img-responsive">
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab_default_2">
                                    <div class="row"  id="lightgallery2">
                                        @foreach($videos as $video)
                                        <div class="col-md-4 col-sm-6" data-src="https://youtu.be/{{ $video->source }}">
                                            <div class="item-img">
                                                <iframe src="https://www.youtube.com/embed/{{ $video->source }}?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
