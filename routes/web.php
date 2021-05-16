<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');




// Livewire
Route::namespace('App\Http\Livewire')->group(function()
{
    // App
    Route::namespace('App\Page')->name('app.')->group(function()
    {
        Route::get('research', Research::class)->name('research');
        
        // Healthcare Services
        Route::name('healthcare.')->prefix('healthcare')->group(function()
        {
            Route::namespace('Team')->name('team.')->group(function()
            {
                Route::get('{type}', Index::class)->name('index');
                Route::get('{type}/{url}', Show::class)->name('show');
            });
        });

        // Services
        Route::get('services', Services\Index::class)->name('services');
        Route::get('services/{url}', Services\Show::class)->name('services.show');
        
        // Blog
        Route::get('blog', Blog\Index::class)->name('blog');
        Route::get('blog/{url}', Blog\Show::class)->name('blog.show');
        
        // Gallery
        Route::get('gallery', Gallery::class)->name('gallery');

        Route::get('career', Career::class)->name('career');
        Route::get('appointment', Appointment::class)->name('appointment');

        Route::get('about', About::class)->name('about');
        Route::get('contact', Contact::class)->name('contact');
        Route::get('developer', Developer::class)->name('developer');
        
    });
    
    
    // Admin
    Route::middleware(['auth', 'admin'])->namespace('Admin')->name('admin.')->prefix('admin')->group(function()
    {
        // Dashboard
        Route::get('dashboard', Dashboard::class)->name('dashboard');

        // Blog
        Route::namespace('Blog')->name('blog.')->prefix('blog')->group(function(){
            Route::get('create', Create::class)->name('create');
            Route::get('edit/{id}', Edit::class)->name('edit');
            
            Route::namespace('Category')->name('category.')->prefix('category')->group(function()
            {
                Route::get('create', Create::class)->name('create');
                Route::get('edit/{id}', Edit::class)->name('edit');
            });
            
            Route::namespace('SubCategory')->name('sub-category.')->prefix('sub-category')->group(function()
            {
                Route::get('create', Create::class)->name('create');
                Route::get('edit/{id}', Edit::class)->name('edit');
            });
        });

        // Team
        Route::namespace('Team')->name('team.')->prefix('team')->group(function(){
            Route::get('create', Create::class)->name('create');
            Route::get('edit/{id}', Edit::class)->name('edit');
        });

        // Slider
        Route::namespace('Slider')->name('slider.')->prefix('slider')->group(function(){
            Route::get('create', Create::class)->name('create');
            Route::get('edit/{id}', Edit::class)->name('edit');
        });

        // OpeningHour
        Route::get('opening-hour', OpeningHour::class)->name('opening-hour');

        // Appoitment
        Route::get('appoitment', Appoitment::class)->name('appoitment');

        // FAQ
        Route::namespace('Faq')->name('faq.')->prefix('faq')->group(function(){
            Route::get('create', Create::class)->name('create');
            Route::get('edit/{id}', Edit::class)->name('edit');
        });
        
        // Gallery
        Route::namespace('Gallery')->name('gallery.')->prefix('gallery')->group(function(){
            Route::get('create', Create::class)->name('create');
            Route::get('edit/{id}', Edit::class)->name('edit');
        });
        
        // Career
        Route::namespace('Career')->name('career.')->prefix('career')->group(function(){
            Route::get('applications', Applications::class)->name('applications');
            Route::get('create', Create::class)->name('create');
            Route::get('edit/{id}', Edit::class)->name('edit');
        });
        
        // Research
        Route::namespace('Research')->name('research.')->prefix('research')->group(function(){
            Route::get('create', Create::class)->name('create');
            Route::get('edit/{id}', Edit::class)->name('edit');
        });
        
        // Site Informations
        Route::get('site-informations', SiteInfo::class)->name('site-info');
    });
});




// Laravel Filemanager
Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});