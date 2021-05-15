<div class="uni-home-faq-latest-post">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="uni-home-faq">
                    <div class="uni-home-title">
                        <h3>Faq's</h3>
                        <div class="uni-line"></div>
                    </div>
                    <div class="accordion-default">
                        <div class="accordion-min-plus">
                            <div class="accordion">
                                @forelse($faqs as $faq)
                                <div class="accordion-item">
                                    <h4 class="accordion-toggle">{{ $faq->question }}</h4>
                                    <div class="accordion-content">
                                        <p>{{ $faq->answer }}</p>
                                    </div>
                                </div>
                                @empty
                                    No data!
                                @endforelse

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>