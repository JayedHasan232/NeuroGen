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
    Route::middleware(['auth', 'admin'])->namespace('Admin\Page')->name('admin.')->prefix('admin')->group(function()
    {
        // Dashboard
        Route::get('dashboard', Dashboard::class)->name('dashboard');

        // Product
        Route::namespace('Product')->name('product.')->prefix('product')->group(function()
        {
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
        
        // Site Informations
        Route::get('site-informations', SiteInfo::class)->name('site-info');
    });
});




// Laravel Filemanager
Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});