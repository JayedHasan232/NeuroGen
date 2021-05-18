<?php

namespace App\Http\Livewire\App\Page\Home;

use Livewire\Component;

use App\Models\Service;

class CircleOfCare extends Component
{
    public $services;

    public function mount()
    {
        $this->services = Service::where('privacy', 1)->get();
    }

    public function render()
    {
        return view('livewire.app.page.home.circle-of-care');
    }
}
