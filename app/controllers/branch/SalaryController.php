<?php
namespace App\Controller\Branch;
class SalaryController extends ControllerBase
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		return \View::make('branch/salary.manage_salary');
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		if(\Input::get('month'))
		{
			$data = \Input::all();
			$date = $data['year'].'-'.$data['month'].'-01';
			$emp_type = $data['emp_type'];
			$client = \Input::get('clientId');
			$payType = \Input::get('payType');
			$empId = \Input::get('empId');
			if($emp_type == 'inhouse')
			{
				$uId = \Auth::user()->id;
				$emp = \User::whereHas('empJobDetail',function($q) use($uId,$date){
								$q->where('emp_type','=','inhouse');
								$q->whereHas('branch',function($s) use($uId){
									$s->where('branch_id','=',$uId);
									});
								$q->whereHas('attend',function($a) use($date){
									$a->where('attend_date','=',$date);
								});
							})->paginate(20);

			}
			elseif($emp_type == 'outsource' && $client != '')
			{
				$emp = \User::whereHas('empJobDetail',function($q) use($client,$date){
									$q->whereHas('attend',function($a) use($date){
										$a->where('attend_date','=',$date);
									});
									$q->where('emp_type','=','outsource');
									$q->where('client_id','=',$client);
								})->paginate(20);
			}
			return \View::make('branch/salary.manage_salary')
					->with('emp',$emp)
					->with('date',$date)
					->with(\Input::flash());
		}
		else
		{
			return \View::make('branch/salary.manage_salary');
		}
		
		
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
