<?php

namespace App\Http\Livewire\Admin\Research;

use Livewire\Component;
use Livewire\WithFileUploads;

use Storage;
use App\Models\Research;

class Edit extends Component
{
    use WithFileUploads;

    public $item;

    public $privacy;
    public $title;
    public $date;
    public $file;
    public $overview;

    public function mount($id)
    {
        $this->item = Research::findOrFail($id);

        $this->privacy = $this->item->privacy;
        $this->title = $this->item->title;
        $this->date = $this->item->date;
        $this->overview = $this->item->overview;
    }

    public function store()
    {
        $this->validate([
            'privacy' => 'required',
            'title' => 'string',
            'overview' => 'string',
        ]);

        $this->item->update([
            'privacy' => $this->privacy,
            'title' => $this->title,
            'date' => $this->date,
            'overview' => $this->overview,
            'updated_by' => auth()->id(),
            'updated_at' => now(),
        ]);

        if($this->file){

            Storage::delete($this->item->file);
            
            $research->source = $this->file->store('files/research');
            $research->save();
        }

        return back()->with('success', 'Success!');
    }

    public function render()
    {
        return view('livewire.admin.research.edit')->extends('layouts.admin');
    }
}
