<script type="text/javascript">
	$(function(){
		var empType = $('#emp_typeSelect').val();
		var payType = $('#payType').val();
		if(empType == 'inhouse')
		{
			$('#clientSelect').html('').hide();
			$.ajax({
				type:'post',
				url:"<?php echo URL::to('dynamic/template/sal-pay')  ?>",
				data:{'type':'showPayType'},
				success:function(data)
				{
					$('#pay_type').html(data).show();
				}
			});
		}
		else if(empType == 'outsource')
		{
			$('#pay_type').hide();
			$.ajax({
				type:'post',
				url:"<?php echo URL::to('dynamic/template/sal-pay')  ?>",
				data:{'type':'outsource'},
				success:function(data)
				{
					$('#clientSelect').html(data).show();
					$('#pay_type').show();
					
				}
			});
		}
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
		// onchange
		$('#emp_typeSelect').change(function(){
			var empType = $(this).val();
			if(empType == 'inhouse')
			{
				$('#clientSelect').html('').hide();
				$.ajax({
					type:'post',
					url:"<?php echo URL::to('dynamic/template/sal-pay');  ?>",
					data:{'type':'showPayType'},
					success:function(data)
					{
						$('#pay_type').html(data).show();
					}
				});
			}
			else if(empType == 'outsource')
			{
				$('#pay_type').hide();
				$.ajax({
				type:'post',
				url:"<?php echo URL::to('dynamic/template/sal-pay')  ?>",
				data:{'type':'outsource'},
				success:function(data)
				{
					$('#clientSelect').html(data).show();
					$('#pay_type').show();
				}
			});
			}
		});
		$('#payType').change(function(){
			var payType = $(this).val();
			if(payType == 'individual')
			{
				$.ajax({
					type:'post',
					url:"<?php echo URL::to('dynamic/template/sal-pay');  ?>",
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
//==================================== search functions ========================================================//
function validatePaySalary()
{
	var month = $('#month').val();
	var year = $('#year').val();
	var payType = $('#payType').val();
	var empId = $('#empId').val();
	var empType = $('#emp_typeSelect').val();
	var client = $('#clientSelect').val();
		
	if(!month)
	{
		alert('Please select month');
		return false;
	}
	if(!year)
	{
		alert('Please select year');
		return false;
	}
	if(empType == 'outsource')
	{

		
	}
	if(payType == 'individual')
	{
		if(!empId)
		{
			alert('Please enter EmployeeID');
			return false;
		}
	}
}
//================================== New Payment =================================//
function diaOpen(id,date,pid)
{
	var th = $(this);
	$.ajax({
		type:'post',
		url:"<?php echo URL::to('dynamic/template/sal-pay') ?>",
		data:{'type':'salDetail','id':id,'date':date,'pid':pid},
		beforeSend:function()
		{
			// alert(th.attr('class'));
			$('paying_'+pid).show();
			$('pay_'+pid).hide();
			// $(this).hide();
		},
		complete:function(){
			// $(this).next('.paying').hide();
			// $(this).next('.paid').show();
		},
		success:function(data)
		{
			$('#dialog').dialog({
				 width:1000,
	            height:650,
			}).html(data);
		}
	});
	
}
//============================== End Newpayment ================================//
// ============================= edit payment =================================//
function editDiaOpen(id,date,pid,edit_id)
{
	var th = $(this);
	$.ajax({
		type:'post',
		url:"<?php echo URL::to('dynamic/template/sal-pay') ?>",
		data:{'type':'salDetail','id':id,'date':date,'pid':pid,'edit_id':edit_id},
		beforeSend:function()
		{
			
		},
		complete:function(){
			// $(this).next('.paying').hide();
			// $(this).next('.paid').show();
		},
		success:function(data)
		{
			$('#dialog').dialog({
				 width:1000,
	            height:650,
			}).html(data);
		}
	});
	
}
//============================== end Edit payment =============================//

</script>