@extends('layouts.app')

@section('content')

    <!-- Banner -->
    @livewire('app.page.home.banner')

    <!-- Opening Hours -->
    @livewire('app.page.home.opening-hours')

    <!-- Circle of Care -->
    @livewire('app.page.home.circle-of-care')

    <!-- Our Doctors -->
    @livewire('app.page.home.our-doctors')

    <!-- Faq -->
    @livewire('app.page.home.faq')

    <!-- Map -->
    @livewire('app.page.home.map')


@endsection
