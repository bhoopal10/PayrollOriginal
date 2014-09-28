@if($type == 'default')
<hr/>
<table class="table table-bordered" id="ctc-table">
	<tr>
		<th>Pay Type</th>
		<th>Formula</th>
		<th>Monthly</th>
		<!-- <th>Annual</th> -->
	</tr>
	@forelse($comp as $compt)
	<?php $name = $compt->component_name; ?>
	@if($user->empSalary->$name != '')
	<tr>
		<td>{{$compt->component_name}}</td>
		<td>{{$compt->formula}}</td>
		<td><input type="text" name="{{$compt->component_name}}" id="{{$compt->component_name}}" class="monthly_input" value="{{$user->empSalary->$name}}" onkeyup="salCal()"></td>
		<!-- <td><input type="text" name="" class="annul_input"></td> -->
	</tr>
	@endif
	@endforeach
</table>
@endif
@if($type == 'custom')
<label class="col-lg-2 control-label" for="ctc">Add CTC Component</label>
<div class="col-lg-3">
	<select name="" id="add-ctc" class="form-control" onchange="var val=$(this).val(); if(val){ $('#add-btn').show(); }else{ $('#add-btn').hide();}">
		<option value="">Select CTC component</option>
		@forelse($comp as $compt)
			<?php $name = $compt->component_name; ?>
			@if($user->empSalary->$name == '')
			<option value="{{$compt->component_name}}">{{$compt->component_name}}</option>
			@endif
		@endforeach
	</select>
</div>
<div class="col-lg-3">
	<a href="javascript:void(0);" class="btn btn-danger" id="add-btn" onclick="return AddCTC();" style="display:none">Add</a>
</div>
@endif