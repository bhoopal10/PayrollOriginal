<script>
	function docvalidation(data)
	{
		var filename=data;
		var indexno= filename.lastIndexOf('.');
		var ext    = filename.substr(indexno+1);
		var size   =  $('#image')[0].files[0].size;
		var valid=('jpg|JPG|png|PNG|gif|GIF');
		
		if(!ext.match(valid))
		{
			return 'Upload only jpg or png or jpeg or gif ';
			
		}
		if(size >= 2000000)

		{
			return "Image size must be less than 2 mb"
		}
	}
	function formUpdate(ids,tableId)
	{
		var datas=$('#'+ids).serializeArray();
		
		$.ajax({
			type:"PUT",
			data:datas,
			url:"<?php echo URL::to('branch/employee/'); ?>/"+tableId,
			success: function(data){
				
				 window.location="<?php echo URL::route('branch.employee.index'); ?>";
			}
		});
	}
	$(document).ready(function(){
		$('.date').datepicker({
			changeYear:true,
			changeMonth:true,
			dateFormat:'dd/mm/yy'	
		});
		
		$('#addDoc').click(function(){
			var i=0;
				$.ajax({
					type:"GET",
					url:"<?php echo URL::to('home/template/addDoc') ?>",
					beforeSend: function() {
					        // setting a timeout
					       $('.loader').show();
					    },
					complete: function(){
							$('.loader').hide();
					},
					success:function(data){
						$('#docappend').append(data);
					}
				});
		});
		$('#addCompany').click(function(){
				var i=0;
				$.ajax({
					type:"GET",
					url:"<?php echo URL::to('home/template/addCompany') ?>",
					beforeSend: function() {
					        // setting a timeout
					       $('.loader').show();
					    },
					complete: function(){
								$('.loader').hide();
					},
					success:function(data){
						$('#workexpappend').append(data);
					}
				});
				
		});
		//========================= Salary component js =========================================//
		// salary component
			$.ajax({
				type:"GET",
				url:"<?php echo URL::to('home/template/sal-edit/default,'.$uId); ?>",
				beforeSend: function() {
				        // setting a timeout
				       $('.loader').show();
				    },
				complete: function(){
						$('.loader').hide();
				},
				success:function(data){
					$('#salary-component').append(data);
				}
			});
		// end salary component
		// Select salary-component
			$.ajax({
					type:"GET",
					url:"<?php echo URL::to('home/template/sal-edit/custom,'.$uId); ?>",
					beforeSend: function() {
					        // setting a timeout
					       $('.loader').show();
					    },
					complete: function(){
							$('.loader').hide();
					},
					success:function(data){
						$('#select-component').append(data);
					}
			});
		// end Select salary-component
		// remove ctc-component
			
		// end remove ctc-component
		//=========================End salary component js ======================================//
		$('#imageDel').click(function(){
			var val=$('#imageForm').serializeArray();
			console.log(val);
		});
		// Image File editing
		$('#image').change( function() {
			var file     = document.getElementById('image');
			var fd = new FormData();
			fd.append('upload',file.files[0]);
			$.ajax({
				type:'post',
				processData: false,
				contentType: false, 
				url:"<?php echo URL::to('branch/employee/upload-image'); ?>",
				data:fd,
				success:function(data){
					$('#img-target').html("<img src='"+data+"'/>");
				}
			});
		});

	});
	function changeImage()
	{
		alert('ff');
	}
	// ===================================== salary component functions ===================================//
	function AddCTC()
	{
		var val = $('#add-ctc').val();
		if(val)
		{
			$.ajax({
				type:"GET",
				url:"<?php echo URL::to('home/template/sal-component/field,no,'); ?>"+val,
				beforeSend: function() {
				        // setting a timeout
				       $('.loader').show();
				    },
				complete: function(){
						$('.loader').hide();
				},
				success:function(data){
					$('#ctc-table').append(data);
					$('#add-ctc option:selected').remove();
				}
			});
		}
	}
	function removeCTC()
	{
		$(this).parent().parent().parent().remove()
	}
	function salCal()
	{
		$('.monthly_input').keyup(function(){
			var val = $(this).val();
			if(isNaN(val))
			{
				$(this).val('');
			}
			
		});
		var base = $('#BASIC').val();
		$('#PROVIDENT_FUND_EMPLOYER_CONTRIBUTION').val(base*(13.61/100)).prop('readonly',true);
		$('#PROVIDENT_FUND').val(base*(12/100)).prop('readonly',true);
		$('#EMPLOYEE_STATE_INSURANCE').val(base*(1.75/100)).prop('readonly',true);
		$('#EMPLOYEE_STATE_INSURANCE_EMPLOYER_CONTRIBUTION').val(base*(4.75/100)).prop('readonly',true);

	}
	//====================================== End salary component function ================================//
</script>