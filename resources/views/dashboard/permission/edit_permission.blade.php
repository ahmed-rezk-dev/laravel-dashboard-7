@extends('dashboard.layout.master')

<!-- style -->
@section('style')

@endsection
<!-- /style -->

@section('content')



<div class="panel panel-flat panel-edit-permissions">
	<div class="panel-body">
		<div class="row">
			<form action="{{route('updatepermission')}}" method="POST">

				{{csrf_field()}}
				<input type="hidden" name="id" value="{{$role->id}}">

				<div class="col-sm-11" style="margin-bottom: 20px">
					<input type="text" name="role_name" class="form-control" value="{{$role->role}}" required>
				</div>
					{{EditPermissions($role->id)}}
				<div class="col-sm-12">
					<button class="btn btn-success btn-block" type="submit">{{__('titles.save')}}</button>
				</div>
			</form>
		</div>
	</div>
</div>


<!-- javascript -->
@section('script')
<script>
	// $(".checkAll").change(function(event) {
	// 	var fatherName = $(this).attr('id');
	// 	alert(fatherName)
	// });
</script>

@endsection
<!-- /javascript -->

@endsection
