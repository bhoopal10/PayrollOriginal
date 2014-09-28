@if($type == 'inhouse')
<label for="" class=" col-lg-5 control-label">Select Pay</label>
<div class="col-lg-4">
	<?php $client = App\Lib\libEmp::clientByBranch(Auth::user()->id); ?>
	<select name="clientId" id="clientSelect" class="col-sm-12 form-control">
		@forelse($client as $clients)
		<option value="{{ $clients->user->id }}" @if(Input::old('clientId') == $clients->user->id) selected @endif>{{$clients->user->company->company_name or ''}}</option>
		@endforeach
	</select>
</div>
@endif
@if($type == 'outsource')
<label for="" class=" col-lg-6 control-label">Client Name</label>
	<div class="col-lg-4">
		<?php $client = App\Lib\libEmp::clientByBranch(Auth::user()->id); ?>
		<select name="clientId" id="clientSelect" class="col-sm-12 form-control">
			@forelse($client as $clients)
			<option value="{{ $clients->user->id }}" @if(Input::old('clientId') == $clients->user->id) selected @endif>{{$clients->user->company->company_name or ''}}</option>
			@endforeach
		</select>
	</div>
@endif
@if($type == 'showPayType')
<label for="" class=" col-lg-5 control-label">Select Pay</label>
<div class="col-lg-4">
	<select name="payType" id="payType" class="col-sm-12 form-control">
		<option value="all-employee">All Employee</option>
		<option value="individual">Individal</option>
	</select>
</div>
@endif
@if($type == 'individual')
<label for="" class=" col-lg-6 control-label">Enter EmployeeID</label>
<div class="col-lg-5">
	<input type="text" name="empId" class="form-control" id="empId" placeholder="EmployeeID">
</div>
@endif
@if($type == 'salDetail')
{{Form::open(array('method'=>'post','onsubmit'=>'return saveSal()'))}}
	<div class="row">
		<div class="col-lg-6">
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">Employee ID</label>
				<div class="col-lg-6">
					<p>{{$user->username}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">Employee Name</label>
				<div class="col-lg-6">
					<p>{{$user->employee->firstname.' '.$user->employee->lastname}}</p>
				</div>
			</div>
			<div class="clearfix"></div>

			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">Department</label>
				<div class="col-lg-6">
					<p>{{$user->empJobDetail->dept->name or ''}}</p>
				</div>
			</div>
			<div class="clearfix"></div>

			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">Place of posting</label>
				<div class="col-lg-6">
					<p>{{$user->empJobDetail->place_of_posting or 'NA'}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">PF No</label>
				<div class="col-lg-6">
					<p>{{$user->empPfEsi->pfno or 'NA'}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">Bank Ac/No</label>
				<div class="col-lg-6">
					<p>{{$user->empBankDetail->account_no or 'NA'}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">Leave Sanctioned</label>
				<div class="col-lg-6">
					<!-- <input type="text" name="leave_sanctioned" id="leave_sanctioned" class="form-control"> -->
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-6 control-form">Paid Leave</label>
				<div class="col-lg-6">
					<p>{{$user->empAttend->leave_days}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
		</div>
		<div class="col-lg-6">
			<div class="col-lg-6">
				<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-7 control-form">Date of Salary</label>
				<div class="col-lg-5">
					<input type="text" readonly name="date_of_salary" placeholder="Date of salary" value="{{date('t/m/Y',strtotime($user->empAttend->attend_date))}}">
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-7 control-form">Date of Joining</label>
				<div class="col-lg-5">
					<p>{{$user->empJobDetail->joining_date or ''}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-7 control-form">Designation</label>
				<div class="col-lg-5">
					<p>{{$user->empJobDetail->designation or ''}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-7 control-form">Salary paid from</label>
				<div class="col-lg-5">
					<p>{{$user->empJobDetail->salary_paid_from or ''}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-7 control-form">ESI No</label>
				<div class="col-lg-5">
					<p>{{$user->empPfEsi->esino or 'NA'}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-7 control-form">Attendance</label>
				<div class="col-lg-5">
					<p>{{$user->empAttend->present_days}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--  -->
			<div class="form-group">
				<label for="" class="col-lg-7 control-form">LWP</label>
				<div class="col-lg-5">
					<p>{{$user->empAttend->lwp}}</p>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="clearfix"></div>
			<!--  -->
			
		</div>
	</div>
	<div class="clearfix"></div>
	<hr>
	<div class="row-fluid">
	<?php $ctc = ctcComponent();  ?>
		<div class="col-lg-6">
			<div class="table-responsive" >
				<table class="table table-bordered">
					<tbody>
						<tr class="active">
							<th>Salary Head</th>
							<th> Gross Amt.(Rs)</th>
							<th>Actual Amt.(Rs)</th>
						</tr>
						@foreach($ctc as $ct)
						<?php $comp = $ct->component_name ?>
							@if($user->empSalary->$comp &&  $ct->component_type == 'earning')
						<tr>
							<td>{{wordwrap($ct->component_name,20,"<br>",true)}}</td>
							<td>{{$user->empSalary->$comp}}</td>
							<?php $ctc_name = $ct->component_name; if($ct->attendance_dependant == 'yes')
									{ 
										
										$basic = $user->empSalary->$ctc_name;
										$pay_days = $user->empJobDetail->attend[0]->pay_days;
										$present_days = $user->empJobDetail->attend[0]->present_days;
										$leave_days = $user->empJobDetail->attend[0]->leave_days;
										// $lwp = $user->empDetail->attend[0]->lwp;
										
										$tot = ($basic / $pay_days) * $present_days;
									} 
									else
									{
										$tot = $user->empSalary->$ctc_name;
									}
							?>
							<td><input type="text" class="form-control earn" value="{{round($tot)}}" onkeyup="if(isNaN($(this).val())) { $(this).val(''); }return salFun();"></td>
						</tr>
							@endif
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="table-responsive">
				<table class="table table-bordered" style="border-left:none">
					<tr class="active">
						<th>Deductions</th>
						<th>Amt.(Rs.)</th>
						<th>Net Amount(Rs.)</th>
					</tr>
					@foreach($ctc as $ct)
					<?php $comp = $ct->component_name ?>
							@if($user->empSalary->$comp &&  $ct->component_type == 'statutory')
					<tr>
						<td>{{wordwrap($ct->component_name,20,"<br>",true)}}</td>
						<td>{{$user->empSalary->$comp}}</td>
						<td><input type="text" class="form-control deduct" value="{{round($user->empSalary->$comp)}}" onkeyup="if(isNaN($(this).val())) { $(this).val(''); }return salFun();"></td>
					</tr>
						@endif
					@endforeach
				</table>
			</div>
		</div>
		
	</div>
		<div class="clearfix"></div>
	<div class="row-fluid">
	<!-- Earned amount -->
		<div class="col-lg-12">
			<table class="table table-bordered">
				<tr>
					<th class="active">Total Earned Amount</th>
					<td><input type="text" readonly name="earned" class="form-control" id="earned"></td>
					<th class="active">Total Deducted Amount</th>
					<td><input type="text" readonly name="deducted" class="form-control" id="deducted"></td>
					<th class="active">Net Amount</th>
					<td><input type="text" readonly name="net" id="net" class="form-control"></td>
					<td><button class="btn btn-primary">Pay >></button></td>
				</tr>
			</table>
		</div>
		
	</div>
{{Form::close()}}
@endif
<!-- ========================== JAVASCRIPT PART ============================= -->
@if($type == 'inhouse')
@endif
@if($type == 'outsource')
@endif
@if($type == 'showPayType')
<script type="text/javascript">
	$(function(){
		var payType = $('#payType').val();
		if(payType == 'individual')
		{
			$.ajax({
				type:'post',
				url:"<?php echo URL::to('dynamic/template/sal-pay')  ?>",
				data:{'type':'individual'},
				success:function(data)
				{
					$('#individual').html(data).show();
				}
			});
		}
		else if(payType == 'all-employee')
		{
			$('#individual').html('').hide();
		}
		$('#payType').change(function(){
			var payType = $(this).val();
			if(payType == 'individual')
			{
				$.ajax({
					type:'post',
					url:"<?php echo URL::to('dynamic/template/sal-pay')  ?>",
					data:{'type':'individual'},
					success:function(data)
					{
						$('#individual').html(data).show();
					}
				});
			}
			else if(payType == 'all-employee')
			{
				$('#individual').html('').hide();
			}
		});
	});
</script>
@endif
@if($type == 'salDetail')
<script type="text/javascript">
var ear = $('.earn');
var dedu = $('.deduct');
var totEarn = 0;
var totdeduc = 0;
$.each(ear,function(k,v){
	var tot = (isNaN(v.value) || !v.value)? 0 : v.value ; 
		totEarn = parseInt(tot) + parseInt(totEarn);
	});
$.each(dedu,function(k,v){
	var tot = (isNaN(v.value) || !v.value)? 0 : v.value ; 
		totdeduc = parseInt(tot) + parseInt(totdeduc);
	});
$('#earned').val(totEarn);
$('#deducted').val(totdeduc);
$('#net').val(totEarn-totdeduc);
function salFun()
{
	var totEarn = 0;
	var totdeduc = 0;
	var vals = $('.earn');
	var dedu = $('.deduct');
	$.each(vals,function(k,v){
		var tot = (isNaN(v.value) || !v.value)? 0 : v.value ; 
		totEarn = parseInt(tot) + parseInt(totEarn);
	});
	$.each(dedu,function(k,v){
	var tot = (isNaN(v.value) || !v.value)? 0 : v.value ; 
		totdeduc = parseInt(tot) + parseInt(totdeduc);
	});
	$('#earned').val(totEarn);
	$('#deducted').val(totdeduc);
	$('#net').val(totEarn-totdeduc);
}
// =================================== Save salary function=====================//
function saveSal()
{
	var datas = $(this).serializeArray();
	$.ajax({
		type:'post',
		url:"<?php echo URL::to('') ?>",
		data:datas,
		beforeSend:function(){
			
		},
		complete:function(){

		},
		success:function(){
			
		}

	});
	return false;

}
// =================================== End Save salary function=====================//

</script>
@endif
