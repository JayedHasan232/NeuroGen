<?php

namespace App\Http\Livewire\App\Layout;

use Livewire\Component;

use App\Models\SiteInfo as Info;

class Footer extends Component
{
    public $name, $domain, $mobile, $email, $google_map, $address, $overview, $facebook_page, $facebook_group, $twitter, $linkedin, $youtube;
    
    public function mount()
    {
        $info = Info::find(1);

        $this->name = $info->name ?? '';
        $this->domain = $info->domain ?? '';
        $this->mobile = $info->mobile ?? '';
        $this->email = $info->email ?? '';
        $this->google_map = $info->google_map ?? '';
        $this->address = $info->address ?? '';
        $this->overview = $info->overview ?? '';
        $this->facebook_page = $info->facebook_page ?? '';
        $this->facebook_group = $info->facebook_group ?? '';
        $this->twitter = $info->twitter ?? '';
        $this->linkedin = $info->linkedin ?? '';
        $this->youtube = $info->youtube ?? '';
    }
    
    public function render()
    {
        return view('livewire.app.layout.footer');
    }
}
