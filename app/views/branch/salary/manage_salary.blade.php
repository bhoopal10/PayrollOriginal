@extends('layout.main')
@section('content')
<div class="main-content">
	<div class="container">
		<div class="page-content">
		<!-- heading -->
			<div class="single-head">
				<!-- Heading -->
				@if(Session::has('success'))
					<div class="alert alert-success">{{Session::get('success')}}</div>
				@endif
				@if(Session::has('error'))
				<div class="alert alert-danger">{{Session::get('error')}}</div>
				@endif
				<h3 class="pull-left"><i class="fa fa-credit-card red"></i>Pay Salary</h3>
				<div class="clearfix"></div>
			</div><!-- end singlehead -->
			<!-- Form page -->
			<div class="page-users">
			{{Form::open(array('class'=>'form-inline','id'=>'selectPaySalary','method'=>'get','url'=>'branch/create-salary/create','onsubmit'=>'return validatePaySalary()'))}}
	
				<div class="form-group">
					<label for="" class="col-lg-8 control-label">Salary for the Month</label>
					<div class="col-lg-2">
						<select name="month" id="month" class="form-control" onchange="getDates()">
							<?php $mons = array('01' => "Jan", '02' => "Feb", '03' => "Mar", '04' => "Apr", '05' => "May", '06' => "Jun", '07' => "Jul", '08' => "Aug", '09' => "Sep", 10 => "Oct", 11 => "Nov", 12 => "Dec");  ?>
							<option value="">Month</option>
							@foreach($mons as $key=>$val)
							<option value="{{$key}}" @if(Input::old('month') == $key) selected @endif>{{$val}}</option>
							@endforeach
						</select>
					</div>
				</div> 
				<div class="form-group">
					<div class="col-lg-3">
						<select name="year" id="year" class="form-control" onchange="getDates()">
						<option value="">Year</option>
						<?php $year=sprintf(2000); ?>
							@while($year < 2100)
							<option value="{{$year}}" @if(Input::old('year') == $year ) selected @endif>{{$year}}</option>
							<?php $year++; ?>
							@endwhile
						</select>
					</div>
				</div>
			
				<div class="form-group">
					<label for="" class="col-lg-6 control-label">Employee type</label>
					<div class=" col-lg-2">
						<select name="emp_type" id="emp_typeSelect" class="form-control">
							<option value="inhouse" @if(Input::old('emp_type') == 'inhouse') selected @endif>In House</option>
							<option value="outsource" @if(Input::old('emp_type') == 'outsource') selected @endif>Out Source</option>
						</select>
					</div>
				</div> 
				<div class="form-group" style="display:none" id="clientSelect">
					
				</div> 
				<div class="form-group" style="display:none" id="pay_type">
					
				</div> 
				<div id="individual" class="form-group" style="display:none">
					
				</div>
				<div class="form-group">
					<label for="" class="col-lg-offset-2 col-lg-1 control-label"></label>
					<div class="col-lg-2">
						<button type="submit" class="btn btn-success">Proceed</button>
					</div>
				</div> 
			{{Form::close()}}
			<hr>
			@if(isset($emp))
				<!-- ================================ View Employee Details ================================ -->
				<div class="table-responsive">
				<table class="table table-bordered" style="border-left:none">
					<tr class="active">
						<th>SNo</th>
						<th>Name</th>
						<th>EmpID</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>total Amount</th>
						<th>Action</th>
					</tr>
					<?php $i=$emp->getFrom(); ?>
					@forelse($emp as $user)
					<tr>
						<th>{{$i++}}</th>
						<th>{{$user->employee->firstname .' '. $user->employee->lastname}}</th>
						<th>{{$user->username}}</th>
						<th>{{$user->email}}</th>
						<th>{{$user->contact->mobile}}</th>
						<th>{{'toot'}}</th>
						<th>
						<!-- condition -->

						@forelse($user->empPayment as $payment)
							@if( $payment->pay_date == $date)
							<button style="" disabled="disabled" class="btn btn-success" id="paid_{{$i}}" class="paying">Payed</button>
							<button style=""  class="btn btn-success" id="edit_{{$i}}" class="paid" onclick="return editDiaOpen('{{$user->id}}','{{$date}}',{{$i}},{{$payment->id}})">Edit</button>
							
							@endif
							@empty
							<button  onclick="return diaOpen('{{$user->id}}','{{$date}}',{{$i}})" id="pay_{{$i}}" class="btn btn-info">Pay</button>
							<button style="display:none" disabled="disabled" class="btn btn-info" id="paying_{{$i}}" class="paying">Paying...</button>
							<button style="display:none" disabled="disabled" class="btn btn-success" id="paid_{{$i}}" class="paid">Payed</button>
							<button style="display:none"  class="btn btn-success" id="edit_{{$i}}" onclick="" class="paid" >Edit</button>
						@endforelse
						@forelse($user->empPayment as $payment)
							@if($payment->pay_date != $date )
							<button  onclick="return diaOpen('{{$user->id}}','{{$date}}',{{$i}})" id="pay_{{$i}}" class="btn btn-info">Pay</button>
							<button style="display:none" disabled="disabled" class="btn btn-info" id="paying_{{$i}}" class="paying">Paying...</button>
							<button style="display:none" disabled="disabled" class="btn btn-success" id="paid_{{$i}}" class="paid">Payed</button>
							<button style="display:none"  class="btn btn-success" id="edit_{{$i}}" onclick="" class="paid" >Edit</button>
							@endif
						@endforeach
						</th>
					</tr>
					@endforeach
				</table>
				{{$emp->appends(Input::all())->links()}}
				</div>
				<!-- ================================ End View Employee Details ============================ -->
			@endif
			<!-- =====================Dialog=============================== -->
			<div id="dialog" style="display:none">
				
			</div>
			<!-- =====================end dialog ========================== -->
			</div><!-- end page users -->
		</div><!-- end page content -->
	</div><!-- end Container -->
</div><!-- end main content -->
@stop
@section('script')
{{HTML::style('public/css/jquery-ui-1.10.4.custom.min.css')}}
{{HTML::script('public/js/jquery-ui-1.10.4.custom.min.js')}}
@include('branch/salary.manage_salary_js')
@stop