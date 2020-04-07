@extends('dashboard.layout.master')

<!-- style -->
@section('style')

@endsection
<!-- /style -->

@section('content')


<div class="row">
	<div class="col-md-12">
		<div class="panel panel-flat">
			<div class="panel-heading">
        <h6 class="panel-title">{{__('titles.reports')}}</h6>
				<div class="heading-elements">
					<ul class="icons-list">
                		<li><a data-action="reload"></a></li>
                	</ul>
            	</div>
			</div>

			<div class="panel-body">
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<!-- users reports -->
						<li class="active"><a href="#basic-tab1" data-toggle="tab">{{__('titles.users_reports')}}</a></li>
						<!-- supervisors reports  -->
						<li><a href="#basic-tab2" data-toggle="tab">{{__('titles.administrations_reports')}}</a></li>
					</ul>

					<div class="tab-content">

						<!-- users reports -->
						<div class="tab-pane active" id="basic-tab1">
							<table class="table text-nowrap">
								<thead>

									<tr>
										<th style="width: 50px">{{__('titles.date')}}</th>
										<th style="width: 300px;">{{__('titles.user')}}</th>
										<th>{{__('titles.event')}}</th>
									</tr>
								</thead>
								<tbody>
									@foreach($usersReports as $r)
										<tr>
											<td class="text-center">
												<h6 class="no-margin"><small class="display-block text-size-small no-margin">{{$r->created_at->diffForHumans()}}</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<span class="btn bg-teal-400 btn-rounded btn-icon btn-xs">
														<img class="img-circle" src="{{asset('dashboard/uploads/users/'.$r->User->avatar)}}">
													</span>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">{{$r->User->name}}</a>
													<div class="text-muted text-size-small"><span class="status-mark border-coral position-left"></span>{{__('titles.user')}}</div>
												</div>
											</td>
											<td>
												<span class="text-semibold">{{$r->event}}</span>
											</td>
										</tr>
									@endforeach
								</tbody>
									<tr>
										<!-- delete users reports -->
										<td>
										@if(count($usersReports) > 0)
											<form action="{{route('deleteusersreports')}}" method="post" >
												{{csrf_field()}}
												<button type="submit" class="btn btn-xs btn-danger generalDelete" name="">{{__('titles.delete_all')}}</button>
											</form>
										@endif
										</td>
										<!-- pagination -->
										<td>{{$usersReports->links()}}</td>
									</tr>
							</table>
						</div>

						<!-- supervisors reports  -->
						<div class="tab-pane" id="basic-tab2">
							<table class="table text-nowrap">
								<thead>
									<tr>
										<th style="width: 50px">{{__('titles.date')}}</th>
										<th style="width: 300px;">{{__('titles.supervisor')}}</th>
										<th>{{__('titles.event')}}</th>
									</tr>
								</thead>
								<tbody>
									@foreach($supervisorReports as $r)
										<tr>
											<td class="text-center">
												<h6 class="no-margin"><small class="display-block text-size-small no-margin">{{$r->created_at->diffForHumans()}}</small></h6>
											</td>
											<td>
												<div class="media-left media-middle">
													<span class="btn bg-teal-400 btn-rounded btn-icon btn-xs">
														<img class="img-circle" src="{{asset('dashboard/uploads/users/'.$r->User->avatar)}}">
													</span>
												</div>

												<div class="media-body">
													<a href="#" class="display-inline-block text-default text-semibold letter-icon-title">{{$r->User->name}}</a>
													<div class="text-muted text-size-small"><span class="status-mark border-blue position-left"></span>{{$r->User->Role->role}}</div>
												</div>
											</td>
											<td>
												<span class="text-semibold">{{$r->event}}</span>
											</td>
										</tr>
									@endforeach
								</tbody>
								<!-- delete supervisors reports -->
								<tr>
									<td>
									@if(count($supervisorReports) > 0)
										<form action="{{route('deletesupervisorsreports')}}" method="post" >
											{{csrf_field()}}
											<button type="submit" class="btn btn-xs btn-danger generalDelete" name="">{{__('titles.delete_all')}}</button>
										</form>
									@endif
									</td>
									<!-- pagination -->
									<td>{{$supervisorReports->links()}}</td>
								</tr>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>


<!-- javascript -->
@section('script')
<script type="text/javascript">
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
</script>

@endsection
<!-- /javascript -->

@endsection
