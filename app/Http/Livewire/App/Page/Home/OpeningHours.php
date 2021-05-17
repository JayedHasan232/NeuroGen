<?php

namespace App\Http\Livewire\App\Page\Home;

use Livewire\Component;

use App\Models\SiteInfo as Info;
use App\Models\OpeningHour as OfficeTime;

class OpeningHours extends Component
{
    public $info;
    public $opening_hours;

    public function mount()
    {
        $this->info = Info::find(1);
        $this->opening_hours = OfficeTime::where('privacy', 1)->get();
    }

    public function render()
    {
        return view('livewire.app.page.home.opening-hours');
    }
}
