<?php

namespace App\Http\Livewire\Admin\Slider;

use Livewire\Component;
use Livewire\WithFileUploads;

use App\Models\Slider;

class Create extends Component
{
    use WithFileUploads;

    public $privacy = 1;
    public $title;
    public $overview;
    public $link;
    public $link_title;

    public function store()
    {
        $this->validate([
            'title' => 'required',
            'overview' => 'required',
        ]);

        $slider = Slider::create([
            'title' => $this->title,
            'overview' => $this->overview,
            'link' => $this->link,
            'link_title' => $this->link_title,
            'created_by' => auth()->id(),
            'created_at' => now(),
        ]);

        if($slider && $this->image){
            $slider->image = $this->image->store('images/slider');
            $slider->save();
        }
            
        $this->reset();

        return back()->with('success', 'Success!');
    }
    
    public function render()
    {
        return view('livewire.admin.slider.create')->extends('layouts.admin');
    }
}
