<?php

use Illuminate\Support\Facades\Route;

URL::forceSchema('https');
/*---------------------------------Start Of FrontEnd--------------------------*/

/*---------------------------------End Of FrontEnd--------------------------*/

/*---------------------------------Start Of DashBoard--------------------------*/

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'Manager', 'checkRole', 'smtpAndFcmConfig', 'Domain']], function () {
    /*Start Of DashBoard Controller (Intro Page)*/
    Route::get('dashboard', [
        'uses' => 'DashBoardController@Index',
        'as' => 'dashboard',
        'icon' => '<i class="icon-home4"></i>',
        'title' => __('titles.home_page'),
    ]);

    /*------------ Start Of ContactUsController ----------*/
    //messages page
    Route::get('inbox-page', [
        'uses' => 'ContactUsController@InboxPage',
        'as' => 'inbox',
        'title' => __('titles.messages'),
        'icon' => '<i class="icon-inbox-alt"></i>',
        'child' => ['showmessage', 'deletemessage', 'sendsms', 'sendemail'],
    ]);

    //show message page
    Route::get('show-message/{id}', [
        'uses' => 'ContactUsController@ShowMessage',
        'as' => 'showmessage',
        'title' => __('titles.show_message'),
    ]);

    //send sms
    Route::post('send-sms', [
        'uses' => 'ContactUsController@SMS',
        'as' => 'sendsms',
        'title' => __('titles.by_sms'),
    ]);

    //send email
    Route::post('send-email', [
        'uses' => 'ContactUsController@EMAIL',
        'as' => 'sendemail',
        'title' => __('titles.by_email'),
    ]);

    //delete message
    Route::post('delete-message', [
        'uses' => 'ContactUsController@DeleteMessage',
        'as' => 'deletemessage',
        'title' => __('titles.delete_message'),
    ]);

    /*------------ End Of ContactUsController ----------*/

    /*------------ End Of UsersController ----------*/

    //users list
    Route::get('users', [
        'uses' => 'UsersController@Users',
        'as' => 'users',
        'title' => __('titles.users'),
        'icon' => '<i class="icon-vcard"></i>',
        'child' => [
            'adduser',
            'updateuser',
            'deleteuser',
            'emailallusers',
            'smsallusers',
            'notificationallusers',
            'sendcurrentemail',
            'sendcurrentsms',
            'sendcurrentnotification',
        ],
    ]);

    //add user
    Route::post('add-user', [
        'uses' => 'UsersController@AddUser',
        'as' => 'adduser',
        'title' => __('titles.add_users'),
    ]);

    //update user
    Route::post('update-user', [
        'uses' => 'UsersController@UpdateUser',
        'as' => 'updateuser',
        'title' => __('titles.update_users'),
    ]);

    //delete user
    Route::post('delete-user', [
        'uses' => 'UsersController@deleteUser',
        'as' => 'deleteuser',
        'title' => __('titles.delete_users'),
    ]);

    //email for all users
    Route::post('email-users', [
        'uses' => 'UsersController@EmailMessageAll',
        'as' => 'emailallusers',
        'title' => __('titles.send_email_to_all_users'),
    ]);

    //sms for all users
    Route::post('sms-users', [
        'uses' => 'UsersController@SmsMessageAll',
        'as' => 'smsallusers',
        'title' => __('titles.send_sms_to_all_users'),
    ]);

    //notification for all users
    Route::post('notification-users', [
        'uses' => 'UsersController@NotificationMessageAll',
        'as' => 'notificationallusers',
        'title' => __('titles.sens_notifications_to_all_users'),
    ]);

    //send email for current user
    Route::post('send-current-email', [
        'uses' => 'UsersController@SendEmail',
        'as' => 'sendcurrentemail',
        'title' => __('titles.send_email_to_user'),
    ]);

    //send sms for current user
    Route::post('send-current-sms', [
        'uses' => 'UsersController@SendSMS',
        'as' => 'sendcurrentsms',
        'title' => __('titles.send_sms_to_user'),
    ]);

    //send notification for current user
    Route::post('send-current-notification', [
        'uses' => 'UsersController@SendNotification',
        'as' => 'sendcurrentnotification',
        'title' => __('titles.sens_notifications_to_user'),
    ]);
    /*------------ End Of UsersController ----------*/

    /*------------ Start Of ReportsController ----------*/

    //reports page
    Route::get('reports-page', [
        'uses' => 'ReportsController@ReportsPage',
        'as' => 'reportspage',
        'title' => __('titles.reports'),
        'icon' => '<i class=" icon-flag7"></i>',
        'child' => ['deleteusersreports', 'deletesupervisorsreports'],
    ]);

    //delete users reports
    Route::post('delete-users-reporst', [
        'uses' => 'ReportsController@DeleteUsersReports',
        'as' => 'deleteusersreports',
        'title' => __('titles.delete_users_reports'),
    ]);

    //delete supervisors reports
    Route::post('delete-supervisors-reporst', [
        'uses' => 'ReportsController@DeleteSupervisorsReports',
        'as' => 'deletesupervisorsreports',
        'title' => __('titles.delete_administrations_reports'),
    ]);
    /*------------ End Of ReportsController ----------*/

    /*------------ start Of PermissionsController ----------*/
    //permissions list
    Route::get('permissions-list', [
        'uses' => 'PermissionsController@PermissionsList',
        'as' => 'permissionslist',
        'title' => __('titles.permissionslist'),
        'icon' => '<i class="icon-safe"></i>',
        'child' => [
            'addpermissionspage',
            'addpermission',
            'editpermissionpage',
            'updatepermission',
            'deletepermission',
        ],
    ]);

    //add permissions page
    Route::get('permissions', [
        'uses' => 'PermissionsController@AddPermissionsPage',
        'as' => 'addpermissionspage',
        'title' => __('titles.add_permission'),
    ]);

    //add permission
    Route::post('add-permission', [
        'uses' => 'PermissionsController@AddPermissions',
        'as' => 'addpermission',
        'title' => __('titles.adding_permissions'),
    ]);

    //edit permissions page
    Route::get('edit-permissions/{id}', [
        'uses' => 'PermissionsController@EditPermissions',
        'as' => 'editpermissionpage',
        'title' => __('titles.update_permissions'),
    ]);

    //update permission
    Route::post('update-permission', [
        'uses' => 'PermissionsController@UpdatePermission',
        'as' => 'updatepermission',
        'title' => __('titles.updating_permissions'),
    ]);

    //delete permission
    Route::post('delete-permission', [
        'uses' => 'PermissionsController@DeletePermission',
        'as' => 'deletepermission',
        'title' => __('titles.delete_permissions'),
    ]);

    /*------------ End Of PermissionsController ----------*/

    /*------------ Start Of MoneyAccountsController ----------*/
    Route::get('money-accounts', [
        'uses' => 'MoneyAccountsController@MoneyAccountsPage',
        'as' => 'moneyaccountspage',
        'icon' => '<i class="icon-cash3"></i>',
        'title' => __('titles.moneyaccountspage'),
        'child' => ['moneyaccept', 'moneyacceptdelete', 'moneydelete'],
    ]);

    //accept
    Route::post('accept', [
        'uses' => 'MoneyAccountsController@Accept',
        'as' => 'moneyaccept',
        'title' => __('titles.confrim_money_transaction'),
    ]);

    //accept and delete
    Route::post('accept-delete', [
        'uses' => 'MoneyAccountsController@AcceptAndDelete',
        'as' => 'moneyacceptdelete',
        'title' => __('titles.confirm_money_transaction_and_delete'),
    ]);

    //delete
    Route::post('money-delete', [
        'uses' => 'MoneyAccountsController@Delete',
        'as' => 'moneydelete',
        'title' => __('titles.delete'),
    ]);
    /*------------ End Of MoneyAccountsController ----------*/

    /*------------ Start Of SettingController ----------*/

    //setting page
    Route::get('setting', [
        'uses' => 'SettingController@Setting',
        'as' => 'setting',
        'title' => __('titles.settings'),
        'icon' => '<i class="icon-wrench"></i>',
        'child' => [
            'addsocials',
            'updatesocials',
            'dddd',
            'updatesmtp',
            'updatesms',
            'updateonesignal',
            'updatefcm',
            'updatesitesetting',
            'updateseo',
            'updatesitecopyright',
            'updateemailtemplate',
            'updategoogleanalytics',
            'updatelivechat',
        ],
    ]);

    //add socials media
    Route::post('add-socials', [
        'uses' => 'SettingController@AddSocial',
        'as' => 'addsocials',
        'title' => __('titles.adding_social_media'),
    ]);

    //update socials media
    Route::post('update-socials', [
        'uses' => 'SettingController@UpdateSocial',
        'as' => 'updatesocials',
        'title' => __('titles.updating_social_media'),
    ]);

    //delete social
    Route::post('delete-social', [
        'uses' => 'SettingController@DeleteSocial',
        'as' => 'deletesocial',
        'title' => __('titles.deleting_social_media'),
    ]);

    //update SMTP
    Route::post('update-smtp', [
        'uses' => 'SettingController@SMTP',
        'as' => 'updatesmtp',
        'title' => __('titles.updating_smtp'),
    ]);

    //update SMS
    Route::post('update-sms', [
        'uses' => 'SettingController@SMS',
        'as' => 'updatesms',
        'title' => __('titles.updating_sms'),
    ]);

    //update OneSignal
    Route::post('update-onesignal', [
        'uses' => 'SettingController@OneSignal',
        'as' => 'updateonesignal',
        'title' => __('titles.updating_oneSignal'),
    ]);

    //update FCM
    Route::post('update-FCM', [
        'uses' => 'SettingController@FCM',
        'as' => 'updatefcm',
        'title' => __('titles.updating_fcm'),
    ]);

    //update SiteSetting
    Route::post('update-sitesetting', [
        'uses' => 'SettingController@SiteSetting',
        'as' => 'updatesitesetting',
        'title' => __('titles.updating_general_settings'),
    ]);

    //update SEO
    Route::post('update-seo', [
        'uses' => 'SettingController@SEO',
        'as' => 'updateseo',
        'title' => __('titles.updating_seo'),
    ]);

    //update footerCopyRight
    Route::post('update-sitecopyright', [
        'uses' => 'SettingController@SiteCopyRight',
        'as' => 'updatesitecopyright',
        'title' => __('titles.updating_copyright'),
    ]);

    //update email template
    Route::post('update-emailtemplate', [
        'uses' => 'SettingController@EmailTemplate',
        'as' => 'updateemailtemplate',
        'title' => __('titles.updating_email_template'),
    ]);

    //update api google analytics
    Route::post('update-google-analytics', [
        'uses' => 'SettingController@GoogleAnalytics',
        'as' => 'updategoogleanalytics',
        'title' => __('titles.updating_google_analytics'),
    ]);

    //update api live chat
    Route::post('update-live-chat', [
        'uses' => 'SettingController@LiveChat',
        'as' => 'updatelivechat',
        'title' => __('titles.updating_live_chat'),
    ]);

    /*------------ End Of SettingController ----------*/
});
Route::get('dd', function () {
    echo bcrypt(123456);
});
/*-------------------------------End Of DashBoard--------------------------------*/

//Login Route
Route::get('/login/', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('/login/', 'Auth\LoginController@login');
Route::get('/logout', 'Auth\LoginController@logout')->name('logout');

// Route::get('register', 'Auth\RegisterController@showRegistrationForm');
// Route::post('register','RegisterUserController@Register');
//Route::post('register', 'Auth\RegisterController@register');

// Password Reset Routes
Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
Route::post('password/reset', 'Auth\ResetPasswordController@reset');
