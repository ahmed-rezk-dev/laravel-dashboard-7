@extends('dashboard.layout.master')

<!-- style -->
@section('style')

@endsection
<!-- /style -->
@section('title', $message->name )
@section('content')
<div class="panel panel-flat">
	<div class="panel-heading">
		<h5 class="panel-title">{{__('titles.message_from')}}: {{$message->name}}</h5>
		<div class="heading-elements">
			<ul class="icons-list">
				<li><a data-action="collapse"></a></li>
				<li><a data-action="reload"></a></li>
			</ul>
		</div>
	</div>
	<div class="panel panel-flat">
		<div class="panel-body">
			<div class="row text-center">
				<div class="col-sm-12 alert alert-success">
					<div class="col-sm-3">{{__('titles.name')}} : {{$message->name}} </div>
					<div class="col-sm-3">{{__('titles.email')}} : {{$message->email}}</div>
					<div class="col-sm-3">{{__('titles.phone')}} : {{$message->phone}}</div>
					<div class="col-sm-3">{{__('titles.options')}} : {{$message->created_at->diffForHumans()}}</div>
				</div>

				<br>
				<div class="col-sm-12" style="margin-top: 20px;margin-bottom: 25px">
					{{$message->message}}
				</div>
				<div class="col-sm-12" style="margin-top:20px">

					<form action="{{route('deletemessage')}}" method="POST">
						{{csrf_field()}}
            <input type="hidden" name="id" value="{{$message->id}}">
						<button class="btn btn-danger generalDelete col-sm-3" type="submit"> {{__('titles.delete')}} <i style="color: #fff" class=" icon-trash"></i> </button>
					</form>

					<div class="btn btn-primary col-sm-3 SMS" data-toggle="modal" data-target="#exampleModalSMS" data-phone="{{$message->phone}}" data-email="{{$message->email}}" data-name="{{$message->name}}">
                    {{__('titles.reply_by_sms')}} <i class="icon-mobile2"></i>
					</div>

					<div class="btn btn-success col-sm-3 EMAIL" data-toggle="modal" data-target="#exampleModalEmail" data-phone="{{$message->phone}}" data-email="{{$message->email}}" data-name="{{$message->name}}">
            {{__('titles.reply_by_email')}}
             <i class="icon-mail5"></i>

					</div>

            <div class="btn btn-warning col-sm-3">
                <a style="color: #fff" href="{{route('inbox')}}">
                    {{__('titles.back_to_index')}}
                    <i class="icon-enter5"></i>
                </a>
            </div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- SMS Modal -->
<div class="modal fade" id="exampleModalSMS" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">{{__('titles.send_sms_to')}} <span class="reverName"></span></h5>
			</div>
			<div class="modal-body">
				<div class="row">
					<form action="{{route('sendsms')}}" method="POST" enctype="multipart/form-data">
						{{csrf_field()}}
						<input type="hidden" name="phone" value="">
						<div class="col-sm-12">
							<textarea rows="15" name="sms_message" class="form-control" placeholder="{{__('titles.message')}}"></textarea>
						</div>

						<div class="col-sm-12" style="margin-top: 10px">
							<button type="submit" class="btn btn-primary addCategory">{{__('titles.send')}}</button>
				        <button type=" button" class="btn btn-secondary" data-dismiss="modal">{{__('titles.close')}}</button>
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- /SMS Modal -->

<!-- Email Modal -->
<div class="modal fade" id="exampleModalEmail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">{{__('titles.send_email_to')}}<span class="reverName"></span></h5>
			</div>
			<div class="modal-body">
				<div class="row">
					<form action="{{route('sendemail')}}" method="POST" enctype="multipart/form-data">
						{{csrf_field()}}
						<input type="hidden" name="email">
						<input type="hidden" name="name">
						<div class="col-sm-12">
							<textarea rows="15" name="email_message" class="form-control" placeholder="{{__('titles.message')}}"></textarea>
						</div>

						<div class="col-sm-12" style="margin-top: 10px">
							<button type="submit" class="btn btn-primary addCategory">{{__('titles.send')}}</button>
				        <button type=" button" class="btn btn-secondary" data-dismiss="modal">{{__('titles.close')}}</button>
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- /Email Modal -->

<!-- javascript -->
@section('script')
<script>
	//put phone in the modal
	$(document).on('click', '.SMS', function() {
		$('input[name="phone"]').val($(this).data('phone'));
		$('.reverName').text($(this).data('name'))
	});

	//put email in the modal
	$(document).on('click', '.EMAIL', function() {
		$('input[name="email"]').val($(this).data('email'));
		$('input[name="name"]').val($(this).data('name'));
		$('.reverName').text($(this).data('name'))
	});
</script>
@endsection
@endsection
