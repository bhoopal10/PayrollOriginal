
@section('css')
	{{ HTML::style('public/css/steps.css') }}
@stop
						{{Form::open(array('route'=>array('admin.branch.store'),'method'=>'post','class'=>'form-horizontal','name'=>'create','id'=>'create')) }}
						<!-- Form wizard content -->
						<div id="wizard" style="position:inherit">
						<!-- Heading -->
							<h2>Branch Info</h2>
							<!-- Branch information -->
							<div class="form">
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_name">Branch Name</label>
									<div class="col-lg-5">
										<input type="text" name="branch_name" id="branch_name" placeholder="Branch name" class="form-control required">
									</div><!-- input company_name -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_code">Branch Code</label>
									<div class="col-lg-5">
										<input type="text" name="branch_code" id="branch_code" placeholder="Branch Code" class="form-control required">
									</div><!-- input branch_code -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_address">Address</label>		
									<div class="col-lg-5">
										<textarea class="form-control textarea" name="branch_address" id="branch_address" placholder="Address"></textarea>
									</div><!-- end text area -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_city">City</label>
									<div class="col-lg-5">
										<input type="text" name="branch_city" id="branch_city" placeholder="City" class="form-control required">
									</div><!-- input company_name -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_state">State</label>
									<div class="col-lg-5">
										<input type="text" name="branch_state" id="branch_state" placeholder="State" class="form-control required">
									</div><!-- input company_name -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_pin">PIN</label>
									<div class="col-lg-5">
										<input type="text" name="branch_pin" id="branch_pin" placeholder="PIN" class="form-control required">
									</div><!-- input company_name -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_land_line">LandLine No</label>
									<div class="col-lg-5">
										<input type="text" name="branch_land_line" id="branch_land_line" placeholder="LandLine No" class="form-control required">
									</div><!-- input company_name -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_alt_land_line">Alt LandLine No</label>
									<div class="col-lg-5">
										<input type="text" name="branch_alt_land_line" id="branch_alt_land_line" placeholder="Alt LandLine No" class="form-control required">
									</div><!-- input company_name -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_fax">Fax</label>
									<div class="col-lg-5">
										<input type="text" name="branch_fax" id="branch_fax" placeholder="FAX" class="form-control required">
									</div><!-- input company_name -->
								</div><!-- end form-group -->
							</div><!-- end form -->
							<!-- end branch info -->

							<!-- Contact information -->
							<h2>Contact Info</h2>
							<div class="form2">
								<div class="form-group">
									<label class="col-lg-2 control-label" for="branch_head">Branch Head</label>
									<div class="col-lg-5">
										<input type="text" name="branch_head" id="branch_head" placeholder="Branch Head" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="p_mobile_no">Mobile No</label>
									<div class="col-lg-5">
										<input type="text" name="p_mobile_no" id="p_mobile_no" placeholder="Mobile No" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="p_alt_mobile_no">Alt Mobile No</label>
									<div class="col-lg-5">
										<input type="text" name="p_alt_mobile_no" id="p_alt_mobile_no" placeholder="Alt Mobile No" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="p_email">Email Id</label>
									<div class="col-lg-5">
										<input type="text" name="p_email" id="p_email" placeholder="Email Id" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="p_alt_email">Alt Email Id</label>
									<div class="col-lg-5">
										<input type="text" name="p_alt_email" id="p_alt_email" placeholder="Alt Email Id" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<!-- secondary contact -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="s_contact_person">Secondary Contact Person</label>
									<div class="col-lg-5">
										<input type="text" name="s_contact_person" id="s_contact_person" placeholder="Secondary Contact Person" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="s_mobile_no">Mobile No</label>
									<div class="col-lg-5">
										<input type="text" name="s_mobile_no" id="s_mobile_no" placeholder="Mobile No" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="s_alt_mobile_no">Alt Mobile No</label>
									<div class="col-lg-5">
										<input type="text" name="s_alt_mobile_no" id="s_alt_mobile_no" placeholder="Alt Mobile No" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="s_email">Email Id</label>
									<div class="col-lg-5">
										<input type="text" name="s_email" id="s_email" placeholder="Email Id" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
								<div class="form-group">
									<label class="col-lg-2 control-label" for="s_alt_email">Alt Email Id</label>
									<div class="col-lg-5">
										<input type="text" name="s_alt_email" id="s_alt_email" placeholder="Alt Email Id" class="form-control required">
									</div><!-- end input-form  -->
								</div><!-- end form-group -->
							</div><!-- end form2 -->
							<!-- end contact Info -->
							<!-- start user credentail -->
							
						</div><!-- end wizard -->
					{{Form::close()}}<!-- end form -->
				