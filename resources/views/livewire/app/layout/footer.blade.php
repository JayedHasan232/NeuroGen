<footer class="site-footer footer-default">
    <div class="footer-main-content">
        <div class="container">
            <div class="row">
                <div class="footer-main-content-elements">
                    <div class="footer-main-content-element col-md-6 col-sm-6">
                        <aside class="widget">
                            <div class="widget-title uni-uppercase"><a href="#"><img
                                        src="images/logowhite.png" alt="" class="img-responsive"></a></div>
                            <div class="widget-content">
                                <p>{{ $overview }}</p>
                                <div class="uni-info-contact">
                                    <ul>
                                        <li>
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            {{ $address }}
                                        </li>
                                        <li>
                                            <i class="fa fa-globe"></i>
                                            <a href="//www.{{ $domain }}">www.{{ $domain }}</a></li>
                                        <li>
                                            <i class="fa fa-phone" aria-hidden="true"></i>
                                            +88{{ $mobile }}
                                        </li>
                                        <li>
                                            <i class="fa fa-envelope-o" aria-hidden="true"></i>{{ $email }}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div class="footer-main-content-element col-md-3 col-sm-6">
                        <aside class="widget">
                            <h3 class="widget-title uni-uppercase">quick links</h3>
                            <div class="widget-content">
                                <div class="uni-quick-link">
                                    <ul>
                                        <li><a href="/"><span>+</span> Home</a></li>
                                        <li><a href="{{ route('app.about') }}"><span>+</span> about</a></li>
                                        <li><a href="services.html"><span>+</span> services</a></li>
                                        <li><a href="{{ route('app.contact') }}"><span>+</span> contact</a></li>
                                        <li><a href="{{ route('app.appointment') }}"><span>+</span> appointment</a></li>
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div class="footer-main-content-element col-md-3 col-sm-6">
                        <aside class="widget">
                            <h3 class="widget-title uni-uppercase">Follow Us</h3>
                            <div class="widget-content">
                                <div class="uni-footer-newletter">
                                    <div class="uni-social">
                                        <ul>
                                            <li>
                                                <a href="//www.facebook.com/{{ $facebook_page }}"
                                                    target="_blank"><i class="fa fa-facebook"
                                                    aria-hidden="true"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="//www.youtube.com/channel/{{ $youtube }}"
                                                    target="_blank">
                                                    <i class="fa fa-youtube-play"
                                                    aria-hidden="true"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="//twitter.com/{{ $twitter }}"
                                                    target="_blank">
                                                    <i class="fa fa-twitter"
                                                    aria-hidden="true"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="//www.linkedin.com/in/{{ $linkedin }}"
                                                    target="_blank">
                                                    <i class="fa fa-linkedin"
                                                    aria-hidden="true"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="//www.facebook.com/groups/{{ $facebook_group }}"
                                                    target="_blank">
                                                    <i class="fa fa-users"
                                                    aria-hidden="true"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area">
        <div class="container">
            <div class="copyright-content">
                <div class="row">
                    <div class="col-sm-6">
                        <p class="copyright-text">&copy; {{ date('Y') }} All Rights Reserved by {{ $name }} | Designed by Ashik Al Habib</p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</footer>