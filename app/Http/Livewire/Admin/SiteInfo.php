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
        if(!Info::find(1)){
            Info::create([
                'name' => $this->name,
                'domain' => $this->domain,
                'mobile' => $this->mobile,
                'email' => $this->email,
                'google_map' => $this->google_map,
                'address' => $this->address,
                'overview' => $this->overview,
                'facebook_page' => $this->facebook_page,
                'facebook_group' => $this->facebook_group,
                'twitter' => $this->twitter,
                'linkedin' => $this->linkedin,
                'youtube' => $this->youtube,                
                'created_by' => auth()->id(),
                'created_at' => now(),
            ]);
        }else{
            Info::find(1)->update([
                'name' => $this->name,
                'domain' => $this->domain,
                'mobile' => $this->mobile,
                'email' => $this->email,
                'google_map' => $this->google_map,
                'address' => $this->address,
                'overview' => $this->overview,
                'facebook_page' => $this->facebook_page,
                'facebook_group' => $this->facebook_group,
                'twitter' => $this->twitter,
                'linkedin' => $this->linkedin,
                'youtube' => $this->youtube,                
                'updated_by' => auth()->id(),
                'updated_at' => now(),
            ]);
        }

        return back()->with('success', 'Success!');
    }

    public function render()
    {
        return view('livewire.admin.site-info')->extends('layouts.admin');
    }
}
