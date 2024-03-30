<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


//matches localhost:8888/lumen/public/
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/projects', 'ProjectController@getAll');
$router->get('/projects/{id}', 'ProjectController@getOne');
$router->post('/projects/add', 'ProjectController@save');
$router->post('/projects/edit/{id}', 'ProjectController@update');
$router->delete('/projects/delete/{id}', 'ProjectController@delete');













