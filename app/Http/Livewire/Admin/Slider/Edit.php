<?php

namespace App\Http\Livewire\Admin\Slider;

use Livewire\Component;
use Livewire\WithFileUploads;

use Storage;
use App\Models\Slider;

class Edit extends Component
{
    use WithFileUploads;

    public $slider;

    public $privacy;
    public $title;
    public $overview;
    public $link;
    public $link_title;
    public $image;

    public function mount($id)
    {
        $this->slider = Slider::findOrFail($id);

        $this->privacy = $this->slider->privacy;
        $this->title = $this->slider->title;
        $this->overview = $this->slider->overview;
        $this->link = $this->slider->link;
        $this->link_title = $this->slider->link_title;
    }

    public function store()
    {
        $this->validate([
            'privacy' => 'required',
            'title' => 'required',
            'overview' => 'required',
            'link' => 'required',
            'link_title' => 'required',
        ]);

        $this->slider->update([
            'privacy' => $this->privacy,
            'title' => $this->title,
            'overview' => $this->overview,
            'link' => $this->link,
            'link_title' => $this->link_title,
            'updated_by' => auth()->id(),
            'updated_at' => now(),
        ]);

        if($this->image){

            Storage::delete($this->slider->image);

            $this->slider->image = $this->image->store('images/team');
            $this->slider->save();
        }

        return back()->with('success', 'Success!');
    }

    public function render()
    {
        return view('livewire.admin.slider.edit')->extends('layouts.admin');
    }
}
