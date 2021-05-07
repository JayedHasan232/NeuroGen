<?php

namespace App\Http\Livewire\App\Page\Home;

use Livewire\Component;

use App\Models\SiteInfo as Info;

class Map extends Component
{
    public $google_map;
    
    public function mount()
    {
        $this->google_map = Info::find(1)->google_map ?? '';
    }

    public function render()
    {
        return view('livewire.app.page.home.map');
    }
}
