<div class="uni-hơm-1-department">
    <div class="container">
        <div class="uni-home-title">
            <h3>Circle of Care</h3>
        </div>
        <div class="uni-shortcode-icon-box-11">
            <div class="row">
                @foreach($services as $service)
                <div class="col-md-4 col-sm-6">
                    <div class="uni-shortcode-icon-box-11-default">
                        <div class="item-icons" stye="height: 100%">
                            <img src="{{ asset('storage/' . $service->image) }}" alt="{{ $service->title }}" class="img-responsive">
                        </div>
                        <div class="item-caption">
                            <h4>{{ $service->title }}</h4>
                            <p>{{ Str::limit($service->overview, 200, '...') }} <a href="{{ route('app.services.show', $service->url) }}">Read More</a></p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>