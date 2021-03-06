<div class="navbar navbar-inverse">
    <div class="navbar-header">
        <a class="navbar-brand" href="https://ahmed-rezk.herokuapp.com"><img src="{{asset('dashboard/images/logo_light.png')}}" class="logo"></a>

        <ul class="nav navbar-nav visible-xs-block">
            <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
            <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
        </ul>
    </div>

    <div class="navbar-collapse collapse" id="navbar-mobile">
        <ul class="nav navbar-nav">
            <li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>

        </ul>

        <p class="navbar-text"><span class="label bg-success-400">Online</span></p>

        <ul class="nav navbar-nav navbar-right">

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-bubbles4"></i>
                    <span class="visible-xs-inline-block position-right">Messages</span>
                    <span class="badge bg-warning-400">{{count(Notification())}}</span>
                </a>

                <div class="dropdown-menu dropdown-content width-350" style="width: 250px">

                    <ul class="media-list dropdown-content-body">
                        @foreach(Notification() as $n)
                        <li class="media">
                            <div class="media-left">

                                <div class="media-body">
                                    <a href="{{route('showmessage',$n->id)}}" class="media-heading">
                                        <span class="text-semibold">{{$n->name}}</span>
                                        <span class="media-annotation pull-right">{{$n->created_at->diffForHumans()}}</span>
                                    </a>

                                    <span class="text-muted">{{Str::limit($n->message,30)}}</span>
                                </div>
                        </li>
                        <hr>
                        @endforeach
                    </ul>

                    <div class="dropdown-content-footer">
                        <a href="{{route('inbox')}}" data-popup="tooltip" title="All messages"><i class="icon-menu display-block"></i> {{__('titles.see_all_messages')}}</a>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
