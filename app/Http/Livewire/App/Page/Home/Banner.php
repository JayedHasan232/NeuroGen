<?php

namespace App\Http\Livewire\App\Page\Home;

use Livewire\Component;

use App\Models\Slider;

class Banner extends Component
{
    public $sliders;

    public function mount()
    {
        $this->sliders = Slider::where('privacy', 1)->get();
    }

    public function render()
    {
        return view('livewire.app.page.home.banner');
    }
}
