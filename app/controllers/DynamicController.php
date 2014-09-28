<?php 
class DynamicController extends BaseController
{
	public function salaryPay()
	{
		if(Request::ajax())
		{
			$type = Input::get('type');
			if($type == 'showPayType')
			{
				return View::make('template.pay_salary_template')
					->with('type',$type);
			}
			if($type == 'outsource')
			{
				return View::make('template.pay_salary_template')
					->with('type',$type);
			}
			if($type == 'individual')
			{
				return View::make('template.pay_salary_template')
					->with('type',$type);
			}
			if($type == 'salDetail')
			{
				$id =Input::get('id');
				$date = Input::get('date');
				$user = User::where('id','=',$id)
							->with(array('empAttend'=>function($q) use($date){
								$q->where('attend_date','=',$date);
							}))->first();
							
				return View::make('template.pay_salary_template')
								->with('type',$type)
								->with('user',$user);
			}

		}
	}
}