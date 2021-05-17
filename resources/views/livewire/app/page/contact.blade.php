<div>
    <div class="uni-banner-default" style="background: url({{ asset('storage/' . \App\Models\SiteInfo::find(1)->header_bg) }}) no-repeat;">
        <div class="container">
            <!-- Page title -->
            <div class="page-title">
                <div class="page-title-inner">
                    <h1>Contact us</h1>
                </div>
            </div>
            <!-- End page title -->

            <!-- Breadcrumbs -->
            <ul class="breadcrumbs">
                <li><a href="/">Home</a></li>
                <li><a href="#">Contact us</a></li>
            </ul>
            <!-- End breadcrumbs -->
        </div>
    </div>

    <div class="uni-contact-us-body">
        <!-- Map -->
        @livewire('app.page.home.map')

        <div class="uni-contact-us-body-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="uni-send-a-message">
                            <div class="uni-contact-title">
                                <h3>Send a message</h3>
                                <div class="uni-line"></div>
                            </div>
                            <div class="uni-send-a-message-body">
                                <form action="#">
                                    <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" name="name" value="" placeholder="your name">
                                    </div>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                        <input type="tel" class="form-control" name="phone" value="" placeholder="phone number">
                                    </div>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                        <input type="email" class="form-control" name="email" value="" placeholder="email">
                                    </div>
                                    <div class="input-group form-group">
                                        <textarea id="message" name="phone" class="form-control" placeholder="note"></textarea>
                                    </div>

                                    <button class="vk-btn vk-btn-send">send</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="uni-contact-info">
                            <div class="uni-contact-title">
                                <h3>Contact us</h3>
                                <div class="uni-line"></div>
                            </div>
                            <div class="uni-contact-info-body">
                                <div class="item">
                                    <div class="icon-holder">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <div class="text-holder">
                                        <p>{{ $info->address }}</p>
                                    </div>
                                </div>

                                <!--customer care-->
                                <div class="uni-customer-care">
                                    <div class="uni-contact-info-title">
                                        <h4>customer care</h4>
                                        <div class="uni-divider"></div>
                                    </div>

                                    <div class="item">
                                        <div class="icon-holder">
                                            <i class="fa fa-phone" aria-hidden="true"></i>
                                        </div>
                                        <div class="text-holder">
                                            <p>Call Us</p>
                                            <span>+88{{ $info->mobile }}</span>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="icon-holder">
                                            <i class="fa fa-envelope" aria-hidden="true"></i>
                                        </div>
                                        <div class="text-holder">
                                            <p>Send Email</p>
                                            <span>{{ $info->email }}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="uni-contact-us-hours">
                            <div class="uni-contact-us-title">
                                <div class="icon">
                                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                                </div>
                                <h4>opening hours</h4>
                            </div>
                            <div class="uni-contact-us-hours-content">
                                <table class="table">
                                    @foreach($opening_hours as $time)
                                    <tr>
                                        <td>{{ $time->day }}</td>
                                        <td>{{ $time->from }} - {{ $time->to }}</td>
                                    </tr>
                                    @endforeach
                                </table>
                                <a href="#" class="book-appointment">Book appointments</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
