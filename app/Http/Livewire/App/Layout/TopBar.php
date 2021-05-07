<?php

namespace App\Http\Livewire\App\Layout;

use Livewire\Component;

use App\Models\SiteInfo as Info;

class TopBar extends Component
{
    public $facebook_page, $twitter, $linkedin, $youtube;
    
    public function mount()
    {
        $info = Info::find(1);
        
        $this->facebook_page = $info->facebook_page ?? '';
        $this->twitter = $info->twitter ?? '';
        $this->linkedin = $info->linkedin ?? '';
        $this->youtube = $info->youtube ?? '';
    }

    public function render()
    {
        return view('livewire.app.layout.top-bar');
    }
}
