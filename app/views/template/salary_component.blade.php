@if($data == 'default')
<hr/>
<table class="table table-bordered" id="ctc-table">
	<tr>
		<th>Pay Type</th>
		<th>Formula</th>
		<th>Monthly</th>
		<!-- <th>Annual</th> -->
	</tr>
	@forelse($comp as $compt)
	<tr>
		<td>{{$compt->component_name}}</td>
		<td>{{$compt->formula}}</td>
		<td><input type="text" name="{{$compt->component_name}}" id="{{$compt->component_name}}" class="monthly_input" onkeyup="salCal()"></td>
		<!-- <td><input type="text" name="" class="annul_input"></td> -->
	</tr>
	@endforeach
</table>
@endif
@if($data == 'custom')
<label class="col-lg-2 control-label" for="ctc">Add CTC Component</label>
<div class="col-lg-3">
	<select name="" id="add-ctc" class="form-control" onchange="var val=$(this).val(); if(val){ $('#add-btn').show(); }else{ $('#add-btn').hide();}">
		<option value="">Select CTC component</option>
		@forelse($comp as $compt)
			<option value="{{$compt->component_name}}">{{$compt->component_name}}</option>
		@endforeach
	</select>
</div>
<div class="col-lg-3">
	<a href="javascript:void(0);" class="btn btn-danger" id="add-btn" onclick="return AddCTC();" style="display:none">Add</a>
</div>
@endif
@if($data == 'field')
	@forelse($comp as $compt)
	@if($compt->component_name == $field)
	<tr>
		<td>{{$compt->component_name}}</td>
		<td>{{$compt->formula}}</td>
		<td><input type="text" name="{{$compt->component_name}}" id="{{$compt->component_name}}" class="monthly_input" >
		<span class="pull-right "> 
			<a href="javascript:void(0);"  
				onclick=' $(this).parent().parent().parent().remove(); 
			     			var pre="<?php echo $compt->component_name; ?>"; 
							 $("#add-ctc").append("<option value="+pre+">"+pre+"</option>");' class="rm-td red">
				<i class="fa fa-times fa-2x red"></i>
			</a>Remove
		</span>
		</td>
		<!-- <td><input type="text" class="annual_input"> </td> -->

	</tr>
	@endif
	@endforeach
@endif
<script type="text/javascript">
	$(function(){
		
		
		
		salCal();
	});
</script>
