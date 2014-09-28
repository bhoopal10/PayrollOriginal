<?php

class HomeController extends BaseController {

	/*
	|--------------------------------------------------------------------------
	| Default Home Controller
	|--------------------------------------------------------------------------
	|
	| You may wish to use controllers instead of, or in addition to, Closure
	| based routes. That's great! Here is an example controller method to
	| get you started. To route to this controller, just add the route:
	|
	|	Route::get('/', 'HomeController@showWelcome');
	|
	*/

	public function showWelcome()
	{
		return View::make('hello');
	}
	public function template($code)
	{
		return View::make('template.jstemplate')
					->with('data',$code);
	}
	public function salaryTemplate($req)
	{
		$str =explode(",", $req);
		$code = $str[0];
		$con  = $str[1];
		$field= $str[2];
		$comp = \CTCComponent::where('is_active','=','yes')->where('show_default','=',$con)->get();
		return View::make('template.salary_component')
					->with('comp',$comp)
					->with('field',$field)
					->with('data',$code);
	}
	public function salaryEdit($code)
	{
		$str = explode(",",$code);
		$type  = $str[0];
		$id 	= $str[1];
		$user = User::findOrFail($id);
		$comp = \CTCComponent::where('is_active','=','yes')->get();
		return View::make('template.salary_edit')
					->with('comp',$comp)
					->with('type',$type)
					->with('user',$user);

	}

}
