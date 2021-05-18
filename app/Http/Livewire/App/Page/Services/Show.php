<?php

namespace App\Http\Livewire\App\Page\Services;

use Livewire\Component;

use App\Models\Service;

class Show extends Component
{
    public $service;

    public function mount($url)
    {
        $this->service = Service::where('url', $url)->where('privacy', 1)->firstOrFail();
    }
    
    public function render()
    {
        return view('livewire.app.page.services.show')->extends('layouts.app');
    }
}
