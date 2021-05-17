<div class="uni-banner">
    <div class="uni-owl-one-item owl-carousel owl-theme">
        @foreach($sliders as $slider)
        <div class="item">
            <div class="uni-banner-img" style="background: url({{ asset('storage/' . $slider->image) }}) no-repeat;"></div>
            <div class="content animated" data-animation="flipInX" data-delay="0.9s">
                <div class="container">
                    <div class="caption">
                        <h1 style="text-align: left">{{ $slider->title }}</h1>
                        <p class="sliderOverview" style="text-align: left">{{ $slider->overview }}</p>
                        <a href="/{{ $slider->link }}">{{ $slider->link_title }}</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>