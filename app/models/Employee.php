<?php 
use Illuminate\Database\Eloquent\SoftDeletingTrait;
class Employee extends Eloquent
{
	use SoftDeletingTrait;
	protected $table='employee';
	protected $dates = ['deleted_at'];
	public function client()
	{

	}
	public function branchEmp()
	{
		return $this->hasOne('BranchEmp','emp_id','user_id');
	}
}