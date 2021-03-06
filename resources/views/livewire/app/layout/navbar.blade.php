<div class="uni-medicare-header sticky-menu">
    <div class="container">
        <div class="uni-medicare-header-main">
            <div class="row">
                <div class="col-md-2">
                    <!--LOGO-->
                    <div class="wrapper-logo">
                        <a class="logo-default" href="/">
                            <img src="{{ asset('storage/' . $info->logo) }}" alt="Logo" class="img-responsive">
                        </a>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-10 navs-appointment">
                    <!--MENU TEXT-->
                    <div class="uni-main-menu">
                        <nav class="main-navigation uni-menu-text">
                            <div class="cssmenu">
                                <ul>
                                    <li class="has-sub">
                                        <a href="/">Home</a>
                                        <ul>
                                            <li><a href="{{ route('app.about') }}">About Us</a></li>
                                            <li><a href="{{ route('app.contact') }}">Contact Us</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-sub"><a href="{{ route('app.services') }}">Healthcare Service</a>
                                        <ul>
                                            <li class="has-sub"><a href="#">Clinics</a>
                                                <ul>
                                                    <li><a href="{{ route('app.healthcare.team.index', 'doctors') }}">Doctors List</a></li>
                                                </ul>
                                            </li>
                                            <li class="has-sub"><a href="#">Genetics and Genomic Medicine Centre</a>
                                                <ul>
                                                    <li><a href="{{ route('app.healthcare.team.index', 'lab-personnel') }}">Genetic Laboratory Personnel</a></li>
                                                    <li><a href="{{ route('app.healthcare.genetic-test') }}">Genetic Tests</a></li>
                                                </ul>
                                            </li>
                                            <li class="has-sub"><a href="#">Centre for Precision Therapeutics</a>
                                                <ul>
                                                    <li><a href="{{ route('app.healthcare.deep-clinical-assessment') }}">Deep Clinical Assessment</a></li>
                                                    <li><a href="{{ route('app.healthcare.therapeutics') }}">Therapeutics</a></li>
                                                    <li><a href="{{ route('app.healthcare.team.index', 'psychologists') }}">Clinical Psychologists</a></li>
                                                    <li><a href="{{ route('app.healthcare.team.index', 'therapists') }}">Therapists</a></li>
                                                    <li><a href="{{ route('app.healthcare.team.index', 'nutritionists') }}">Nutritional Guidance</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="{{ route('app.research') }}">Research</a></li>
                                    <li><a href="{{ route('app.blog') }}">Blog</a> </li>
                                    <li class="has-sub">
                                        <a href="#">Gallery</a>
                                        <ul>
                                            <li><a href="{{ route('app.gallery', 'images') }}">Images</a></li>
                                            <li><a href="{{ route('app.gallery', 'videos') }}">Videos</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="{{ route('app.career') }}">Career</a> </li>
                                </ul>
                            </div>
                        </nav>
                    </div>

                    <!--SEARCH AND APPOINTMENT-->
                    <div class="uni-search-appointment">
                        <ul>
                            <li class="uni-btn-appointment">
                                <a href="{{ route('app.appointment') }}">Appointment</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>