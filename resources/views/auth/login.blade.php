<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>

    <!-- Global stylesheets -->

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
    <link href="{{asset('dashboard/css/icons/icomoon/styles.css')}}"  rel="stylesheet" type="text/css">
    <link href="{{asset('dashboard/css/ltr/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('dashboard/css/ltr/core.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('dashboard/css/ltr/components.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('dashboard/css/colors.css')}}"             rel="stylesheet" type="text/css">
    <link href="{{asset('dashboard/css/extras/animate.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('dashboard/css/app.css')}}" rel="stylesheet" type="text/css">
    @yield('style')
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript" src="{{asset('dashboard/js/plugins/loaders/pace.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('dashboard/js/core/libraries/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('dashboard/js/core/libraries/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('dashboard/js/plugins/loaders/blockui.min.js')}}"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script type="text/javascript" src="{{asset('dashboard/js/plugins/forms/validation/validate.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('dashboard/js/plugins/forms/styling/uniform.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('dashboard/js/core/app.js')}}"></script>
    <script type="text/javascript" src="{{asset('dashboard/js/pages/login_validation.js')}}"></script>

</head>

<body class="login-cover">

    <!-- Page container -->
    <div class="page-container login-container">

        <!-- Page content -->
        <div class="page-content">

            <!-- Main content -->
            <div class="content-wrapper">

                <!-- Content area -->
                <div class="content">

                    <!-- Form with validation -->
                    <form action="{{url('login')}}" method="POST" role="form" class="form-validate">
                        {{csrf_field()}}
                        <div class="panel panel-body login-form">
                            <div class="text-center">
                                <div class="icon-object border-slate-300 text-slate-300"><i class="icon-reading"></i></div>
                                <h5 class="content-group"> {{__('titles.login')}} <small class="display-block">Dashboard</small></h5>
                            </div>

                            <div class="form-group has-feedback has-feedback-left">
                                <label for='email'>{{__('titles.email')}}: admin@test.com</label>
                                <input type="text" class="form-control" placeholder="{{__('titles.email')}}" name="email" required="required">
                                <div class="form-control-feedback">
                                    <i class="icon-user text-muted"></i>
                                </div>
                            </div>

                            <div class="form-group has-feedback has-feedback-left">
                                <label for='password'>{{__('titles.password')}}: 123456</label>
                                <input type="password" class="form-control" placeholder="{{__('titles.password')}}" name="password" required="required">
                                <div class="form-control-feedback">
                                    <i class="icon-lock2 text-muted"></i>
                                </div>
                            </div>

                            <div class="form-group login-options">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label class="checkbox-inline">
                                            {{__('titles.remember_me')}}
                                            <input type="checkbox" class="styled" checked="checked">
                                        </label>
                                    </div>

                                </div>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn bg-blue btn-block">{{__('titles.login')}} <i class="icon-arrow-left13 position-right"></i></button>
                            </div>


                        </div>
                    </form>
                    <!-- /form with validation -->

                    <!-- Footer -->
                    <div class="footer text-white">
                        <a href="#" class="text-white">Copyright @ Ahmed Rezk 2020</a>
                    </div>
                    <!-- /footer -->

                </div>
                <!-- /content area -->

            </div>
            <!-- /main content -->

        </div>
        <!-- /page content -->

    </div>
    <!-- /page container -->

</body>
</html>
