@extends('dashboard.layout.master')

<!-- style -->
@section('style')
<link href="{{asset('dashboard/fileinput/css/fileinput.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('dashboard/fileinput/css/fileinput-rtl.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('dashboard/bgrins/spectrum.css')}}" rel='stylesheet' >

@endsection
<!-- /style -->
@section('content')


<div class="row">
	<div class="col-md-12">
		<div class="panel panel-flat">
			<div class="panel-heading">
				<h6 class="panel-title">{{__('titles.settings')}}</h6>
				<div class="heading-elements">
					<ul class="icons-list">
                		<li><a data-action="reload"></a></li>
                	</ul>
            	</div>
			</div>

			<div class="panel-body">
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<!-- site setting -->
						<li class="active"><a href="#basic-tab1" data-toggle="tab">{{__('titles.site_settings')}}</a></li>
						<!-- social media -->
						<li><a href="#basic-tab2" data-toggle="tab">{{__('titles.social_media')}}</a></li>
						<!-- email and sms -->
						<li><a href="#basic-tab3" data-toggle="tab">{{__('titles.messages_emails')}}</a></li>
						<!-- copyright -->
						<li><a href="#basic-tab4" data-toggle="tab">{{__('titles.site_copyright')}}</a></li>
						<!-- email template -->
						<li><a href="#basic-tab5" data-toggle="tab">{{__('titles.email_template')}}</a></li>
						<!-- notification -->
						<li><a href="#basic-tab6" data-toggle="tab">{{__('titles.notifications')}}</a></li>
						<!-- api -->
						<li><a href="#basic-tab7" data-toggle="tab">API </a></li>
					</ul>

					<div class="tab-content">

						<!-- site setting -->
						<div class="tab-pane active" id="basic-tab1">
							<div class="row">
								<!-- main setting -->
								<div class="col-md-6">
										<div class="panel panel-flat">
											<div class="panel-heading">
												<h5 class="panel-title">{{__('titles.general_settings')}}</h5>
												<div class="heading-elements">
													<ul class="icons-list">
								                		<li><a data-action="collapse"></a></li>
								                		<li><a data-action="reload"></a></li>
								                	</ul>
							                	</div>
											</div>

											<div class="panel-body">
												<form action="{{route('updatesitesetting')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
													{{csrf_field()}}
													<div class="form-group">
														<label class="col-lg-3 control-label">{{__('titles.stie_name')}}: </label>
														<div class="col-lg-9">
															<input type="text" value="{{$SiteSetting->site_name}}" name="site_name" class="form-control" placeholder="{{__('titles.stie_name')}}">
														</div>
													</div>

													<div class="form-group">
														<label class="col-lg-3 control-label">{{__('titles.site_logo')}}</label>
														<div class="col-lg-6">
															<img src="{{asset('dashboard/uploads/setting/site_logo/'.$SiteSetting->site_logo)}}" title="{{__('titles.site_logo')}}" onclick="sitelogo()" style="height: 210px; width: 210px;cursor: pointer;border-radius:100%">
															<input type="file" name="logo" id="hidden">
														</div>
													</div>

													<div class="text-left">
														<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
													</div>
												</form>
											</div>
										</div>
								</div>
								<!-- seo setting -->
								<div class="col-md-6">
									{{csrf_field()}}
									<div class="panel panel-flat">
										<div class="panel-heading">
											<h5 class="panel-title">SEO</h5>
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                	</ul>
						                	</div>
										</div>
										<div class="panel-body">
											<form action="{{route('updateseo')}}" method="post" class="form-horizontal">
												{{csrf_field()}}
												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.stie_desc')}}</label>
													<div class="col-lg-9">
														<textarea rows="5" cols="5" name="site_description" class="form-control" placeholder="{{__('titles.stie_desc')}}">{{$SiteSetting->site_description}}</textarea>
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.site_tags')}}</label>
													<div class="col-lg-9">
														<textarea rows="5" cols="5" name="site_tagged" class="form-control" placeholder="{{__('titles.site_tags')}}">{{$SiteSetting->site_tagged}}</textarea>
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.company_copyright')}}</label>
													<div class="col-lg-9">
														<textarea rows="5" cols="5" name="site_copyrigth" class="form-control" placeholder="{{__('titles.company_copyright')}}">{{$SiteSetting->site_copyrigth}}</textarea>
													</div>
												</div>

												<div class="text-left">
													<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- social media -->
						<div class="tab-pane" id="basic-tab2">
								<div class="col-md-12">
									{{csrf_field()}}
									<div class="panel panel-flat">
										<div class="panel-heading">
											<h5 class="panel-title">{{__('titles.social_media')}}</h5>
											<div class="heading-elements">
												<ul class="icons-list">
													<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal"><i class="icon-plus3"></i> {{__('titles.add')}} </button>
							                	</ul>
						                	</div>
										</div>

										<div class="panel-body">

											<table class="table datatable-basic">
												<thead>
													<tr>
														<th>{{__('titles.logo')}}</th>
                                                        <th>{{__('titles.name')}}</th>
														<th>{{__('titles.link')}}</th>
                                                        <th>{{__('titles.created_at')}}</th>
														<th>{{__('titles.options')}}</th>
													</tr>
												</thead>
												<tbody>
													@foreach($socials as $social)
														<tr>
															<td><img src="{{asset('dashboard/uploads/socialicon/'.$social->logo)}}" style="width:40px;height: 40px" class="img-circle" alt=""></td>
															<td>{{$social->name}}</td>
															<td>{{str_limit($social->link,30)}}</td>
															<td>{{$social->created_at->diffForHumans()}}</td>
															<td>
															<ul class="icons-list">
																<li class="dropdown">
																	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
																		<i class="icon-menu9"></i>
																	</a>

																	<ul class="dropdown-menu dropdown-menu-right">
																		<li>
																			<a href="#" data-toggle="modal" data-target="#exampleModal2" class="openEditmodal"
																			data-id  ="{{$social->id}}"
																			data-name="{{$social->name}}"
																			data-link="{{$social->link}}"
																			data-logo="{{$social->logo}}">
                                                                            <i class="icon-pencil7"></i>
                                                                            {{__('titles.edit')}}
																			</a>
																		</li>
																		<form action="{{route('deletesocial')}}" method="post">
																			{{csrf_field()}}
																			<input type="hidden" name="id" value="{{$social->id}}">
																			<li><button type="submit" class="generalDelete reset"><i class="icon-trash"></i>{{__('titles.delete')}}</button></li>
																		</form>
																	</ul>
																</li>
															</ul>
															</td>
														</tr>
													@endforeach
													@if(count($socials) == 0) <tr><td></td><td></td><td>{{__('titles.no_content')}}</td></tr>  @endif
												</tbody>
											</table>

										</div>
									</div>
								</div>
						</div>

						<!-- email and sms -->
						<div class="tab-pane" id="basic-tab3">
							<div class="row">

								<!-- smtp setting -->
								<div class="col-md-6">
									<div class="panel panel-flat">
										<div class="panel-heading">
											<h5 class="panel-title">SMTP</h5>
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                	</ul>
						                	</div>
										</div>

										<div class="panel-body">
											<form action="{{route('updatesmtp')}}" method="post" class="form-horizontal">
												{{csrf_field()}}
												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.type')}}: </label>
													<div class="col-lg-9">
                                                        <input type="text" name="smtp_type" value="{{$SEN->smtp_type}}" placeholder="{{__('titles.type')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
                                                    <label class="col-lg-3 control-label">{{__('titles.username')}}:</label>
													<div class="col-lg-9">
														<input type="text" name="smtp_username" value="{{$SEN->smtp_username}}" placeholder="{{__('titles.username')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.password')}} :</label>
													<div class="col-lg-9">
														<input type="text" name="smtp_password" value="{{$SEN->smtp_password}}" placeholder="{{__('titles.password')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.sender_email')}}:</label>
													<div class="col-lg-9">
														<input type="text" name="smtp_sender_email" value="{{$SEN->smtp_sender_email}}" placeholder="{{__('titles.sender_email')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.sender_name')}}:</label>
													<div class="col-lg-9">
														<input type="text" name="smtp_sender_name" value="{{$SEN->smtp_sender_name}}" placeholder="{{__('titles.sender_name')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.email_port')}}:</label>
													<div class="col-lg-9">
														<input type="number" name="smtp_port" value="{{$SEN->smtp_port}}" placeholder="{{__('titles.email_port')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.email_host')}}:</label>
													<div class="col-lg-9">
														<input type="text" name="smtp_host" value="{{$SEN->smtp_host}}" placeholder="{{__('titles.email_host')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.encryption')}}:</label>
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->smtp_encryption}}" name="smtp_encryption" placeholder="{{__('titles.encryption')}}" class="form-control">
													</div>
												</div>

												<div class="text-left">
													<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
												</div>
											</form>
										</div>
									</div>
								</div>

								<!-- sms setting -->
								<div class="col-md-6">
									<div class="panel panel-flat">
										<div class="panel-heading">
											<h5 class="panel-title">SMS</h5>
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                	</ul>
						                	</div>
										</div>

										<div class="panel-body">
											<form action="{{route('updatesms')}}" method="post" class="form-horizontal">
												{{csrf_field()}}
												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.phone')}}:</label>
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->sms_number}}" name="sms_number" placeholder="{{__('titles.phone')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.password')}}:</label>
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->sms_password}}" name="sms_password" placeholder="{{__('titles.password')}}" class="form-control">
													</div>
												</div>

												<div class="form-group">
													<label class="col-lg-3 control-label">{{__('titles.sender_name')}}:</label>
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->sms_sender_name}}" name="sms_sender_name" placeholder="{{__('titles.sender_name')}}" class="form-control">
													</div>
												</div>

												<div class="text-left">
													<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
												</div>
											</form>
										</div>
									</div>
								</div>

							</div>
						</div>

						<!-- copyright -->
						<div class="tab-pane" id="basic-tab4">
							<div class="col-md-12">
								<div class="panel panel-flat">
									<div class="panel-heading">
										<h5 class="panel-title">{{__('titles.site_copyright')}}</h5>
										<div class="heading-elements">
											<ul class="icons-list">
						                		<li><a data-action="collapse"></a></li>
						                		<li><a data-action="reload"></a></li>
						                	</ul>
					                	</div>
									</div>
									<div class="panel-body">
										<form action="{{route('updatesitecopyright')}}" method="post" class="form-horizontal">
											{{csrf_field()}}
											<div class="form-group">
												<div class="col-lg-12">
													<textarea placeholder="{{__('titles.copyright')}}" name="footer_copyrigh" class="form-control" rows="10">{{$Html->footer_copyrigh}}</textarea>
												</div>
											</div>

											<div class="text-left">
												<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

						<!-- email template -->
						<div class="tab-pane" id="basic-tab5">
								<div class="col-md-12">
									<div class="panel panel-flat">
										<div class="panel-heading">
											<h5 class="panel-title">{{__('titles.email_template')}}</h5>
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                	</ul>
						                	</div>
										</div>
										<div class="panel-body">
											<form action="{{route('updateemailtemplate')}}" method="post" class="form-horizontal">
												{{csrf_field()}}
												<div class="row">
													<div class="form-group col-sm-4" >
														<label>{{__('titles.font_color')}}</label>
														<input type='color' id="color" value="{{$Html->email_font_color}}" name="email_font_color" value="#ff0000" style="width: 90%; height: 100px; cursor: pointer; ">
													</div>

													<div class="form-group col-sm-4" >
														<label>{{__('titles.header_color')}}</label>
														<input type='color' id="color" value="{{$Html->email_header_color}}" name="email_header_color" value="#ff0000" style="width: 90%; height: 100px; cursor: pointer; ">
													</div>

													<div class="form-group col-sm-4" >
														<label>{{__('titles.footer_color')}}</label>
														<input type='color' id="color" value="{{$Html->email_footer_color}}" name="email_footer_color" value="#ff0000" style="width: 90%; height: 100px; cursor: pointer; ">
													</div>

													<div class="text-left">
														<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
						</div>

						<!-- notification -->
						<div class="tab-pane" id="basic-tab6">
							<div class="row">

								<!-- one signal -->
								<div class="col-md-6">
									<div class="panel panel-flat">
										<div class="panel-heading">
											<h5 class="panel-title">one signal</h5>
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                	</ul>
						                	</div>
										</div>

										<div class="panel-body">
											<form action="{{route('updateonesignal')}}" method="post" class="form-horizontal">
												{{csrf_field()}}
												<div class="form-group">
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->oneSignal_application_id}}" name="oneSignal_application_id" placeholder="application ID" class="form-control">
													</div>
													<label class="col-lg-3 control-label">: application ID</label>
												</div>

												<div class="form-group">
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->oneSignal_authorization}}" name="oneSignal_authorization" placeholder="authorization" class="form-control">
													</div>
													<label class="col-lg-3 control-label">: authorization</label>
												</div>

												<div class="text-left">
													<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
												</div>
											</form>
										</div>
									</div>
								</div>

								<!-- FCM -->
								<div class="col-md-6">
									<div class="panel panel-flat">
										<div class="panel-heading">
											<h5 class="panel-title">FCM</h5>
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                	</ul>
						                	</div>
										</div>

										<div class="panel-body">
											<form action="{{route('updatefcm')}}" method="post" class="form-horizontal">
												{{csrf_field()}}
												<div class="form-group">
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->fcm_server_key}}" name="fcm_server_key" placeholder="server key" class="form-control">
													</div>
													<label class="col-lg-3 control-label">: server key</label>
												</div>

												<div class="form-group">
													<div class="col-lg-9">
														<input type="text" value="{{$SEN->fcm_sender_id}}" name="fcm_sender_id" placeholder="sender id" class="form-control">
													</div>
													<label class="col-lg-3 control-label">: sender id</label>
												</div>

												<div class="text-left">
													<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
												</div>
											</form>
										</div>
									</div>
								</div>

							</div>
						</div>

						<!-- api -->
						<div class="tab-pane" id="basic-tab7">
							<div class="col-md-12">
								<div class="panel panel-flat">
									<div class="panel-heading">
 										<div class="heading-elements">
											<ul class="icons-list">
						                		<li><a data-action="collapse"></a></li>
						                		<li><a data-action="reload"></a></li>
						                	</ul>
					                	</div>
									</div>
									<div class="panel-body">
										<form action="{{route('updategoogleanalytics')}}" method="post" class="form-horizontal">
											{{csrf_field()}}
											<div class="form-group text-center">
												<div class="col-lg-12">
													<p class="alert alert-primary" style="font-size: 20px; margin-bottom: 5px">Google Analytics</p>
													<textarea placeholder="google analytics code" name="google_analytics" class="form-control" rows="10">{{$Html->google_analytics}}</textarea>
												</div>
											</div>

											<div class="text-center">
												<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
											</div>
										</form>
									</div>
									<div class="panel-body">
										<form action="{{route('updatelivechat')}}" method="post" class="form-horizontal">
											{{csrf_field()}}
											<div class="form-group text-center">
												<div class="col-lg-12">
													<p class="alert alert-primary" style="font-size: 20px; margin-bottom: 5px">Live Chat  </p>
													<textarea placeholder="live chat  code" name="live_chat" class="form-control" rows="10">{{$Html->live_chat}}</textarea>
												</div>
											</div>

											<div class="text-center">
												<button type="submit" class="btn btn-primary">{{__('titles.save')}}</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>



		<!-- Add Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">{{__('titles.add')}}</h5>
		      </div>
		      <div class="modal-body">
		        <div class="row">
		        	<form action="{{route('addsocials')}}" method="POST" enctype="multipart/form-data">
		        		{{csrf_field()}}
		        		<div class="col-sm-3 text-center">
		        			<label style="margin-bottom: 0">{{__('titles.logo')}}</label>
		        			<i class="icon-camera"  onclick="add()" style="cursor: pointer;"></i>
		        			<div class="images-upload-block">
		        				<input type="file" name="add_logo" class="image-uploader" id="hidden">
		        			</div>
		        		</div>

		        		<div class="col-sm-9" style="margin-top: 35px">
		        			<input type="text" name="site_name" class="form-control" placeholder="{{__('titles.name')}}">
		        			<input type="text" name="site_link" class="form-control" placeholder="{{__('titles.link')}}">
		        		</div>

				        <div class="col-sm-12" style="margin-top: 10px">
					      	<button type="submit" class="btn btn-primary addCategory"">{{__('titles.save')}}</button>
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{__('titles.close')}}</button>
				        </div>

		        	</form>
		        </div>
		      </div>

		    </div>
		  </div>
		</div>
		<!-- /Add Modal -->

		<!-- Edit Modal -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">{{__('titles.edit')}}: <span class="editingName"></span> </h5>
		      </div>
		      <div class="modal-body">
		        <div class="row">
		        	<form action="{{route('updatesocials')}}" method="post" enctype="multipart/form-data">

		        		<!-- token and born id -->
		        		{{csrf_field()}}
		        		<input type="hidden" name="id" value="">
		        		<!-- /token and born id -->

		        		<div class="col-sm-3 text-center">
		        			<label>{{__('titles.logo')}}</label>
		        			<img src="" class="replaceImage" style="width: 120px;height: 120px;cursor: pointer" onclick="edit()">
		        			<input type="file" name="edit_logo" style="display: none;">
		        		</div>
		        		<div class="col-sm-9" style="margin-top: 18px">
		        			<label>{{__('titles.name')}}</label>
		        			<input type="text" name="edit_site_name" class="form-control">
		        			<label>{{__('titles.link')}}</label>
		        			<input type="text" name="edit_site_link" class="form-control">
		        		</div>

				      <div class="col-sm-12" style="margin-top: 10px">
				      	<button type="submit" class="btn btn-primary" >{{__('titles.save')}}</button>
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{__('titles.close')}}</button>
				      </div>
		        	</form>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- /Edit Modal -->



	</div>
</div>


<!-- javascript -->
@section('script')
<script src="{{asset('dashboard/bgrins/spectrum.js')}}"></script>

<script type="text/javascript">

	//open edit modal
	$(document).on('click','.openEditmodal',function(){
		//get valus
		var id    = $(this).data('id')
		var name  = $(this).data('name')
		var link  = $(this).data('link')
		var logo  = $(this).data('logo')

		//set values in modal inputs
		$("input[name='id']")           .val(id)
		$("input[name='edit_site_name']")    .val(name)
		$("input[name='edit_site_link']")    .val(link)
		var link = "{{asset('dashboard/uploads/socialicon/')}}" +'/'+ logo
		$(".replaceImage").attr('src',link)
		$('.editingName').text(name)
	})

	//select logo
	function add(){$("input[name='add_logo']").click()}
	function sitelogo(){$("input[name='logo']").click()}
	function edit(){$("input[name='edit_logo']").click()}

	//stay in current tab after reload
	$(function() {
	    // for bootstrap 3 use 'shown.bs.tab', for bootstrap 2 use 'shown' in the next line
	    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
	        // save the latest tab; use cookies if you like 'em better:
	        localStorage.setItem('lastTab', $(this).attr('href'));
	    });

	    // go to the latest tab, if it exists:
	    var lastTab = localStorage.getItem('lastTab');
	    if (lastTab) {
	        $('[href="' + lastTab + '"]').tab('show');
	    }
	});


$(document).on('change','#color',function(){
	console.log($(this).val());
});
</script>

<script type="text/javascript" src="{{asset('dashboard/fileinput/js/fileinput.min.js')}}"></script>

@endsection
<!-- /javascript -->

@endsection
