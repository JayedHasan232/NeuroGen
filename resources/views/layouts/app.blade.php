<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>{{ config('app.name', 'Laravel') }}</title>

        <link rel="shortcut icon" href="{{ asset('images/Circle of Care.png') }}" type="image/x-icon">
        <link rel="stylesheet" href="{{ asset('plugin/bootstrap/css/bootstrap.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/bootstrap/css/bootstrap-theme.css') }}">
        <link rel="stylesheet" href="{{ asset('fonts/poppins/poppins.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/fonts/font-awesome/css/font-awesome.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/jquery-ui/jquery-ui.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/process-bar/tox-progress.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/owl-carouse/owl.carousel.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/owl-carouse/owl.theme.default.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/animsition/css/animate.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/jquery-ui/jquery-ui.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/mediaelement/mediaelementplayer.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/datetimepicker/bootstrap-datepicker3.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/datetimepicker/bootstrap-datetimepicker.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugin/lightgallery/lightgallery.css') }}">
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">

        <link rel="stylesheet" href="{{ asset('css/style2.css') }}">


        <!-- Popup start-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
        <link rel="stylesheet" href="css/onclick-form-popup.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="{{ asset('js/onclick-form-popup.js') }}"></script>
        <!-- Popup end -->

    </head>
    <body>

        <!-- Loading Animation -->
        @livewire('app.layout.loading-animation')

        <!-- Mobile Nav Bar -->
        @livewire('app.layout.mobile-nav-bar')

        <div class="uni-gallery">
            <div id="wrapper-container" class="site-wrapper-container">
                
                <!-- Header -->
                <header>
                    <!-- Top Bar -->
                    @livewire('app.layout.top-bar')

                    <!-- Nav Bar -->
                    @livewire('app.layout.nav-bar')
                </header>

                <!-- Main Content -->
                <div id="main-content" class="site-main-content">
                    <section class="site-content-area">
                    
                        @yield('content')

                        <!-- Appointment -->
                        @livewire('app.page.home.appointment')
                        
                    </section>
                </div>

                <!-- Footer -->
                @livewire('app.layout.footer')

            </div>
        </div>

        <script src="{{ asset('plugin/jquery/jquery-2.0.2.min.js') }}"></script>
        <script src="{{ asset('plugin/jquery-ui/jquery-ui.min.js') }}"></script>
        <script src="{{ asset('plugin/bootstrap/js/bootstrap.js') }}"></script>
        <script src="{{ asset('plugin/process-bar/tox-progress.js') }}"></script>
        <script src="{{ asset('plugin/waypoint/jquery.waypoints.min.js') }}"></script>
        <script src="{{ asset('plugin/counterup/jquery.counterup.min.js') }}"></script>
        <script src="{{ asset('plugin/owl-carouse/owl.carousel.min.js') }}"></script>
        <script src="{{ asset('plugin/jquery-ui/jquery-ui.min.js') }}"></script>
        <script src="{{ asset('plugin/mediaelement/mediaelement-and-player.js') }}"></script>
        <script src="{{ asset('plugin/masonry/masonry.pkgd.min.js') }}"></script>
        <script src="{{ asset('plugin/datetimepicker/moment.min.js') }}"></script>
        <script src="{{ asset('plugin/datetimepicker/bootstrap-datepicker.min.js') }}"></script>
        <script src="{{ asset('plugin/datetimepicker/bootstrap-datepicker.tr.min.js') }}"></script>
        <script src="{{ asset('plugin/datetimepicker/bootstrap-datetimepicker.js') }}"></script>
        <script src="{{ asset('plugin/datetimepicker/bootstrap-datetimepicker.fr.js') }}"></script>

        <script src="{{ asset('plugin/lightgallery/picturefill.min.js') }}"></script>
        <script src="{{ asset('plugin/lightgallery/lightgallery.js') }}"></script>
        <script src="{{ asset('plugin/lightgallery/lg-pager.js') }}"></script>
        <script src="{{ asset('plugin/lightgallery/lg-autoplay.js') }}"></script>
        <script src="{{ asset('plugin/lightgallery/lg-fullscreen.js') }}"></script>
        <script src="{{ asset('plugin/lightgallery/lg-zoom.js') }}"></script>
        <script src="{{ asset('plugin/lightgallery/lg-hash.js') }}"></script>
        <script src="{{ asset('plugin/lightgallery/lg-share.js') }}"></script>
        <script src="{{ asset('plugin/sticky/jquery.sticky.js') }}"></script>

        <script src="{{ asset('js/main.js') }}"></script>

    </body>

</html>