<?php 
use Illuminate\Database\Eloquent\SoftDeletingTrait;
class JobDetails extends Eloquent
{
	use SoftDeletingTrait;
	protected $table='job_details';
	protected $dates=['deleted_at','updated_at'];
	public function client()
	{
		return $this->hasOne('User','id','client_id');
	}
	public function company()
	{
		return $this->hasOne('Company','user_id','client_id');
	}
	public function emp()
	{
		return $this->hasOne('User','id','user_id');
	}
	public function dept()
	{
		return $this->hasOne('Department','id','department');
	}
	public function branch()
	{
		return $this->hasOne('BranchEmp','emp_id','user_id');
	}
	public function attend()
	{
		return $this->hasMany('EmpAttendance','emp_id','user_id');
	}
	public function payment()
	{
		return $this->hasMany('Payment','emp_id','user_id');
	}
}