<?php

namespace App\Http\Livewire\App\Page\Home;

use Livewire\Component;

use App\Models\Team;

class OurDoctors extends Component
{
    public $doctors;

    public function mount()
    {
        $this->doctors = Team::where('privacy', 1)->where('member_type', 1)->get()->take(3);
    }

    public function render()
    {
        return view('livewire.app.page.home.our-doctors');
    }
}
