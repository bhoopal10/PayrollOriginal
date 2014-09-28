<?php 
use Illuminate\Database\Eloquent\SoftDeletingTrait;
class SalaryPackage extends Eloquent
{
	use softDeletingTrait;
	protected $table =	'salary_package';
	protected $dates =	['updated_at','deleted_at'];
	// protected $hidden = array('created_at','updated_at','deleted_at','user_id','id');
}