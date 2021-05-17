<div class="uni-home-1-our-doctor">
    <div class="uni-shortcode-team-2" style="background: url({{ asset('storage/' . \App\Models\SiteInfo::find(1)->header_bg) }}) repeat;">
        <div class="container">

            <div class="uni-home-title">
                <h3>Our Doctors</h3>
                <!-- <div class="uni-underline"></div> -->
            </div>

            <div class="uni-owl-three-item owl-carousel owl-theme">
                @foreach($doctors as $doctor)
                <div class="item">
                    <div class="uni-team-default">
                        <div class="item-img">
                            <img class="img-responsive" src="{{ asset('storage/' . $doctor->image) }}" alt="{{ $doctor->name }}">
                        </div>
                        <div class="item-caption">
                            <div class="col-md-3 col-sm-3 col-xs-3 uni-clear-padding">
                                <div class="item-icons">
                                    <img src="images/icons_box/icon_4/doctor.png" alt="">
                                </div>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 uni-clear-padding">
                                <div class="item-title">
                                    <h4>{{ $doctor->name }}</h4>
                                    <span>{{ $doctor->designation }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>