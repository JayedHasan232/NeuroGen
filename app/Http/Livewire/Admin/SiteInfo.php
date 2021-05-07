<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

use App\Models\SiteInfo as Info;

class SiteInfo extends Component
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

    public function updateInfo()
    {
        $info = Info::find(1);

        $info->name = $this->name;
        $info->domain = $this->domain;
        $info->mobile = $this->mobile;
        $info->email = $this->email;
        $info->google_map = $this->google_map;
        $info->address = $this->address;
        $info->overview = $this->overview;
        $info->facebook_page = $this->facebook_page;
        $info->facebook_group = $this->facebook_group;
        $info->twitter = $this->twitter;
        $info->linkedin = $this->linkedin;
        $info->youtube = $this->youtube;
        
        $info->updated_by = auth()->id();
        $info->updated_at = now();

        $info->save();

        return back()->with('success', 'Success!');
    }

    public function render()
    {
        return view('livewire.admin.site-info')->extends('layouts.admin');
    }
}
