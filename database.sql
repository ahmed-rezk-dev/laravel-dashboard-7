-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2020 at 05:36 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `laravel_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showOrNow` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `message`, `senderType`, `showOrNow`, `created_at`, `updated_at`) VALUES
(9, 'Dr. Zena Funk Sr.', 'zackary12@example.org', '480.796.3733 x66352', 'Rerum facilis velit sed facere facere ipsa laudantium. Blanditiis voluptatem adipisci quisquam facilis ut sunt nihil. Illum est culpa illum unde. Quidem laborum voluptas quidem qui dolorem enim qui aut. Optio quidem accusamus rem incidunt.', '', 1, '2020-03-31 09:39:58', '2020-04-01 05:16:55'),
(10, 'Humberto Weimann', 'wilburn.stoltenberg@example.com', '489.676.1129 x974', 'Est eum eveniet nesciunt. Laboriosam quo magnam quidem vitae perspiciatis quos sapiente est. Amet minima quia eveniet eum non qui. Tempore quia qui quis dolores et molestiae.', '', 1, '2020-03-31 09:39:58', '2020-03-31 09:39:58'),
(11, 'Leila Gibson', 'antone.dibbert@example.com', '1-821-345-2928 x5496', 'Et minus fugiat quis a. Id culpa rerum deleniti. Nam quia sunt doloremque vero voluptatum. Non eos praesentium pariatur quidem omnis libero in.', '', 1, '2020-03-31 09:39:58', '2020-03-31 09:39:58'),
(12, 'Barney Glover', 'jborer@example.com', '651-734-0880', 'Enim architecto velit ducimus. Accusamus facilis est et ab cumque atque. Reiciendis nobis nisi quas corporis necessitatibus quasi. Placeat aspernatur doloremque distinctio est praesentium necessitatibus. Ratione facilis facilis similique quo dolores veniam aspernatur dolor.', '', 1, '2020-04-01 05:19:59', '2020-04-07 09:22:41'),
(14, 'Mr. Cesar Mohr', 'rebeka.haag@example.org', '(975) 230-9339 x53335', 'Autem recusandae ullam maiores magni reprehenderit dolor. Adipisci quia sunt aut qui natus voluptates delectus. Voluptatibus corporis laborum officia id. Iure est maxime unde voluptas laboriosam.', '', 1, '2020-04-01 05:19:59', '2020-04-01 05:19:59'),
(15, 'Jena Dickens', 'schmitt.annabelle@example.com', '585.520.5441 x61317', 'Itaque et et facere consequuntur dolorem quisquam possimus. Maiores quis ut corrupti. At quia ut sed quae quia.', '', 1, '2020-04-01 05:19:59', '2020-04-06 07:57:59'),
(16, 'Stewart Rempel', 'phyllis.roberts@example.net', '1-843-220-6795', 'Et sunt veritatis voluptas voluptatum et harum temporibus. Necessitatibus tempore consequatur earum atque aspernatur. Debitis et consequatur ratione cum et cumque incidunt alias.', '', 1, '2020-04-01 05:19:59', '2020-04-01 05:19:59'),
(17, 'Mr. Conor Raynor II', 'rosina.hills@example.net', '1-639-475-2321 x63293', 'Voluptas nemo dolorem nemo aspernatur aut autem nostrum. Qui culpa sequi aut.', '', 1, '2020-04-01 05:19:59', '2020-04-01 05:19:59'),
(18, 'Dr. Elenor Lueilwitz', 'loraine27@example.net', '(347) 585-6872 x9251', 'Sit perspiciatis aspernatur nemo molestiae quae. Voluptas modi rerum odio sit autem. Voluptatum dolores quaerat necessitatibus tempora. Consequuntur distinctio ipsum nobis et enim.', '', 1, '2020-04-01 05:19:59', '2020-04-01 05:19:59'),
(19, 'Dr. Piper Klocko IV', 'deonte.renner@example.net', '263.471.8253 x823', 'Illum ipsum nisi et sunt non eos. Quam dolor tenetur aut reprehenderit unde quis. Et labore optio a blanditiis. Et porro neque et animi.', '', 1, '2020-04-01 05:19:59', '2020-04-01 05:19:59'),
(20, 'Lloyd Funk', 'velma.langworth@example.org', '907.660.4936', 'Et expedita ut et ea voluptatibus. Magni autem ut voluptatem incidunt nulla incidunt. Et nesciunt et et excepturi placeat quae. Animi numquam ut nihil impedit.', '', 0, '2020-04-01 05:19:59', '2020-04-01 05:19:59'),
(21, 'Prof. Josh Welch', 'vhoeger@example.com', '719.309.2953 x032', 'In est accusantium suscipit quasi perferendis veniam vero. Et dolores reprehenderit consequatur quae. Enim quo molestias earum repellat harum quaerat nesciunt deserunt.', '', 1, '2020-04-01 05:19:59', '2020-04-10 10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Fields`
--

CREATE TABLE `Fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vaule_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vaule_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `html`
--

CREATE TABLE `html` (
  `id` int(10) UNSIGNED NOT NULL,
  `footer_copyrigh` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_header_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_footer_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_font_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_chat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `html`
--

INSERT INTO `html` (`id`, `footer_copyrigh`, `email_header_color`, `email_footer_color`, `email_font_color`, `google_analytics`, `live_chat`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '#000', '', '', '2020-02-15 15:31:29', '2020-02-15 15:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(2, 1, 'en', 'messages', 'message_sent', 'تم إرسال الرسالة بنجاح شكرا لك.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(3, 1, 'en', 'messages', 'user_confirmation_finished_notify', 'The customer has confirmed that the process has completed successfully.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(4, 1, 'en', 'messages', 'successfully_confirmed', 'Successfully Confirmed.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(5, 1, 'en', 'messages', 'hired_successfully', 'لقد تم ارسال طلبك بنجاح', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(6, 1, 'en', 'messages', 'new_rating_notify', 'Your service has been evaluated by ', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(7, 1, 'en', 'messages', 'thank_you', 'Thank you.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(8, 1, 'en', 'messages', 'signing_successfully', 'Signing successfully.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(9, 1, 'en', 'messages', 'updated_successfully', 'Updated Successfully', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(10, 0, 'en', 'messages', 'wrong_id', NULL, '2020-04-02 09:42:19', '2020-04-02 09:42:19'),
(11, 1, 'en', 'messages', 'password_was_successfully_changed', 'تم تغيير كلمة المرور بنجاح!', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(12, 1, 'en', 'messages', 'wrong_password', 'Your current password is incorrect!!', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(13, 1, 'en', 'messages', 'new_maint_notify', 'You have a new maintenance order Be the first to put an offer ..', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(14, 1, 'en', 'messages', 'auction_created_successfully', 'Your auction has been successfully added, and you\'ll be notified when new offers are available.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(15, 1, 'en', 'messages', 'new_product_notify', 'You have a new order Be the first to put an offer ..', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(16, 1, 'en', 'messages', 'added_basket_successfully', 'Added to cart', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(17, 1, 'en', 'messages', 'deleted_successfully', 'Deleted Successfully', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(18, 1, 'en', 'messages', 'saved', 'تم الحفظ بنجاح!', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(19, 1, 'en', 'messages', 'hired_notifiy', 'تم اختيارك لتنفيذ طلب جديد من قبل', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(20, 1, 'en', 'messages', 'new_auction_offer', 'لديك عرض جديد من', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(21, 1, 'en', 'messages', 'auction_added_successfully', 'Your auction is successfully sent.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(22, 1, 'en', 'messages', 'new_pro_finished_notify', 'Your order has been delivered, please confirm that this request has been completed.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(23, 1, 'en', 'messages', 'maint_pro_finished_notify', 'Maintenance completed, please make sure this order is complete.', '2020-04-02 09:42:19', '2020-04-02 09:42:41'),
(24, 0, 'en', 'titles', 'home_page', 'Dashboard', '2020-04-02 09:42:19', '2020-04-10 10:14:21'),
(25, 0, 'en', 'titles', 'messages', 'Messages', '2020-04-02 09:42:19', '2020-04-10 10:14:21'),
(26, 0, 'en', 'titles', 'by_sms', 'By SMS', '2020-04-02 09:42:19', '2020-04-10 10:14:21'),
(27, 0, 'en', 'titles', 'users', 'Users', '2020-04-02 09:42:19', '2020-04-10 10:14:21'),
(28, 0, 'en', 'titles', 'reports', 'Reports', '2020-04-02 09:42:19', '2020-04-10 10:14:21'),
(29, 1, 'ar', 'auth', 'failed', 'بيانات الاعتماد هذه غير متطابقة مع البيانات المسجلة لدينا.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(30, 1, 'ar', 'auth', 'throttle', 'عدد كبير جدا من محاولات الدخول. يرجى المحاولة مرة أخرى بعد :seconds ثانية.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(31, 1, 'ar', 'messages', 'verify_title', 'Verify Your Email Address', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(32, 1, 'ar', 'messages', 'verify_message', 'Thanks for creating an account with the verification demo app.\n	Please follow the link below to verify your email address', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(33, 1, 'ar', 'messages', 'verify_sent', 'Thanks for signing up! Please check your email.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(34, 1, 'ar', 'messages', 'signing_successfully', 'Thanks for signing up!, Enjoy.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(35, 1, 'ar', 'messages', 'login_successfully', 'Wrong email or password.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(36, 1, 'ar', 'messages', 'error_login', 'Wrong email or password.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(37, 1, 'ar', 'messages', 'created', 'تم الأنشاء بنجاح!', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(38, 1, 'ar', 'messages', 'saved', 'تم الحفظ بنجاح!', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(39, 1, 'ar', 'messages', 'deleted', 'تم الحذف بنجاح!', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(40, 1, 'ar', 'messages', 'image_warning', 'حجم الصورة يجب ان يكون 80 × 80', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(41, 1, 'ar', 'messages', 'delete', 'هل أنت متأكد أنك تريد الحذف.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(42, 1, 'ar', 'messages', 'password_was_successfully_changed', 'تم تغيير كلمة المرور بنجاح!', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(43, 1, 'ar', 'messages', 'thumbnail_320', 'يفضل أن يكون قياس الصورة 320 * 220', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(44, 1, 'ar', 'messages', 'no_result_ms', 'أسف لم يتم العثور عن بحثك.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(45, 1, 'ar', 'messages', 'result_ms_1', 'يمكن البحث مره أخري من خلال صندوق البحث اسفل هذه الرسالة.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(46, 1, 'ar', 'messages', 'result_ms_2', '- او يمكن تصفح أخر العروض من خلال الضغط علي هذا الزر.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(47, 1, 'ar', 'messages', 'result_ms', 'نتائج البحث : <i class=\"fa fa-smile-o\" aria-hidden=\"true\"></i>', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(48, 1, 'ar', 'messages', 'you_must_login_first_to_add_comment', 'يجب عليك تسجيل الدخول أولأ لإضافة تعليق', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(49, 1, 'ar', 'messages', 'success_comment', 'تم إضافة التعليق بنجاح شكراً لك.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(50, 1, 'ar', 'messages', 'payment_methods_desc', 'أضف جميع الطرق لاستلام ودفع الأموال.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(51, 1, 'ar', 'messages', 'our_products_desc', 'أضف نص قصير تصف فيه منتجاتك.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(52, 1, 'ar', 'messages', 'empty_input', 'الحقل فارغ.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(53, 1, 'ar', 'messages', 'error_input', 'من فضلك املأ الحقل المطلوب.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(54, 1, 'ar', 'messages', 'error_inputs', 'من فضلك املأ الحقول المطلوبة.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(55, 1, 'ar', 'messages', 'empty_page', 'لا يوجد محتوي في هذه الصفحة حالياً!', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(56, 1, 'ar', 'messages', 'wrong_id', 'رقم تعريقي id خطأ!!', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(57, 1, 'ar', 'messages', 'success_subscribe', 'تم الأشتراك بنجاح شكراً لك. <i class=\"fa fa-smile-o\"></i>', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(58, 1, 'ar', 'messages', 'order_opations', 'أ ارغب بارسال عرض السعر عبر قنوات التواصل التالية :-', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(59, 1, 'ar', 'messages', 'success_order', 'تم إرسال طلبك بنجاح شكراً لك. <i class=\"fa fa-smile-o\"></i>', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(60, 1, 'ar', 'messages', 'dwonload_apps', 'تحميل التطبيقات علي هاتفك', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(61, 1, 'ar', 'messages', 'message_sent', 'تم إرسال الرسالة بنجاح شكرا لك.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(62, 1, 'ar', 'messages', 'complaint_sent', 'تم إرسال الشكوى أو الاقتراح بنجاح شكرا لك <i class=\"fa fa-smile-o\"></i>', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(63, 1, 'ar', 'messages', 'old_password', 'كلمة المرور القديمة غير صحيحة.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(64, 1, 'ar', 'messages', 'something_wrong', 'هناك خطأ ما, يرجي التواصل مع إدارة الموقع. شكراً...', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(65, 1, 'ar', 'messages', 'refused_order', 'قام مقدم الخدمة برفض طلبك الخاص بك: رقم الطلب ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(66, 1, 'ar', 'messages', 'accepted_order', 'قام مقدم خدمة بقبول طلبك الخاص بك: رقم الطلب ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(67, 1, 'ar', 'messages', 'new_order', 'هناك طلب جديد مناسب لخدمتك: رقم الطلب ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(68, 1, 'ar', 'messages', 'process_1', 'قام مقدم الخدمة بتحديث حالة: تم الموافقة علي طلب رقم ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(69, 1, 'ar', 'messages', 'process_2', 'قام مقدم الخدمة بتحديث حالة: في الطريق إليك طلب رقم ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(70, 1, 'ar', 'messages', 'process_3', 'قام مقدم الخدمة بتحديث حالة: تم وصول مقدم الخدمة إليك طلب رقم ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(71, 1, 'ar', 'messages', 'process_4', 'قام مقدم الخدمة بتحديث حالة: تم بدء العمل طلب رقم ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(72, 1, 'ar', 'messages', 'process_5', 'قام مقدم الخدمة بتحديث حالة: تم الانتهاء من العمل طلب رقم ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(73, 1, 'ar', 'messages', 'process_6', 'قام مقدم الخدمة بتحديث حالة: تم الاكمال والانتهاء طلب رقم ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(74, 1, 'ar', 'messages', 'auction_created_successfully', 'تم إضافة مزادك بنجاح, سوف يتم إرسال أشعارات إليك  عند وجود عروض جديدة.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(75, 1, 'ar', 'messages', 'added_basket_successfully', 'تم الأضافة إلي السلة.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(76, 1, 'ar', 'messages', 'deleted_successfully', 'تم الحذف.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(77, 1, 'ar', 'messages', 'auction_added_successfully', 'تم إرسال عرضك بنجاح.', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(78, 1, 'ar', 'messages', 'hired_notifiy', 'تم اختيارك لتنفيذ طلب جديد', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(79, 1, 'ar', 'messages', 'hired_successfully', 'لقد تم ارسال طلبك بنجاح', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(80, 1, 'ar', 'messages', 'NewProFinishedNotify', 'تم إنتهاء طلب يرجي التأكيد علي ذلك نوع الطلب ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(81, 1, 'ar', 'messages', 'new_rating_notify', 'لديك تقيم جديد من قبل ', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(82, 1, 'ar', 'messages', 'new_product_notify', 'لديك طلب جديد كن اول من يضع عرض٫', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(83, 1, 'ar', 'messages', 'new_auction_offer', 'لديك هرض جديد٫', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(84, 1, 'ar', 'messagesFCM', 'provider_refused_order', 'قام مقدم الخدمة برفض طلبك الخاص بك', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(85, 1, 'ar', 'messagesFCM', 'user_refused_order', 'قام طالب الخدمة برفض الطلب', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(86, 1, 'ar', 'messagesFCM', 'accepted_order', 'قام مقدم خدمة بقبول طلبك الخاص بك', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(87, 1, 'ar', 'messagesFCM', 'new_order', 'هناك طلب جديد مناسب لخدمتك', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(88, 1, 'ar', 'messagesFCM', 'process', 'قام مقدم الخدمة بتحديث حالة الطلب', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(89, 1, 'ar', 'pagination', 'previous', '&laquo; السابق', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(90, 1, 'ar', 'pagination', 'next', 'التالي &raquo;', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(91, 1, 'ar', 'passwords', 'password', 'يجب أن لا يقل طول كلمة المرور عن ستة أحرف، كما يجب أن تتطابق مع حقل التأكيد', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(92, 1, 'ar', 'passwords', 'reset', 'تمت إعادة تعيين كلمة المرور', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(93, 1, 'ar', 'passwords', 'sent', 'تم إرسال تفاصيل استعادة كلمة المرور الخاصة بك إلى بريدك الإلكتروني', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(94, 1, 'ar', 'passwords', 'token', '.رمز استعادة كلمة المرور الذي أدخلته غير صحيح', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(95, 1, 'ar', 'passwords', 'user', 'لم يتم العثور على أيّ حسابٍ بهذا العنوان الإلكتروني', '2020-04-02 09:42:40', '2020-04-02 09:42:40'),
(96, 0, 'ar', 'titles', 'about_us', 'من نحن', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(97, 0, 'ar', 'titles', 'about_us_ar', 'وصف عن الشركة : عربي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(98, 0, 'ar', 'titles', 'about_us_en', 'وصف عن الشركة : إنجليزي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(99, 0, 'ar', 'titles', 'add', 'إضافة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(100, 0, 'ar', 'titles', 'add_jobs', 'إضافة وظائف', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(101, 0, 'ar', 'titles', 'add_new', 'إضافة جديد', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(102, 0, 'ar', 'titles', 'add_product', 'إعلان جديد', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(103, 0, 'ar', 'titles', 'add_your_comment', 'أضف تعليقك :', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(104, 0, 'ar', 'titles', 'address', 'العنوان', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(105, 0, 'ar', 'titles', 'admin_Panel', 'لوحة التحكم', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(106, 0, 'ar', 'titles', 'all', 'الكل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(107, 0, 'ar', 'titles', 'android', 'أندرويد', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(108, 0, 'ar', 'titles', 'arabic', 'عربي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(109, 0, 'ar', 'titles', 'arabic_whatsapp', 'واتساب عربي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(110, 0, 'ar', 'titles', 'ask_for_help', 'طلب المساعدة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(111, 0, 'ar', 'titles', 'aspects', 'الجوانب', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(112, 0, 'ar', 'titles', 'back', 'الرجوع إلي الخلف', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(113, 0, 'ar', 'titles', 'back_to_home_page', 'الرجوع إلي الصفحة الرئيسية', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(114, 0, 'ar', 'titles', 'background', 'الخلفية', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(115, 0, 'ar', 'titles', 'base', 'القاعدة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(116, 0, 'ar', 'titles', 'by_email', 'رسائل إيميل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(117, 0, 'ar', 'titles', 'by_fax', 'فاكس', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(118, 0, 'ar', 'titles', 'by_sms', 'ارسال SMS', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(119, 0, 'ar', 'titles', 'by_whatsapp', 'رسالة واتساب', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(120, 0, 'ar', 'titles', 'car', 'السيارة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(121, 0, 'ar', 'titles', 'cars', 'سيارات', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(122, 0, 'ar', 'titles', 'channels_communication', 'قنوات التواصل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(123, 0, 'ar', 'titles', 'chnage_password', 'تغير كلمة المرور', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(124, 0, 'ar', 'titles', 'city', 'المدينة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(125, 0, 'ar', 'titles', 'close', 'إغلاق', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(126, 0, 'ar', 'titles', 'closed', 'مغلق', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(127, 0, 'ar', 'titles', 'color', 'لون القماش', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(128, 0, 'ar', 'titles', 'color_printing', 'عدد الوان الطباعه', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(129, 0, 'ar', 'titles', 'comment', 'التعليق', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(130, 0, 'ar', 'titles', 'comments', 'التعليقات', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(131, 0, 'ar', 'titles', 'companies', 'الشركات', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(132, 0, 'ar', 'titles', 'company', 'الشركة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(133, 0, 'ar', 'titles', 'company_name', 'إسم الشركة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(134, 0, 'ar', 'titles', 'conditions', 'الشروط', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(135, 0, 'ar', 'titles', 'contact_settings', 'إعدادات التواصل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(136, 0, 'ar', 'titles', 'content_ar', 'وصف كامل عن الأعلان : عربي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(137, 0, 'ar', 'titles', 'content_en', 'وصف كامل عن الأعلان : إنجليزي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(138, 0, 'ar', 'titles', 'control', 'تحكم', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(139, 0, 'ar', 'titles', 'copyright_developer', 'تصميم وتنفيذ<a href=\"#\">أوامر الشبكة</a>', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(140, 0, 'ar', 'titles', 'copyright_website', 'جميع الحقوق محفوطة لقطع غيار سيارتي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(141, 0, 'ar', 'titles', 'create', 'إنشاء', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(142, 0, 'ar', 'titles', 'create_new_product', 'إنشاء إعلان جديد', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(143, 0, 'ar', 'titles', 'create_new_user', 'إنشاء مستخدم جديد', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(144, 0, 'ar', 'titles', 'created_at', 'تاريخ الأنشاء', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(145, 0, 'ar', 'titles', 'customer_data', 'بيانات العميل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(146, 0, 'ar', 'titles', 'delete', 'حذف', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(147, 0, 'ar', 'titles', 'description_ar', 'وصف قصير : عربي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(148, 0, 'ar', 'titles', 'description_en', 'وصف قصير : إنجليزي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(149, 0, 'ar', 'titles', 'design_your_product', 'صمم منتجك', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(150, 0, 'ar', 'titles', 'disabled', 'معطل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(151, 0, 'ar', 'titles', 'distribution', 'التوزيع', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(152, 0, 'ar', 'titles', 'download_image', 'تحميل صورة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(153, 0, 'ar', 'titles', 'edit', 'تعديل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(154, 0, 'ar', 'titles', 'edit_profile', 'تعديل بيناتي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(155, 0, 'ar', 'titles', 'email', 'البريد الأكتروني', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(156, 0, 'ar', 'titles', 'enabled', 'مفعل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(157, 0, 'ar', 'titles', 'english', 'إنجليزي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(158, 0, 'ar', 'titles', 'english_whatsapp', 'واتساب إنجليزي ', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(159, 0, 'ar', 'titles', 'error', 'خطأ!!', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(160, 0, 'ar', 'titles', 'first_name', 'الأسم الأول', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(161, 0, 'ar', 'titles', 'forgot_your_password', 'نسيت رقمك السري؟', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(162, 0, 'ar', 'titles', 'grab_hand', 'ماسك اليد', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(163, 0, 'ar', 'titles', 'grab_hand_1', 'هاندل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(164, 0, 'ar', 'titles', 'grab_hand_2', 'محفور', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(165, 0, 'ar', 'titles', 'grab_hand_3', 'حبل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(166, 0, 'ar', 'titles', 'grab_hand_4', 'لصق شكشك', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(167, 0, 'ar', 'titles', 'grab_hand_5', 'سحاب', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(168, 0, 'ar', 'titles', 'grab_hand_6', 'تي شيرت', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(169, 0, 'ar', 'titles', 'heights', 'الطول', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(170, 0, 'ar', 'titles', 'home', 'الرئيسية', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(171, 0, 'ar', 'titles', 'home_page', 'الصفحة الرئيسية', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(172, 0, 'ar', 'titles', 'informations_about_us', 'معلومات عنا', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(173, 0, 'ar', 'titles', 'international_companies', 'ماركات عالمية', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(174, 0, 'ar', 'titles', 'iphone', 'أيفون', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(175, 0, 'ar', 'titles', 'job', 'الوظيفة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(176, 0, 'ar', 'titles', 'job_id', 'الدور الوظيفي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(177, 0, 'ar', 'titles', 'job_name_ar', 'إسم الوظيفة بالعربي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(178, 0, 'ar', 'titles', 'job_name_en', 'إسم الوظيفة بالأنجليزية', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(179, 0, 'ar', 'titles', 'jobs', 'وظائف', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(180, 0, 'ar', 'titles', 'last_name', 'إسم العائلة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(181, 0, 'ar', 'titles', 'list_offers', 'أحدث العروض', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(182, 0, 'ar', 'titles', 'loading', 'تحميل...', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(183, 0, 'ar', 'titles', 'login', 'تسجيل دخول', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(184, 0, 'ar', 'titles', 'login_btn', 'دخول', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(185, 0, 'ar', 'titles', 'logo', 'شعار', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(186, 0, 'ar', 'titles', 'logout', 'خروج', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(187, 0, 'ar', 'titles', 'menu', 'القائمة', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(188, 0, 'ar', 'titles', 'messages', 'الرسائل', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(189, 0, 'ar', 'titles', 'meta_ar', 'كلمات دلالية', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(190, 0, 'ar', 'titles', 'meta_en', 'الكلمات المفتاحية : إنجليزي', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(191, 0, 'ar', 'titles', 'mobile_applications', 'تطبيقات الهواتف', '2020-04-02 09:42:40', '2020-04-10 10:14:21'),
(192, 0, 'ar', 'titles', 'name', 'الأسم', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(193, 0, 'ar', 'titles', 'name_ar', 'الأسم : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(194, 0, 'ar', 'titles', 'name_en', 'الأسم : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(195, 0, 'ar', 'titles', 'new', 'جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(196, 0, 'ar', 'titles', 'new_jobs', 'وظائف جديدة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(197, 0, 'ar', 'titles', 'new_page', 'إنشاء صفحة جديدة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(198, 0, 'ar', 'titles', 'number_account', 'رقم الحساب', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(199, 0, 'ar', 'titles', 'offers', 'العروض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(200, 0, 'ar', 'titles', 'offers_count', 'عدد العروض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(201, 0, 'ar', 'titles', 'open', 'عرض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(202, 0, 'ar', 'titles', 'options_channels', 'قنوات التواصل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(203, 0, 'ar', 'titles', 'order_data', 'معلومات الطلب', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(204, 0, 'ar', 'titles', 'order_products', 'طلب منتجات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(205, 0, 'ar', 'titles', 'our_mission', 'رسالتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(206, 0, 'ar', 'titles', 'our_mission_ar', 'رسالتنا : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(207, 0, 'ar', 'titles', 'our_mission_en', 'رسالتنا : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(208, 0, 'ar', 'titles', 'our_products', 'متنجاتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(209, 0, 'ar', 'titles', 'our_strategy', 'استراتيجيتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(210, 0, 'ar', 'titles', 'our_strategy_ar', 'استراتيجيتنا : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(211, 0, 'ar', 'titles', 'our_strategy_en', 'استراتيجيتنا : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(212, 0, 'ar', 'titles', 'our_vision', 'رؤيتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(213, 0, 'ar', 'titles', 'our_vision_ar', 'رؤيتنا : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(214, 0, 'ar', 'titles', 'our_vision_en', 'رؤيتنا : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(215, 0, 'ar', 'titles', 'pages', 'الصفحات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(216, 0, 'ar', 'titles', 'part_name', 'إسم القطعه', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(217, 0, 'ar', 'titles', 'password', 'كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(218, 0, 'ar', 'titles', 'password_confirmation', 'تأكيد كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(219, 0, 'ar', 'titles', 'payment_methods', 'وسائل الدفع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(220, 0, 'ar', 'titles', 'permissionslist', 'قائمة الصلاحيات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(221, 0, 'ar', 'titles', 'phone', 'الهاتف/الجوال', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(222, 0, 'ar', 'titles', 'phone_numbers', 'أرقام الهواتف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(223, 0, 'ar', 'titles', 'phone_p', 'رقم الهاتف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(224, 0, 'ar', 'titles', 'price', 'السعر', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(225, 0, 'ar', 'titles', 'product', 'الأعلان', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(226, 0, 'ar', 'titles', 'production_year', 'سنة الصنع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(227, 0, 'ar', 'titles', 'products', 'المنتجات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(228, 0, 'ar', 'titles', 'profile', 'الملف الشخصي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(229, 0, 'ar', 'titles', 'qr_code', 'رمز الاستجابة السريعة /QR code', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(230, 0, 'ar', 'titles', 'qr_code_img', 'QR code', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(231, 0, 'ar', 'titles', 'quantity', 'الكمية المطلوبه', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(232, 0, 'ar', 'titles', 'questions_answers', 'أسئلة وأجوبة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(233, 0, 'ar', 'titles', 'recruitment', 'التوظيف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(234, 0, 'ar', 'titles', 'register', 'مستخدم جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(235, 0, 'ar', 'titles', 'remember_me', 'تذكرني', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(236, 0, 'ar', 'titles', 'reports', 'التقارير', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(237, 0, 'ar', 'titles', 'reset_password', 'تغير كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(238, 0, 'ar', 'titles', 'sales_policy', 'سياسة البيع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(239, 0, 'ar', 'titles', 'save', 'حفظ', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(240, 0, 'ar', 'titles', 'search', 'بحث', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(241, 0, 'ar', 'titles', 'search_as_you_like', 'أبحث عن ما تري', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(242, 0, 'ar', 'titles', 'second_step', 'الخطوة الثانية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(243, 0, 'ar', 'titles', 'select_image', 'إختار صورة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(244, 0, 'ar', 'titles', 'send_order', 'إرسال الطلب ', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(245, 0, 'ar', 'titles', 'send_password', 'إرسال كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(246, 0, 'ar', 'titles', 'service', 'الخدمة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(247, 0, 'ar', 'titles', 'service_policy', 'سياسة الخدمة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(248, 0, 'ar', 'titles', 'settings', 'الاعدادات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(249, 0, 'ar', 'titles', 'shipping_calculator', 'حاسبة الشحن', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(250, 0, 'ar', 'titles', 'short_disc_ar', 'وصف قصير عن الأعلان : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(251, 0, 'ar', 'titles', 'short_disc_en', 'وصف قصير عن الأعلان : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(252, 0, 'ar', 'titles', 'show_more', 'عرض المزيد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(253, 0, 'ar', 'titles', 'show_more_offers', 'مشاهدة المزيد من العروض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(254, 0, 'ar', 'titles', 'slide', 'شريحة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(255, 0, 'ar', 'titles', 'slideshow', 'عارض الشرائح', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(256, 0, 'ar', 'titles', 'social_media', 'مواقع التواصل الأجتماعي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(257, 0, 'ar', 'titles', 'status', 'الحالة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(258, 0, 'ar', 'titles', 'status_msg_ar', 'رسالة إغلاق الموقع : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(259, 0, 'ar', 'titles', 'status_msg_en', 'رسالة إغلاق الموقع : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(260, 0, 'ar', 'titles', 'submit', 'تقديم', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(261, 0, 'ar', 'titles', 'subscribe', 'إشترك', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(262, 0, 'ar', 'titles', 'subscribers', 'الأشتراكات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(263, 0, 'ar', 'titles', 'text_ar', 'النص : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(264, 0, 'ar', 'titles', 'text_en', 'النص : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(265, 0, 'ar', 'titles', 'third_step', 'الخطوة الثالثة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(266, 0, 'ar', 'titles', 'thumbnail', 'صورة عن الأعلان', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(267, 0, 'ar', 'titles', 'title', 'العنوان', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(268, 0, 'ar', 'titles', 'title_ar', 'العنوان : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(269, 0, 'ar', 'titles', 'title_en', 'العنوان : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(270, 0, 'ar', 'titles', 'transport_companies', 'شركات النقل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(271, 0, 'ar', 'titles', 'transport_company', 'شركة النقل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(272, 0, 'ar', 'titles', 'trc_applications_for_smart_phones', 'تطبيقات Trc للجوالات الذكيه', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(273, 0, 'ar', 'titles', 'type', 'النوع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(274, 0, 'ar', 'titles', 'upload', '... إرفع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(275, 0, 'ar', 'titles', 'urdu', 'الأردية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(276, 0, 'ar', 'titles', 'url', 'رابط', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(277, 0, 'ar', 'titles', 'url_website', 'رابط الموقع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(278, 0, 'ar', 'titles', 'username', 'إسم المستخدم', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(279, 0, 'ar', 'titles', 'username_page', 'إسم المستخدم/الصفحة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(280, 0, 'ar', 'titles', 'users', 'الأعضاء', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(281, 0, 'ar', 'titles', 'view', 'عرض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(282, 0, 'ar', 'titles', 'website', 'الموقع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(283, 0, 'ar', 'titles', 'website_name_ar', 'إسم الموقع : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(284, 0, 'ar', 'titles', 'website_name_en', 'إسم الموقع : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(285, 0, 'ar', 'titles', 'welcome', 'مرحبا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(286, 0, 'ar', 'titles', 'whatsapp_numbers', 'حسابات Whatsapp للدردشة ', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(287, 0, 'ar', 'titles', 'why_us', 'أسباب تجعلك تحبنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(288, 0, 'ar', 'titles', 'width', 'العرض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(289, 0, 'ar', 'titles', 'wishes_bag', 'حقيبة الأمنيات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(290, 0, 'ar', 'titles', 'year_from', 'سنة الصنع من', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(291, 0, 'ar', 'titles', 'year_to', 'سنة الصنع إلى', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(292, 0, 'ar', 'titles', 'you_can_browse_offers_by_type', 'يمكنك تصفح العروض حسب الماركة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(293, 0, 'ar', 'titles', 'your_comment', 'تعليقك :', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(294, 0, 'ar', 'titles', '404', '<strong>404</strong><br> هذه الصفحة غير موجوده!', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(295, 0, 'ar', 'titles', '503', 'سنوع قريباً.', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(296, 1, 'ar', 'validation', 'accepted', 'يجب قبول :attribute', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(297, 1, 'ar', 'validation', 'active_url', ':attribute لا يُمثّل رابطًا صحيحًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(298, 1, 'ar', 'validation', 'after', 'يجب على :attribute أن يكون تاريخًا لاحقًا للتاريخ :date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(299, 1, 'ar', 'validation', 'after_or_equal', ':attribute يجب أن يكون تاريخاً لاحقاً أو مطابقاً للتاريخ :date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(300, 1, 'ar', 'validation', 'alpha', 'يجب أن لا يحتوي :attribute سوى على حروف', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(301, 1, 'ar', 'validation', 'alpha_dash', 'يجب أن لا يحتوي :attribute على حروف، أرقام ومطّات.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(302, 1, 'ar', 'validation', 'alpha_num', 'يجب أن يحتوي :attribute على حروفٍ وأرقامٍ فقط', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(303, 1, 'ar', 'validation', 'array', 'يجب أن يكون :attribute ًمصفوفة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(304, 1, 'ar', 'validation', 'before', 'يجب على :attribute أن يكون تاريخًا سابقًا للتاريخ :date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(305, 1, 'ar', 'validation', 'before_or_equal', ':attribute يجب أن يكون تاريخا سابقا أو مطابقا للتاريخ :date', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(306, 1, 'ar', 'validation', 'between.numeric', 'يجب أن تكون قيمة :attribute بين :min و :max.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(307, 1, 'ar', 'validation', 'between.file', 'يجب أن يكون حجم الملف :attribute بين :min و :max كيلوبايت.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(308, 1, 'ar', 'validation', 'between.string', 'يجب أن يكون عدد حروف النّص :attribute بين :min و :max', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(309, 1, 'ar', 'validation', 'between.array', 'يجب أن يحتوي :attribute على عدد من العناصر بين :min و :max', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(310, 1, 'ar', 'validation', 'boolean', 'يجب أن تكون قيمة :attribute إما true أو false ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(311, 1, 'ar', 'validation', 'confirmed', 'حقل التأكيد غير مُطابق للحقل :attribute', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(312, 1, 'ar', 'validation', 'date', ':attribute ليس تاريخًا صحيحًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(313, 1, 'ar', 'validation', 'date_format', 'لا يتوافق :attribute مع الشكل :format.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(314, 1, 'ar', 'validation', 'different', 'يجب أن يكون الحقلان :attribute و :other مُختلفان', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(315, 1, 'ar', 'validation', 'digits', 'يجب أن يحتوي :attribute على :digits رقمًا/أرقام', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(316, 1, 'ar', 'validation', 'digits_between', 'يجب أن يحتوي :attribute بين :min و :max رقمًا/أرقام ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(317, 1, 'ar', 'validation', 'dimensions', 'الـ :attribute يحتوي على أبعاد صورة غير صالحة.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(318, 1, 'ar', 'validation', 'distinct', 'للحقل :attribute قيمة مُكرّرة.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(319, 1, 'ar', 'validation', 'email', 'يجب أن يكون :attribute عنوان بريد إلكتروني صحيح البُنية', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(320, 1, 'ar', 'validation', 'exists', ':attribute غير موجودٍ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(321, 1, 'ar', 'validation', 'file', 'الـ :attribute يجب أن يكون ملفا.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(322, 1, 'ar', 'validation', 'filled', ':attribute إجباري', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(323, 1, 'ar', 'validation', 'image', 'يجب أن يكون :attribute صورةً', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(324, 1, 'ar', 'validation', 'in', ':attribute لاغٍ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(325, 1, 'ar', 'validation', 'in_array', ':attribute غير موجود في :other.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(326, 1, 'ar', 'validation', 'integer', 'يجب أن يكون :attribute عددًا صحيحًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(327, 1, 'ar', 'validation', 'ip', 'يجب أن يكون :attribute عنوان IP صحيحًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(328, 1, 'ar', 'validation', 'ipv4', 'يجب أن يكون :attribute عنوان IPv4 صحيحًا.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(329, 1, 'ar', 'validation', 'ipv6', 'يجب أن يكون :attribute عنوان IPv6 صحيحًا.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(330, 1, 'ar', 'validation', 'json', 'يجب أن يكون :attribute نصآ من نوع JSON.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(331, 1, 'ar', 'validation', 'max.numeric', 'يجب أن تكون قيمة :attribute مساوية أو أصغر لـ :max.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(332, 1, 'ar', 'validation', 'max.file', 'يجب أن لا يتجاوز حجم الملف :attribute :max كيلوبايت', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(333, 1, 'ar', 'validation', 'max.string', 'يجب أن لا يتجاوز طول النّص :attribute :max حروفٍ/حرفًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(334, 1, 'ar', 'validation', 'max.array', 'يجب أن لا يحتوي :attribute على أكثر من :max عناصر/عنصر.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(335, 1, 'ar', 'validation', 'mimes', 'يجب أن يكون ملفًا من نوع : :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(336, 1, 'ar', 'validation', 'mimetypes', 'يجب أن يكون ملفًا من نوع : :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(337, 1, 'ar', 'validation', 'min.numeric', 'يجب أن تكون قيمة :attribute مساوية أو أكبر لـ :min.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(338, 1, 'ar', 'validation', 'min.file', 'يجب أن يكون حجم الملف :attribute على الأقل :min كيلوبايت', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(339, 1, 'ar', 'validation', 'min.string', 'يجب أن يكون طول النص :attribute على الأقل :min حروفٍ/حرفًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(340, 1, 'ar', 'validation', 'min.array', 'يجب أن يحتوي :attribute على الأقل على :min عُنصرًا/عناصر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(341, 1, 'ar', 'validation', 'not_in', ':attribute لاغٍ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(342, 1, 'ar', 'validation', 'numeric', 'يجب على :attribute أن يكون رقمًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(343, 1, 'ar', 'validation', 'present', 'يجب تقديم :attribute', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(344, 1, 'ar', 'validation', 'regex', 'صيغة :attribute .غير صحيحة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(345, 1, 'ar', 'validation', 'required', ':attribute مطلوب.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(346, 1, 'ar', 'validation', 'required_if', ':attribute مطلوب في حال ما إذا كان :other يساوي :value.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(347, 1, 'ar', 'validation', 'required_unless', ':attribute مطلوب في حال ما لم يكن :other يساوي :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(348, 1, 'ar', 'validation', 'required_with', ':attribute مطلوب إذا توفّر :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(349, 1, 'ar', 'validation', 'required_with_all', ':attribute مطلوب إذا توفّر :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(350, 1, 'ar', 'validation', 'required_without', ':attribute مطلوب إذا لم يتوفّر :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(351, 1, 'ar', 'validation', 'required_without_all', ':attribute مطلوب إذا لم يتوفّر :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(352, 1, 'ar', 'validation', 'same', 'يجب أن يتطابق :attribute مع :other', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(353, 1, 'ar', 'validation', 'size.numeric', 'يجب أن تكون قيمة :attribute مساوية لـ :size', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(354, 1, 'ar', 'validation', 'size.file', 'يجب أن يكون حجم الملف :attribute :size كيلوبايت', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(355, 1, 'ar', 'validation', 'size.string', 'يجب أن يحتوي النص :attribute على :size حروفٍ/حرفًا بالظبط', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(356, 1, 'ar', 'validation', 'size.array', 'يجب أن يحتوي :attribute على :size عنصرٍ/عناصر بالظبط', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(357, 1, 'ar', 'validation', 'string', 'يجب أن يكون :attribute نصآ.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(358, 1, 'ar', 'validation', 'timezone', 'يجب أن يكون :attribute نطاقًا زمنيًا صحيحًا', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(359, 1, 'ar', 'validation', 'unique', 'قيمة :attribute مُستخدمة من قبل', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(360, 1, 'ar', 'validation', 'uploaded', 'فشل في تحميل الـ :attribute', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(361, 1, 'ar', 'validation', 'url', 'صيغة الرابط :attribute غير صحيحة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(362, 1, 'ar', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(363, 1, 'ar', 'validation', 'custom.new_id.unique', 'هذا الطلب لم يعد متاح.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(364, 1, 'ar', 'validation', 'custom.maint_id.unique', 'هذا الطلب لم يعد متاح.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(365, 1, 'ar', 'validation', 'attributes.name', 'الاسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(366, 1, 'ar', 'validation', 'attributes.username', 'اسم المُستخدم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(367, 1, 'ar', 'validation', 'attributes.email', 'البريد الالكتروني', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(368, 1, 'ar', 'validation', 'attributes.first_name', 'الاسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(369, 1, 'ar', 'validation', 'attributes.last_name', 'اسم العائلة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(370, 1, 'ar', 'validation', 'attributes.password', 'كلمة السر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(371, 1, 'ar', 'validation', 'attributes.password_confirmation', 'تأكيد كلمة السر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(372, 1, 'ar', 'validation', 'attributes.city', 'المدينة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(373, 1, 'ar', 'validation', 'attributes.country', 'الدولة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(374, 1, 'ar', 'validation', 'attributes.address', 'العنوان', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(375, 1, 'ar', 'validation', 'attributes.phone', 'الهاتف', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(376, 1, 'ar', 'validation', 'attributes.mobile', 'الجوال', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(377, 1, 'ar', 'validation', 'attributes.age', 'العمر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(378, 1, 'ar', 'validation', 'attributes.sex', 'الجنس', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(379, 1, 'ar', 'validation', 'attributes.gender', 'النوع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(380, 1, 'ar', 'validation', 'attributes.day', 'اليوم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(381, 1, 'ar', 'validation', 'attributes.month', 'الشهر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(382, 1, 'ar', 'validation', 'attributes.year', 'السنة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(383, 1, 'ar', 'validation', 'attributes.hour', 'ساعة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(384, 1, 'ar', 'validation', 'attributes.minute', 'دقيقة', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(385, 1, 'ar', 'validation', 'attributes.second', 'ثانية', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(386, 1, 'ar', 'validation', 'attributes.title', 'اللقب', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(387, 1, 'ar', 'validation', 'attributes.content', 'المُحتوى', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(388, 1, 'ar', 'validation', 'attributes.description', 'الوصف', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(389, 1, 'ar', 'validation', 'attributes.excerpt', 'المُلخص', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(390, 1, 'ar', 'validation', 'attributes.date', 'التاريخ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(391, 1, 'ar', 'validation', 'attributes.time', 'الوقت', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(392, 1, 'ar', 'validation', 'attributes.available', 'مُتاح', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(393, 1, 'ar', 'validation', 'attributes.size', 'الحجم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(394, 1, 'ar', 'validation', 'attributes.payment_type', 'طرق الدفع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(395, 1, 'ar', 'validation', 'attributes.category_description', 'وصف القسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(396, 1, 'ar', 'validation', 'attributes.category_name', 'اسم القسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(397, 1, 'ar', 'validation', 'attributes.category_icon', 'الايكونه', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(398, 1, 'ar', 'validation', 'attributes.image', 'صورة ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(399, 1, 'ar', 'validation', 'attributes.new_category_description', 'وصف القسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(400, 1, 'ar', 'validation', 'attributes.new_category_name', 'اسم القسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(401, 1, 'ar', 'validation', 'attributes.new_category_icon', 'الايكونه', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(402, 1, 'ar', 'validation', 'attributes.new_category_image', 'صورة القسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(403, 1, 'ar', 'validation', 'attributes.about_tribe', 'عن القبيله', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(404, 1, 'ar', 'validation', 'attributes.about_supervisor', 'سيرته الذاتيه', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(405, 1, 'ar', 'validation', 'attributes.supervisor_achievements', 'انجازاته', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(406, 1, 'ar', 'validation', 'attributes.aqsan_history', 'تاريخ القبيله', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(407, 1, 'ar', 'validation', 'attributes.aqsan_pens', 'اقلام القبيله', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(408, 1, 'ar', 'validation', 'attributes.about', 'نبذه عن المدير ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(409, 1, 'ar', 'validation', 'attributes.photo', 'الصوره', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(410, 1, 'ar', 'validation', 'attributes.edit_name', 'الاسم', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(411, 1, 'ar', 'validation', 'attributes.edit_phone', 'لاهاتف', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(412, 1, 'ar', 'validation', 'attributes.edit_about', 'نبذه عن المدير', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(413, 1, 'ar', 'validation', 'attributes.edit_photo', 'الصوره', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(414, 1, 'ar', 'validation', 'attributes.poem_writer', 'اسم الشاعر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(415, 1, 'ar', 'validation', 'attributes.poem_name', 'اسم القصيده', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(416, 1, 'ar', 'validation', 'attributes.counter', 'عدد الابيات', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(417, 1, 'ar', 'validation', 'attributes.edit_poem_writer', 'اسم الشاعر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(418, 1, 'ar', 'validation', 'attributes.edit_poem_name', 'اسم القصيده', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(419, 1, 'ar', 'validation', 'attributes.edit_counter', 'عدد الابيات', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(420, 1, 'ar', 'validation', 'attributes.edit_content', 'المحتوى', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(421, 1, 'ar', 'validation', 'attributes.edit_shelat_writer', 'اسم الشاعر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(422, 1, 'ar', 'validation', 'attributes.edit_shelat_name', 'اسم الشيله', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(423, 1, 'ar', 'validation', 'attributes.shelat_writer', 'اسم الشاعر', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(424, 1, 'ar', 'validation', 'attributes.shelat_name', 'اسم الشيله', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(425, 1, 'ar', 'validation', 'attributes.symbole_name', 'اسم الرمز', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(426, 1, 'ar', 'validation', 'attributes.intro_image', 'صورة المقدمه', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(427, 1, 'ar', 'validation', 'attributes.site_name', 'اسم الموقع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(428, 1, 'ar', 'validation', 'attributes.site_link', 'لينك الموقع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(429, 1, 'ar', 'validation', 'attributes.edit_site_name', 'اسم الموقع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(430, 1, 'ar', 'validation', 'attributes.edit_site_link', 'لينك الموقع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(431, 1, 'ar', 'validation', 'attributes.add_logo', 'لوجو الموقع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(432, 1, 'ar', 'validation', 'attributes.edit_logo', 'لوجو الموقع', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(433, 1, 'ar', 'validation', 'attributes.sms_message', 'نص الرساله', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(434, 1, 'ar', 'validation', 'attributes.email_message', 'نص الرساله', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(435, 1, 'ar', 'validation', 'attributes.avatar', 'الصوره', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(436, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(437, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(438, 1, 'en', 'messages', 'verify_title', 'Verify Your Email Address', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(439, 1, 'en', 'messages', 'verify_message', 'Thanks for creating an account with the verification demo app.\n    Please follow the link below to verify your email address', '2020-04-02 09:42:41', '2020-04-02 09:42:41');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(440, 1, 'en', 'messages', 'verify_sent', 'Thanks for signing up! Please check your email.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(441, 1, 'en', 'messages', 'verify_successfully', 'You have successfully verified your account.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(442, 1, 'en', 'messages', 'error_login', 'Wrong email or password.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(443, 1, 'en', 'messages', 'created', 'تم الأنشاء بنجاح!', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(444, 1, 'en', 'messages', 'deleted', 'تم الحذف بنجاح!', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(445, 1, 'en', 'messages', 'image_warning', 'حجم الصورة يجب ان يكون 80 × 80', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(446, 1, 'en', 'messages', 'delete', 'هل أنت متأكد أنك تريد الحذف.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(447, 1, 'en', 'messages', 'thumbnail_320', 'يفضل أن يكون قياس الصورة 320 * 220', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(448, 1, 'en', 'messages', 'no_result_ms', 'أسف لم يتم العثور عن بحثك.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(449, 1, 'en', 'messages', 'result_ms_1', 'يمكن البحث مره أخري من خلال صندوق البحث اسفل هذه الرسالة.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(450, 1, 'en', 'messages', 'result_ms_2', '- او يمكن تصفح أخر العروض من خلال الضغط علي هذا الزر.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(451, 1, 'en', 'messages', 'result_ms', 'نتائج البحث : <i class=\"fa fa-smile-o\" aria-hidden=\"true\"></i>', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(452, 1, 'en', 'messages', 'you_must_login_first_to_add_comment', 'يجب عليك تسجيل الدخول أولأ لإضافة تعليق', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(453, 1, 'en', 'messages', 'success_comment', 'تم إضافة التعليق بنجاح شكراً لك.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(454, 1, 'en', 'messages', 'payment_methods_desc', 'أضف جميع الطرق لاستلام ودفع الأموال.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(455, 1, 'en', 'messages', 'our_products_desc', 'أضف نص قصير تصف فيه منتجاتك.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(456, 1, 'en', 'messages', 'empty_input', 'الحقل فارغ.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(457, 1, 'en', 'messages', 'error_input', 'من فضلك املأ الحقل المطلوب.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(458, 1, 'en', 'messages', 'error_inputs', 'من فضلك املأ الحقول المطلوبة.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(459, 1, 'en', 'messages', 'empty_page', 'لا يوجد محتوي في هذه الصفحة حالياً!', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(460, 1, 'en', 'messages', 'success_subscribe', 'تم الأشتراك بنجاح شكراً لك. <i class=\"fa fa-smile-o\"></i>', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(461, 1, 'en', 'messages', 'order_opations', 'أ ارغب بارسال عرض السعر عبر قنوات التواصل التالية :-', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(462, 1, 'en', 'messages', 'success_order', 'تم إرسال طلبك بنجاح شكراً لك. <i class=\"fa fa-smile-o\"></i>', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(463, 1, 'en', 'messages', 'dwonload_apps', 'تحميل التطبيقات علي هاتفك', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(464, 1, 'en', 'messages', 'complaint_sent', 'تم إرسال الشكوى أو الاقتراح بنجاح شكرا لك <i class=\"fa fa-smile-o\"></i>', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(465, 1, 'en', 'messages', 'old_password', 'Terris toto homo sponte tellus', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(466, 1, 'en', 'messages', 'something_wrong', 'Reparabat sanctius tum. Natura quisque totidem ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(467, 1, 'en', 'messages', 'refused_order', ' quisque totidem nec conversa ignotas.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(468, 1, 'en', 'messages', 'accepted_order', 'Reparabat sanctius tum nec od? S ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(469, 1, 'en', 'messages', 'new_order', ' totidem nec conversa ignotas spisso quod? Subdita minantia. ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(470, 1, 'en', 'messages', 'process_1', ' nec conversa ign ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(471, 1, 'en', 'messages', 'process_2', 'Reparabat sanctius tum nec od? S ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(472, 1, 'en', 'messages', 'process_3', 'Reparabat sanctius tum. Natura quisque totidem ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(473, 1, 'en', 'messages', 'process_4', 'Terris toto homo sponte tellus ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(474, 1, 'en', 'messages', 'process_5', 'nec conversa ign ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(475, 1, 'en', 'messages', 'process_6', 'totidem nec conversa ignotas spisso quod? Subdita minantia. ', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(476, 1, 'en', 'messages', 'new_auction_offer_maint', 'لديك عرض جديد للصيانة من', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(477, 1, 'en', 'messagesFCM', 'provider_refused_order', 'قام مقدم الخدمة برفض طلبك الخاص بك', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(478, 1, 'en', 'messagesFCM', 'user_refused_order', 'قام طالب الخدمة برفض الطلب', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(479, 1, 'en', 'messagesFCM', 'accepted_order', 'قام مقدم خدمة بقبول طلبك الخاص بك', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(480, 1, 'en', 'messagesFCM', 'new_order', 'هناك طلب جديد مناسب لخدمتك', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(481, 1, 'en', 'messagesFCM', 'process', 'قام مقدم الخدمة بتحديث حالة الطلب', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(482, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(483, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(484, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(485, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(486, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(487, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(488, 0, 'en', 'titles', 'about_us', 'من نحن', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(489, 0, 'en', 'titles', 'about_us_ar', 'وصف عن الشركة : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(490, 0, 'en', 'titles', 'about_us_en', 'وصف عن الشركة : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(491, 0, 'en', 'titles', 'add', 'Add', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(492, 0, 'en', 'titles', 'add_jobs', 'إضافة وظائف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(493, 0, 'en', 'titles', 'add_new', 'إضافة جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(494, 0, 'en', 'titles', 'add_product', 'إعلان جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(495, 0, 'en', 'titles', 'add_your_comment', 'أضف تعليقك :', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(496, 0, 'en', 'titles', 'address', 'العنوان', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(497, 0, 'en', 'titles', 'admin_Panel', 'لوحة التحكم', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(498, 0, 'en', 'titles', 'all', 'الكل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(499, 0, 'en', 'titles', 'android', 'أندرويد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(500, 0, 'en', 'titles', 'arabic', 'عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(501, 0, 'en', 'titles', 'arabic_whatsapp', 'واتساب عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(502, 0, 'en', 'titles', 'ask_for_help', 'طلب المساعدة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(503, 0, 'en', 'titles', 'aspects', 'الجوانب', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(504, 0, 'en', 'titles', 'back', 'الرجوع إلي الخلف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(505, 0, 'en', 'titles', 'back_to_home_page', 'الرجوع إلي الصفحة الرئيسية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(506, 0, 'en', 'titles', 'background', 'الخلفية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(507, 0, 'en', 'titles', 'base', 'القاعدة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(508, 0, 'en', 'titles', 'by_email', 'By Email', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(509, 0, 'en', 'titles', 'by_fax', 'By Fax', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(510, 0, 'en', 'titles', 'by_whatsapp', 'By Whatsapp', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(511, 0, 'en', 'titles', 'car', 'السيارة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(512, 0, 'en', 'titles', 'cars', 'سيارات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(513, 0, 'en', 'titles', 'channels_communication', 'قنوات التواصل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(514, 0, 'en', 'titles', 'chnage_password', 'تغير كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(515, 0, 'en', 'titles', 'city', 'المدينة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(516, 0, 'en', 'titles', 'close', 'Close', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(517, 0, 'en', 'titles', 'closed', 'مغلق', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(518, 0, 'en', 'titles', 'color', 'لون القماش', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(519, 0, 'en', 'titles', 'color_printing', 'عدد الوان الطباعه', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(520, 0, 'en', 'titles', 'comment', 'التعليق', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(521, 0, 'en', 'titles', 'comments', 'التعليقات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(522, 0, 'en', 'titles', 'companies', 'الشركات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(523, 0, 'en', 'titles', 'company', 'الشركة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(524, 0, 'en', 'titles', 'company_name', 'إسم الشركة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(525, 0, 'en', 'titles', 'conditions', 'الشروط', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(526, 0, 'en', 'titles', 'contact_settings', 'إعدادات التواصل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(527, 0, 'en', 'titles', 'content_ar', 'وصف كامل عن الأعلان : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(528, 0, 'en', 'titles', 'content_en', 'وصف كامل عن الأعلان : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(529, 0, 'en', 'titles', 'control', 'تحكم', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(530, 0, 'en', 'titles', 'copyright_developer', 'تصميم وتنفيذ<a href=\"#\">أوامر الشبكة</a>', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(531, 0, 'en', 'titles', 'copyright_website', 'جميع الحقوق محفوطة لقطع غيار سيارتي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(532, 0, 'en', 'titles', 'create', 'إنشاء', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(533, 0, 'en', 'titles', 'create_new_product', 'إنشاء إعلان جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(534, 0, 'en', 'titles', 'create_new_user', 'إنشاء مستخدم جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(535, 0, 'en', 'titles', 'created_at', 'Created at', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(536, 0, 'en', 'titles', 'customer_data', 'بيانات العميل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(537, 0, 'en', 'titles', 'delete', 'Delete', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(538, 0, 'en', 'titles', 'description_ar', 'وصف قصير : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(539, 0, 'en', 'titles', 'description_en', 'وصف قصير : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(540, 0, 'en', 'titles', 'design_your_product', 'صمم منتجك', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(541, 0, 'en', 'titles', 'disabled', 'معطل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(542, 0, 'en', 'titles', 'distribution', 'التوزيع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(543, 0, 'en', 'titles', 'download_image', 'تحميل صورة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(544, 0, 'en', 'titles', 'edit', 'Edit', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(545, 0, 'en', 'titles', 'edit_profile', 'تعديل بيناتي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(546, 0, 'en', 'titles', 'email', 'Email', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(547, 0, 'en', 'titles', 'enabled', 'مفعل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(548, 0, 'en', 'titles', 'english', 'إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(549, 0, 'en', 'titles', 'english_whatsapp', 'واتساب إنجليزي ', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(550, 0, 'en', 'titles', 'error', 'خطأ!!', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(551, 0, 'en', 'titles', 'first_name', 'الأسم الأول', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(552, 0, 'en', 'titles', 'forgot_your_password', 'نسيت رقمك السري؟', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(553, 0, 'en', 'titles', 'grab_hand', 'ماسك اليد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(554, 0, 'en', 'titles', 'grab_hand_1', 'هاندل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(555, 0, 'en', 'titles', 'grab_hand_2', 'محفور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(556, 0, 'en', 'titles', 'grab_hand_3', 'حبل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(557, 0, 'en', 'titles', 'grab_hand_4', 'لصق شكشك', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(558, 0, 'en', 'titles', 'grab_hand_5', 'سحاب', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(559, 0, 'en', 'titles', 'grab_hand_6', 'تي شيرت', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(560, 0, 'en', 'titles', 'heights', 'الطول', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(561, 0, 'en', 'titles', 'home', 'Home', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(562, 0, 'en', 'titles', 'informations_about_us', 'معلومات عنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(563, 0, 'en', 'titles', 'international_companies', 'ماركات عالمية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(564, 0, 'en', 'titles', 'iphone', 'أيفون', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(565, 0, 'en', 'titles', 'job', 'الوظيفة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(566, 0, 'en', 'titles', 'job_id', 'الدور الوظيفي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(567, 0, 'en', 'titles', 'job_name_ar', 'إسم الوظيفة بالعربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(568, 0, 'en', 'titles', 'job_name_en', 'إسم الوظيفة بالأنجليزية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(569, 0, 'en', 'titles', 'jobs', 'وظائف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(570, 0, 'en', 'titles', 'last_name', 'إسم العائلة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(571, 0, 'en', 'titles', 'list_offers', 'أحدث العروض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(572, 0, 'en', 'titles', 'loading', 'تحميل...', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(573, 0, 'en', 'titles', 'login', 'Login', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(574, 0, 'en', 'titles', 'login_btn', 'دخول', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(575, 0, 'en', 'titles', 'logo', 'Logo', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(576, 0, 'en', 'titles', 'logout', 'Logout', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(577, 0, 'en', 'titles', 'menu', 'القائمة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(578, 0, 'en', 'titles', 'meta_ar', 'كلمات دلالية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(579, 0, 'en', 'titles', 'meta_en', 'الكلمات المفتاحية : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(580, 0, 'en', 'titles', 'mobile_applications', 'تطبيقات الهواتف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(581, 0, 'en', 'titles', 'name', 'Name', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(582, 0, 'en', 'titles', 'name_ar', 'الأسم : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(583, 0, 'en', 'titles', 'name_en', 'الأسم : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(584, 0, 'en', 'titles', 'new', 'جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(585, 0, 'en', 'titles', 'new_jobs', 'وظائف جديدة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(586, 0, 'en', 'titles', 'new_page', 'إنشاء صفحة جديدة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(587, 0, 'en', 'titles', 'number_account', 'رقم الحساب', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(588, 0, 'en', 'titles', 'offers', 'العروض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(589, 0, 'en', 'titles', 'offers_count', 'عدد العروض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(590, 0, 'en', 'titles', 'open', 'عرض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(591, 0, 'en', 'titles', 'options_channels', 'قنوات التواصل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(592, 0, 'en', 'titles', 'order_data', 'معلومات الطلب', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(593, 0, 'en', 'titles', 'order_products', 'طلب منتجات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(594, 0, 'en', 'titles', 'our_mission', 'رسالتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(595, 0, 'en', 'titles', 'our_mission_ar', 'رسالتنا : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(596, 0, 'en', 'titles', 'our_mission_en', 'رسالتنا : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(597, 0, 'en', 'titles', 'our_products', 'متنجاتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(598, 0, 'en', 'titles', 'our_strategy', 'استراتيجيتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(599, 0, 'en', 'titles', 'our_strategy_ar', 'استراتيجيتنا : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(600, 0, 'en', 'titles', 'our_strategy_en', 'استراتيجيتنا : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(601, 0, 'en', 'titles', 'our_vision', 'رؤيتنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(602, 0, 'en', 'titles', 'our_vision_ar', 'رؤيتنا : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(603, 0, 'en', 'titles', 'our_vision_en', 'رؤيتنا : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(604, 0, 'en', 'titles', 'pages', 'الصفحات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(605, 0, 'en', 'titles', 'part_name', 'إسم القطعه', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(606, 0, 'en', 'titles', 'password', 'Password', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(607, 0, 'en', 'titles', 'password_confirmation', 'تأكيد كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(608, 0, 'en', 'titles', 'payment_methods', 'وسائل الدفع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(609, 0, 'en', 'titles', 'phone', 'Phone', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(610, 0, 'en', 'titles', 'phone_numbers', 'أرقام الهواتف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(611, 0, 'en', 'titles', 'phone_p', 'رقم الهاتف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(612, 0, 'en', 'titles', 'price', 'السعر', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(613, 0, 'en', 'titles', 'product', 'الأعلان', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(614, 0, 'en', 'titles', 'production_year', 'سنة الصنع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(615, 0, 'en', 'titles', 'products', 'المنتجات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(616, 0, 'en', 'titles', 'profile', 'الملف الشخصي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(617, 0, 'en', 'titles', 'qr_code', 'رمز الاستجابة السريعة /QR code', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(618, 0, 'en', 'titles', 'qr_code_img', 'QR code', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(619, 0, 'en', 'titles', 'quantity', 'الكمية المطلوبه', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(620, 0, 'en', 'titles', 'questions_answers', 'أسئلة وأجوبة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(621, 0, 'en', 'titles', 'recruitment', 'التوظيف', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(622, 0, 'en', 'titles', 'register', 'مستخدم جديد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(623, 0, 'en', 'titles', 'remember_me', 'Remember Me', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(624, 0, 'en', 'titles', 'reset_password', 'تغير كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(625, 0, 'en', 'titles', 'sales_policy', 'سياسة البيع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(626, 0, 'en', 'titles', 'save', 'Save', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(627, 0, 'en', 'titles', 'search', 'بحث', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(628, 0, 'en', 'titles', 'search_as_you_like', 'أبحث عن ما تري', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(629, 0, 'en', 'titles', 'second_step', 'الخطوة الثانية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(630, 0, 'en', 'titles', 'select_image', 'إختار صورة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(631, 0, 'en', 'titles', 'send_order', 'إرسال الطلب ', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(632, 0, 'en', 'titles', 'send_password', 'إرسال كلمة المرور', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(633, 0, 'en', 'titles', 'service', 'الخدمة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(634, 0, 'en', 'titles', 'service_policy', 'سياسة الخدمة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(635, 0, 'en', 'titles', 'settings', 'Settings', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(636, 0, 'en', 'titles', 'shipping_calculator', 'حاسبة الشحن', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(637, 0, 'en', 'titles', 'short_disc_ar', 'وصف قصير عن الأعلان : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(638, 0, 'en', 'titles', 'short_disc_en', 'وصف قصير عن الأعلان : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(639, 0, 'en', 'titles', 'show_more', 'عرض المزيد', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(640, 0, 'en', 'titles', 'show_more_offers', 'مشاهدة المزيد من العروض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(641, 0, 'en', 'titles', 'slide', 'شريحة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(642, 0, 'en', 'titles', 'slideshow', 'عارض الشرائح', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(643, 0, 'en', 'titles', 'social_media', 'Social Media', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(644, 0, 'en', 'titles', 'status', 'Status', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(645, 0, 'en', 'titles', 'status_msg_ar', 'رسالة إغلاق الموقع : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(646, 0, 'en', 'titles', 'status_msg_en', 'رسالة إغلاق الموقع : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(647, 0, 'en', 'titles', 'submit', 'تقديم', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(648, 0, 'en', 'titles', 'subscribe', 'إشترك', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(649, 0, 'en', 'titles', 'subscribers', 'الأشتراكات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(650, 0, 'en', 'titles', 'text_ar', 'النص : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(651, 0, 'en', 'titles', 'text_en', 'النص : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(652, 0, 'en', 'titles', 'third_step', 'الخطوة الثالثة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(653, 0, 'en', 'titles', 'thumbnail', 'صورة عن الأعلان', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(654, 0, 'en', 'titles', 'title', 'العنوان', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(655, 0, 'en', 'titles', 'title_ar', 'العنوان : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(656, 0, 'en', 'titles', 'title_en', 'العنوان : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(657, 0, 'en', 'titles', 'transport_companies', 'شركات النقل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(658, 0, 'en', 'titles', 'transport_company', 'شركة النقل', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(659, 0, 'en', 'titles', 'trc_applications_for_smart_phones', 'تطبيقات Trc للجوالات الذكيه', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(660, 0, 'en', 'titles', 'type', 'Type', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(661, 0, 'en', 'titles', 'upload', '... إرفع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(662, 0, 'en', 'titles', 'urdu', 'الأردية', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(663, 0, 'en', 'titles', 'url', 'رابط', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(664, 0, 'en', 'titles', 'url_website', 'رابط الموقع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(665, 0, 'en', 'titles', 'username', 'Username', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(666, 0, 'en', 'titles', 'username_page', 'إسم المستخدم/الصفحة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(667, 0, 'en', 'titles', 'view', 'عرض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(668, 0, 'en', 'titles', 'website', 'الموقع', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(669, 0, 'en', 'titles', 'website_name_ar', 'إسم الموقع : عربي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(670, 0, 'en', 'titles', 'website_name_en', 'إسم الموقع : إنجليزي', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(671, 0, 'en', 'titles', 'welcome', 'مرحبا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(672, 0, 'en', 'titles', 'whatsapp_numbers', 'حسابات Whatsapp للدردشة ', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(673, 0, 'en', 'titles', 'why_us', 'أسباب تجعلك تحبنا', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(674, 0, 'en', 'titles', 'width', 'العرض', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(675, 0, 'en', 'titles', 'wishes_bag', 'حقيبة الأمنيات', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(676, 0, 'en', 'titles', 'year_from', 'سنة الصنع من', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(677, 0, 'en', 'titles', 'year_to', 'سنة الصنع إلى', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(678, 0, 'en', 'titles', 'you_can_browse_offers_by_type', 'يمكنك تصفح العروض حسب الماركة', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(679, 0, 'en', 'titles', 'your_comment', 'تعليقك :', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(680, 0, 'en', 'titles', '404', '<strong>404</strong><br> هذه الصفحة غير موجوده!', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(681, 0, 'en', 'titles', '503', 'سنوع قريباً.', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(682, 0, 'en', 'titles', 'permissionslist', 'Administration', '2020-04-02 09:42:41', '2020-04-10 10:14:21'),
(683, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(684, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(685, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(686, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(687, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(688, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(689, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(690, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(691, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(692, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(693, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(694, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(695, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(696, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(697, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(698, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(699, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(700, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(701, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(702, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(703, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(704, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(705, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(706, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(707, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(708, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(709, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(710, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(711, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(712, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(713, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(714, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(715, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(716, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(717, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(718, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(719, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(720, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(721, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(722, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(723, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2020-04-02 09:42:41', '2020-04-02 09:42:41'),
(724, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(725, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(726, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(727, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(728, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(729, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(730, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(731, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(732, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(733, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(734, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(735, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(736, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(737, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(738, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(739, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(740, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(741, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(742, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(743, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(744, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(745, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(746, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(747, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(748, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(749, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(799, 1, 'en', 'vendor/translation', 'language_exists', 'The language { :language } already exists', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(800, 1, 'en', 'vendor/translation', 'key_exists', 'The translation key { :key } already exists', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(801, 1, 'en', 'vendor/translation', 'languages', 'Languages', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(802, 1, 'en', 'vendor/translation', 'language', 'Language', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(803, 1, 'en', 'vendor/translation', 'type', 'Type', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(804, 1, 'en', 'vendor/translation', 'file', 'File', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(805, 1, 'en', 'vendor/translation', 'key', 'Key', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(806, 1, 'en', 'vendor/translation', 'prompt_language', 'Enter the language code you would like to add (e.g. en)', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(807, 1, 'en', 'vendor/translation', 'language_added', 'New language added successfully 🙌', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(808, 1, 'en', 'vendor/translation', 'prompt_language_for_key', 'Enter the language for the key (e.g. en)', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(809, 1, 'en', 'vendor/translation', 'prompt_type', 'Is this a json or array key?', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(810, 1, 'en', 'vendor/translation', 'prompt_file', 'Which file will this be stored in?', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(811, 1, 'en', 'vendor/translation', 'prompt_key', 'What is the key for this translation?', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(812, 1, 'en', 'vendor/translation', 'prompt_value', 'What is the value for this translation', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(813, 1, 'en', 'vendor/translation', 'type_error', 'Translation type must be json or array', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(814, 1, 'en', 'vendor/translation', 'language_key_added', 'New language key added successfully 👏', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(815, 1, 'en', 'vendor/translation', 'no_missing_keys', 'There are no missing translation keys in the app 🎉', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(816, 1, 'en', 'vendor/translation', 'keys_synced', 'Missing keys synchronised successfully 🎊', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(817, 1, 'en', 'vendor/translation', 'search', 'Search all translations', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(818, 1, 'en', 'vendor/translation', 'translations', 'Translation', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(819, 1, 'en', 'vendor/translation', 'language_name', 'Name', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(820, 1, 'en', 'vendor/translation', 'locale', 'Locale', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(821, 1, 'en', 'vendor/translation', 'add', '+ Add', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(822, 1, 'en', 'vendor/translation', 'add_language', 'Add a new language', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(823, 1, 'en', 'vendor/translation', 'save', 'Save', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(824, 1, 'en', 'vendor/translation', 'uh_oh', 'Something\'s not quite right', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(825, 1, 'en', 'vendor/translation', 'group_single', 'Group / Single', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(826, 1, 'en', 'vendor/translation', 'group', 'Group', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(827, 1, 'en', 'vendor/translation', 'single', 'Single', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(828, 1, 'en', 'vendor/translation', 'value', 'Value', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(829, 1, 'en', 'vendor/translation', 'namespace', 'Namespace', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(830, 1, 'en', 'vendor/translation', 'prompt_from_driver', 'Which driver would you like to take translations from?', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(831, 1, 'en', 'vendor/translation', 'prompt_to_driver', 'Which driver would you like to add the translations to?', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(832, 1, 'en', 'vendor/translation', 'prompt_language_if_any', 'Which language? (leave blank for all)', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(833, 1, 'en', 'vendor/translation', 'syncing', 'Syncing translations ⏳', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(834, 1, 'en', 'vendor/translation', 'synced', 'Translations have been synced 😎', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(835, 1, 'en', 'vendor/translation', 'invalid_driver', 'Invalid driver', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(836, 1, 'en', 'vendor/translation', 'invalid_language', 'Invalid language', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(837, 1, 'en', 'vendor/translation', 'add_translation', 'Add a translation', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(838, 1, 'en', 'vendor/translation', 'translation_added', 'New translation added successfull 🙌', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(839, 1, 'en', 'vendor/translation', 'namespace_label', 'Namespace (Optional)', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(840, 1, 'en', 'vendor/translation', 'group_label', 'Group (Optional)', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(841, 1, 'en', 'vendor/translation', 'key_label', 'Key', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(842, 1, 'en', 'vendor/translation', 'value_label', 'Value', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(843, 1, 'en', 'vendor/translation', 'namespace_placeholder', 'e.g. my_package', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(844, 1, 'en', 'vendor/translation', 'group_placeholder', 'e.g. validation', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(845, 1, 'en', 'vendor/translation', 'key_placeholder', 'e.g. invalid_key', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(846, 1, 'en', 'vendor/translation', 'value_placeholder', 'e.g. Keys must be a single string', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(847, 1, 'en', 'vendor/translation', 'advanced_options', 'Toggle advanced options', '2020-04-02 09:42:42', '2020-04-02 09:42:42'),
(946, 0, 'en', 'titles', 'moneyaccountspage', 'Financial transaction', '2020-04-02 09:46:29', '2020-04-10 10:14:21'),
(947, 0, 'ar', 'titles', 'moneyaccountspage', 'moneyaccountspage', '2020-04-02 09:46:52', '2020-04-10 10:14:21'),
(948, 0, 'en', 'titles', 'messagesList', 'Messages menu', '2020-04-03 09:24:35', '2020-04-10 10:14:21'),
(949, 0, 'ar', 'titles', 'messagesList', 'قائمة الرسائل', '2020-04-03 09:25:05', '2020-04-10 10:14:21'),
(950, 0, 'en', 'titles', 'message', 'Message', '2020-04-03 09:30:08', '2020-04-10 10:14:21'),
(951, 0, 'ar', 'titles', 'message', 'الرساله', '2020-04-03 09:30:24', '2020-04-10 10:14:21'),
(952, 0, 'en', 'titles', 'date', 'Date', '2020-04-03 09:30:50', '2020-04-10 10:14:21'),
(954, 0, 'ar', 'titles', 'date', 'التاريخ', '2020-04-03 09:31:31', '2020-04-10 10:14:21'),
(956, 0, 'en', 'titles', 'options', 'Options', '2020-04-03 09:32:37', '2020-04-10 10:14:21'),
(957, 0, 'ar', 'titles', 'options', 'التحكم', '2020-04-03 09:32:48', '2020-04-10 10:14:21'),
(958, 0, 'en', 'titles', 'pleaseWait', 'Please Wait...', '2020-04-03 09:49:49', '2020-04-10 10:14:21'),
(959, 0, 'ar', 'titles', 'pleaseWait', '...انتظر من فضلك', '2020-04-03 09:50:13', '2020-04-10 10:14:21'),
(960, 0, 'en', 'titles', 'userMenu', 'User menu', '2020-04-03 10:08:43', '2020-04-10 10:14:21'),
(961, 0, 'ar', 'titles', 'userMenu', 'قائمة الاعضاء', '2020-04-03 10:09:24', '2020-04-10 10:14:21'),
(962, 0, 'en', 'titles', 'addNewUser', 'Add User', '2020-04-04 08:30:42', '2020-04-10 10:14:21'),
(963, 0, 'ar', 'titles', 'addNewUser', 'اضافة عضو', '2020-04-04 08:30:50', '2020-04-10 10:14:21'),
(964, 0, 'en', 'titles', 'usersCount', 'Users Count', '2020-04-04 08:38:13', '2020-04-10 10:14:21'),
(965, 0, 'ar', 'titles', 'usersCount', 'عدد الاعضاء', '2020-04-04 08:38:23', '2020-04-10 10:14:21'),
(967, 0, 'en', 'titles', 'email_the_members', 'Email the members', '2020-04-04 08:40:43', '2020-04-10 10:14:21'),
(968, 0, 'ar', 'titles', 'email_the_members', 'مراسلة الاعضاء', '2020-04-04 08:41:01', '2020-04-10 10:14:21'),
(969, 0, 'en', 'titles', 'picture', 'Picture', '2020-04-04 08:45:41', '2020-04-10 10:14:21'),
(970, 0, 'en', 'titles', 'role', 'Role', '2020-04-04 08:45:41', '2020-04-10 10:14:21'),
(971, 0, 'en', 'titles', 'debt', 'Debt', '2020-04-04 08:55:55', '2020-04-10 10:14:21'),
(972, 0, 'ar', 'titles', 'debt', 'المديونيه', '2020-04-04 08:56:21', '2020-04-10 10:14:21'),
(973, 0, 'ar', 'titles', 'picture', 'صوره', '2020-04-04 08:56:58', '2020-04-10 10:14:21'),
(974, 0, 'ar', 'titles', 'role', 'الصلاحيه', '2020-04-04 08:57:37', '2020-04-10 10:14:21'),
(975, 0, 'en', 'titles', 'user', 'User', '2020-04-04 09:05:22', '2020-04-10 10:14:21'),
(976, 0, 'ar', 'titles', 'user', 'مستخدم', '2020-04-04 09:05:41', '2020-04-10 10:14:21'),
(977, 0, 'en', 'titles', 'block', 'Block', '2020-04-04 09:16:16', '2020-04-10 10:14:21'),
(978, 0, 'en', 'titles', 'active', 'Active', '2020-04-04 09:16:16', '2020-04-10 10:14:21'),
(979, 0, 'en', 'titles', 'contact', 'Contact', '2020-04-04 09:16:16', '2020-04-10 10:14:21'),
(980, 0, 'en', 'titles', 'choose_picture', 'Choose Picture', '2020-04-04 09:16:16', '2020-04-10 10:14:21'),
(981, 0, 'ar', 'titles', 'active', 'نشط', '2020-04-04 09:16:31', '2020-04-10 10:14:21'),
(982, 0, 'ar', 'titles', 'block', 'حظر', '2020-04-04 09:16:57', '2020-04-10 10:14:21'),
(983, 0, 'ar', 'titles', 'choose_picture', 'اختيار صوره', '2020-04-04 09:19:49', '2020-04-10 10:14:21'),
(984, 0, 'ar', 'titles', 'contact', 'مراسله', '2020-04-04 09:20:14', '2020-04-10 10:14:21'),
(985, 0, 'en', 'titles', 'contact_all_users', 'Contact All Users', '2020-04-04 20:10:49', '2020-04-10 10:14:21'),
(986, 0, 'en', 'titles', 'notification', 'Notification', '2020-04-04 20:10:49', '2020-04-10 10:14:21'),
(987, 0, 'en', 'titles', 'notifications', 'Notifications', '2020-04-04 20:10:49', '2020-04-10 10:14:21'),
(988, 0, 'ar', 'titles', 'contact_all_users', 'مراسلة جميع الاعضاء', '2020-04-04 20:11:06', '2020-04-10 10:14:21'),
(989, 0, 'ar', 'titles', 'notification', 'اشعار', '2020-04-04 20:12:03', '2020-04-10 10:14:21'),
(990, 0, 'ar', 'titles', 'notifications', 'اشعارات', '2020-04-04 20:12:27', '2020-04-10 10:14:21'),
(991, 0, 'en', 'titles', 'email_message_content', 'Email Message Content', '2020-04-04 20:17:20', '2020-04-10 10:14:21'),
(992, 0, 'en', 'titles', 'sms_message_content', 'Sms Message Content', '2020-04-04 20:17:20', '2020-04-10 10:14:21'),
(993, 0, 'en', 'titles', 'notification_message_content', 'Notification Message Content', '2020-04-04 20:17:20', '2020-04-10 10:14:21'),
(994, 0, 'ar', 'titles', 'email_message_content', 'نص رسالة الـ Email', '2020-04-04 20:17:39', '2020-04-10 10:14:21'),
(995, 0, 'ar', 'titles', 'notification_message_content', 'نص رسالة الـ Notification', '2020-04-04 20:19:03', '2020-04-10 10:14:21'),
(996, 0, 'ar', 'titles', 'sms_message_content', 'نص رسالة الـ SMS', '2020-04-04 20:19:50', '2020-04-10 10:14:21'),
(997, 0, 'en', 'titles', 'send', 'Send', '2020-04-04 20:21:28', '2020-04-10 10:14:21'),
(998, 0, 'ar', 'titles', 'send', 'ارسال', '2020-04-04 20:21:40', '2020-04-10 10:14:21'),
(999, 0, 'en', 'titles', 'edit_user', 'Edit User', '2020-04-04 20:44:19', '2020-04-10 10:14:21'),
(1000, 0, 'ar', 'titles', 'edit_user', 'تعديل عضو :', '2020-04-04 20:44:29', '2020-04-10 10:14:21'),
(1001, 0, 'en', 'titles', 'by_notification', 'By Notification', '2020-04-04 20:55:30', '2020-04-10 10:14:21'),
(1002, 0, 'ar', 'titles', 'by_notification', 'ارسال اشعار', '2020-04-04 20:56:32', '2020-04-10 10:14:21'),
(1003, 0, 'en', 'titles', 'message_from', 'Message From', '2020-04-04 21:05:59', '2020-04-10 10:14:21'),
(1004, 0, 'ar', 'titles', 'message_from', 'رساله من', '2020-04-04 21:06:24', '2020-04-10 10:14:21'),
(1005, 0, 'en', 'titles', 'reply_by_email', 'Reply By Email', '2020-04-06 06:45:09', '2020-04-10 10:14:21'),
(1006, 0, 'en', 'titles', 'reply_by_sms', 'Reply By SMS', '2020-04-06 06:45:09', '2020-04-10 10:14:21'),
(1008, 0, 'ar', 'titles', 'reply_by_sms', 'رد برساله SMS', '2020-04-06 06:46:14', '2020-04-10 10:14:21'),
(1009, 0, 'ar', 'titles', 'reply_by_email', 'رد برساله Email', '2020-04-06 07:15:30', '2020-04-10 10:14:21'),
(1011, 0, 'en', 'titles', 'reply_by_notification', 'Reply By Notification', '2020-04-06 07:17:07', '2020-04-10 10:14:21'),
(1012, 0, 'ar', 'titles', 'reply_by_notification', 'رد برساله Notification', '2020-04-06 07:17:50', '2020-04-10 10:14:21'),
(1013, 0, 'en', 'titles', 'back_to_index', 'Back To Index', '2020-04-06 07:32:31', '2020-04-10 10:14:21'),
(1014, 0, 'ar', 'titles', 'back_to_index', 'عوده لصندوق الوارد', '2020-04-06 07:33:14', '2020-04-10 10:14:21'),
(1015, 0, 'en', 'titles', 'send_sms_to', 'Send SMS To:', '2020-04-06 07:38:50', '2020-04-10 10:14:21'),
(1016, 0, 'en', 'titles', 'send_email_to', 'Send Email To:', '2020-04-06 07:38:50', '2020-04-10 10:14:21'),
(1017, 0, 'ar', 'titles', 'send_sms_to', 'ارسال SMS لـ', '2020-04-06 07:39:55', '2020-04-10 10:14:21'),
(1018, 0, 'ar', 'titles', 'send_email_to', 'ارسال Email لـ', '2020-04-06 07:40:25', '2020-04-10 10:14:21'),
(1019, 0, 'en', 'titles', 'users_reports', 'Users Reports', '2020-04-06 08:09:56', '2020-04-10 10:14:21'),
(1020, 0, 'en', 'titles', 'administrations_reports', 'Administrations Reports', '2020-04-06 08:09:56', '2020-04-10 10:14:21'),
(1021, 0, 'en', 'titles', 'event', 'Event', '2020-04-06 08:09:56', '2020-04-10 10:14:21'),
(1022, 0, 'ar', 'titles', 'administrations_reports', 'تقارير المشرفين', '2020-04-06 08:27:11', '2020-04-10 10:14:21'),
(1023, 0, 'ar', 'titles', 'event', 'حدث', '2020-04-06 08:27:37', '2020-04-10 10:14:21'),
(1024, 0, 'ar', 'titles', 'users_reports', 'تقارير الاعضاء', '2020-04-06 08:28:35', '2020-04-10 10:14:21'),
(1025, 0, 'en', 'titles', 'delete_all', 'Delete All', '2020-04-07 09:44:44', '2020-04-10 10:14:21'),
(1026, 0, 'ar', 'titles', 'delete_all', 'حذف الكل', '2020-04-07 09:45:22', '2020-04-10 10:14:21'),
(1027, 0, 'en', 'titles', 'supervisor', 'Supervisor', '2020-04-07 09:47:48', '2020-04-10 10:14:21'),
(1028, 0, 'ar', 'titles', 'supervisor', 'المشرف', '2020-04-07 09:48:11', '2020-04-10 10:14:21'),
(1029, 0, 'en', 'titles', 'deleted_successfully', 'Deleted Successfully.', '2020-04-07 11:29:48', '2020-04-10 10:14:21'),
(1030, 0, 'ar', 'titles', 'deleted_successfully', '.تم الحذف بنحاح', '2020-04-07 11:30:27', '2020-04-10 10:14:21'),
(1031, 0, 'en', 'titles', 'administration_groups', 'Administration Groups', '2020-04-07 11:39:38', '2020-04-10 10:14:21'),
(1032, 0, 'en', 'titles', 'add_group', 'New Group', '2020-04-07 11:39:38', '2020-04-10 10:14:21'),
(1033, 0, 'en', 'titles', 'groups_count', 'Groups Count', '2020-04-07 11:39:38', '2020-04-10 10:14:21'),
(1034, 0, 'en', 'titles', 'refresh_page', 'Refresh Page', '2020-04-07 11:39:38', '2020-04-10 10:14:21'),
(1035, 0, 'ar', 'titles', 'add_group', 'اضافة مجموعة', '2020-04-07 11:40:17', '2020-04-10 10:14:21'),
(1036, 0, 'ar', 'titles', 'administration_groups', 'مجموعات الأدارة', '2020-04-07 11:41:26', '2020-04-10 10:14:21'),
(1037, 0, 'ar', 'titles', 'groups_count', 'عدد المجموعات', '2020-04-07 11:42:02', '2020-04-10 10:14:21'),
(1038, 0, 'ar', 'titles', 'refresh_page', 'تحديث الصفحه', '2020-04-07 11:42:55', '2020-04-10 10:14:21'),
(1039, 0, 'en', 'titles', 'show_message', 'Show Message', '2020-04-07 21:43:14', '2020-04-10 10:14:21'),
(1040, 0, 'en', 'titles', 'delete_message', 'Delete Message', '2020-04-07 21:43:14', '2020-04-10 10:14:21');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1041, 0, 'ar', 'titles', 'delete_message', 'حذف الرسالة', '2020-04-07 21:43:35', '2020-04-10 10:14:21'),
(1042, 0, 'ar', 'titles', 'show_message', 'عرض الرسالة', '2020-04-07 21:44:07', '2020-04-10 10:14:21'),
(1043, 0, 'en', 'titles', 'add_user', 'Add User', '2020-04-07 22:18:03', '2020-04-10 10:14:21'),
(1044, 0, 'en', 'titles', 'update_user', 'Update User', '2020-04-07 22:18:03', '2020-04-10 10:14:21'),
(1045, 0, 'ar', 'titles', 'add_user', 'إضافة عضو', '2020-04-07 22:18:30', '2020-04-10 10:14:21'),
(1046, 0, 'ar', 'titles', 'update_user', 'تحديث عضو', '2020-04-07 22:19:23', '2020-04-10 10:14:21'),
(1047, 0, 'en', 'titles', 'add_users', 'Adding Users', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1048, 0, 'en', 'titles', 'update_users', 'Updating Users', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1049, 0, 'en', 'titles', 'delete_users', 'Deleting Users', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1050, 0, 'en', 'titles', 'send_email_to_all_users', 'Sending emails to all users', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1051, 0, 'en', 'titles', 'send_sms_to_all_users', 'Sending SMS to all users', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1052, 0, 'en', 'titles', 'sens_notifications_to_all_users', 'Sending notification to all users', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1053, 0, 'en', 'titles', 'send_email_to_user', 'Sending email to user', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1054, 0, 'en', 'titles', 'send_sms_to_user', 'Sending SMS to user', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1055, 0, 'en', 'titles', 'sens_notifications_to_user', 'Sending notification to user', '2020-04-07 22:26:09', '2020-04-10 10:14:21'),
(1056, 0, 'ar', 'titles', 'add_users', 'إضافة مستخدمين', '2020-04-07 22:26:57', '2020-04-10 10:14:21'),
(1057, 0, 'ar', 'titles', 'delete_users', 'حذف مستخدمين', '2020-04-07 22:27:48', '2020-04-10 10:14:21'),
(1058, 0, 'ar', 'titles', 'send_email_to_all_users', 'إرسال بريد الي كل الاعضاء', '2020-04-07 22:28:44', '2020-04-10 10:14:21'),
(1059, 0, 'ar', 'titles', 'send_email_to_user', 'إرسال بريد لمستخدم معين', '2020-04-07 22:30:07', '2020-04-10 10:14:21'),
(1060, 0, 'ar', 'titles', 'send_sms_to_all_users', 'إرسال SMS الي كل الاعضاء', '2020-04-07 22:31:07', '2020-04-10 10:14:21'),
(1061, 0, 'ar', 'titles', 'send_sms_to_user', 'إرسال SMS لمستخدم معين', '2020-04-07 22:31:18', '2020-04-10 10:14:21'),
(1062, 0, 'ar', 'titles', 'sens_notifications_to_user', 'إرسال إشعار لمستخدم معين', '2020-04-07 22:31:38', '2020-04-10 10:14:21'),
(1063, 0, 'ar', 'titles', 'sens_notifications_to_all_users', 'إرسال إشعار الي كل الاعضاء', '2020-04-07 22:32:03', '2020-04-10 10:14:21'),
(1064, 0, 'ar', 'titles', 'update_users', 'تحديث الأعضاء', '2020-04-07 22:56:54', '2020-04-10 10:14:21'),
(1065, 0, 'en', 'titles', 'delete_users_reports', 'Delete Users Reports', '2020-04-08 01:45:42', '2020-04-10 10:14:21'),
(1066, 0, 'en', 'titles', 'delete_administrations_reports', 'Delete Administrations Reports', '2020-04-08 01:45:42', '2020-04-10 10:14:21'),
(1067, 0, 'ar', 'titles', 'delete_administrations_reports', 'حذف تقرير المشرفيين', '2020-04-08 01:48:02', '2020-04-10 10:14:21'),
(1068, 0, 'ar', 'titles', 'delete_users_reports', 'حذف تقرير المستخدمين', '2020-04-08 01:49:06', '2020-04-10 10:14:21'),
(1072, 0, 'en', 'titles', 'add_permission', 'Add Permission', '2020-04-08 02:04:12', '2020-04-10 10:14:21'),
(1073, 0, 'ar', 'titles', 'add_permission', 'اضافة صلاحيه', '2020-04-08 02:04:41', '2020-04-10 10:14:21'),
(1076, 0, 'en', 'titles', 'adding_permissions', 'Adding Permissions', '2020-04-08 02:09:47', '2020-04-10 10:14:21'),
(1077, 0, 'ar', 'titles', 'adding_permissions', 'تمكين اضافة صلاحيه', '2020-04-08 02:10:06', '2020-04-10 10:14:21'),
(1078, 0, 'en', 'titles', 'confrim_money_transaction', 'Confirm Transaction', '2020-04-08 02:19:05', '2020-04-10 10:14:21'),
(1079, 0, 'en', 'titles', 'confirm_money_transaction_and_delete', 'Confirm Transaction & Delete', '2020-04-08 02:20:27', '2020-04-10 10:14:21'),
(1080, 0, 'ar', 'titles', 'confrim_money_transaction', 'تأكيد تحويل بنكي', '2020-04-08 02:21:07', '2020-04-10 10:14:21'),
(1081, 0, 'ar', 'titles', 'confirm_money_transaction_and_delete', 'تأكيد مع الحذف', '2020-04-08 02:22:18', '2020-04-10 10:14:21'),
(1083, 0, 'en', 'titles', 'adding_social_media', 'Adding Social Media', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1084, 0, 'en', 'titles', 'updating_social_media', 'Updating Social Media', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1085, 0, 'en', 'titles', 'updating_smtp', 'Updating SMTP', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1086, 0, 'en', 'titles', 'updating_sms', 'Updating SMS', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1087, 0, 'en', 'titles', 'updating_oneSignal', 'Updating oneSignal', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1088, 0, 'en', 'titles', 'updating_fcm', 'Updating FCM', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1090, 0, 'en', 'titles', 'updating_seo', 'Updating SEO', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1091, 0, 'en', 'titles', 'updating_copyright', 'Updating Copyright', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1092, 0, 'en', 'titles', 'updating_email_template', 'Updating Email Template', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1093, 0, 'en', 'titles', 'updating_google_analytics', 'Updating Google Analytics', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1094, 0, 'en', 'titles', 'updating_live_chat', 'Updating Live Chat', '2020-04-08 02:29:49', '2020-04-10 10:14:21'),
(1095, 0, 'en', 'titles', 'updating_general_settings', 'Updating General Settings', '2020-04-08 02:32:26', '2020-04-10 10:14:21'),
(1096, 0, 'ar', 'titles', 'adding_social_media', 'إضافة تواصل إجتماعي', '2020-04-08 02:33:51', '2020-04-10 10:14:21'),
(1097, 0, 'ar', 'titles', 'updating_social_media', 'تحديث التواصل الأجتماعي', '2020-04-08 02:36:48', '2020-04-10 10:14:21'),
(1098, 0, 'ar', 'titles', 'updating_smtp', 'تحديث SMTP', '2020-04-08 02:37:10', '2020-04-10 10:14:21'),
(1099, 0, 'ar', 'titles', 'updating_sms', 'تحديث SMS', '2020-04-08 02:37:34', '2020-04-10 10:14:21'),
(1100, 0, 'ar', 'titles', 'updating_seo', 'تحديث SEO', '2020-04-08 02:37:43', '2020-04-10 10:14:21'),
(1101, 0, 'ar', 'titles', 'updating_oneSignal', 'تحديث oneSignal', '2020-04-08 02:37:56', '2020-04-10 10:14:21'),
(1102, 0, 'ar', 'titles', 'updating_live_chat', 'تحديث Live Chat', '2020-04-08 02:38:05', '2020-04-10 10:14:21'),
(1103, 0, 'ar', 'titles', 'updating_google_analytics', 'تحديث Google Analytics', '2020-04-08 02:38:33', '2020-04-10 10:14:21'),
(1104, 0, 'ar', 'titles', 'updating_general_settings', 'تحديث إعدادات الموقع', '2020-04-08 02:39:20', '2020-04-10 10:14:21'),
(1105, 0, 'ar', 'titles', 'updating_fcm', 'تحديث FCM', '2020-04-08 02:39:30', '2020-04-10 10:14:21'),
(1106, 0, 'ar', 'titles', 'updating_email_template', 'تحديث قالب البريد الألكتروني', '2020-04-08 02:39:52', '2020-04-10 10:14:21'),
(1107, 0, 'ar', 'titles', 'updating_copyright', 'تحديث حقوق الموقع', '2020-04-08 02:40:05', '2020-04-10 10:14:21'),
(1108, 0, 'en', 'titles', 'deleting_social_media', 'Deleting Social Media', '2020-04-08 02:42:26', '2020-04-10 10:14:21'),
(1109, 0, 'ar', 'titles', 'deleting_social_media', 'حذف مواقع التواصل', '2020-04-08 02:42:59', '2020-04-10 10:14:21'),
(1110, 0, 'en', 'titles', 'update_permissions', 'Update Permissions', '2020-04-08 02:57:38', '2020-04-10 10:14:21'),
(1111, 0, 'en', 'titles', 'updating_permissions', 'Updating Permissions', '2020-04-08 02:57:38', '2020-04-10 10:14:21'),
(1112, 0, 'en', 'titles', 'delete_permissions', 'Delete Permissions', '2020-04-08 02:57:38', '2020-04-10 10:14:21'),
(1113, 0, 'ar', 'titles', 'delete_permissions', 'حذف صلاحيات', '2020-04-08 02:58:08', '2020-04-10 10:14:21'),
(1114, 0, 'ar', 'titles', 'update_permissions', 'تحديث صلاحيات', '2020-04-08 02:59:40', '2020-04-10 10:14:21'),
(1115, 0, 'ar', 'titles', 'updating_permissions', 'تمكين تحديث الصلاحيات', '2020-04-08 03:00:32', '2020-04-10 10:14:21'),
(1116, 0, 'en', 'titles', 'financial_accounting', 'Financial Accounting', '2020-04-08 03:40:29', '2020-04-10 10:14:21'),
(1117, 0, 'en', 'titles', 'amount', 'Amount', '2020-04-08 03:40:29', '2020-04-10 10:14:21'),
(1118, 0, 'en', 'titles', 'bank', 'Bank', '2020-04-08 03:40:29', '2020-04-10 10:14:21'),
(1119, 0, 'ar', 'titles', 'amount', 'المبلغ', '2020-04-08 03:40:43', '2020-04-10 10:14:21'),
(1120, 0, 'ar', 'titles', 'bank', 'بنك', '2020-04-08 03:41:06', '2020-04-10 10:14:21'),
(1121, 0, 'ar', 'titles', 'financial_accounting', 'الحسابات الماليه', '2020-04-08 03:41:40', '2020-04-10 10:14:21'),
(1122, 0, 'en', 'titles', 'confirmed', 'Confirmed', '2020-04-08 03:52:25', '2020-04-10 10:14:21'),
(1123, 0, 'en', 'titles', 'unconfirmed', 'Unconfirmed', '2020-04-08 03:52:25', '2020-04-10 10:14:21'),
(1124, 0, 'ar', 'titles', 'unconfirmed', 'تم التأكيد', '2020-04-08 03:52:43', '2020-04-10 10:14:21'),
(1125, 0, 'ar', 'titles', 'confirmed', 'لم يتم التأكيد', '2020-04-08 03:53:06', '2020-04-10 10:14:21'),
(1126, 0, 'en', 'titles', 'confirm', 'Confirm', '2020-04-08 03:56:05', '2020-04-10 10:14:21'),
(1127, 0, 'en', 'titles', 'confirm_delete', 'Confirm & Delete', '2020-04-08 03:56:05', '2020-04-10 10:14:21'),
(1128, 0, 'ar', 'titles', 'confirm', 'تأكيد', '2020-04-08 03:56:22', '2020-04-10 10:14:21'),
(1129, 0, 'ar', 'titles', 'confirm_delete', 'تأكيد مع حذف', '2020-04-08 03:56:42', '2020-04-10 10:14:21'),
(1130, 0, 'en', 'titles', 'continue_confirmation', 'do you want to continue ?', '2020-04-08 06:32:38', '2020-04-10 10:14:21'),
(1131, 0, 'ar', 'titles', 'continue_confirmation', 'هل تريد الأستمرار ؟', '2020-04-08 06:33:10', '2020-04-10 10:14:21'),
(1132, 0, 'en', 'titles', 'delete_confirmation', 'Do you want to continue deletion?', '2020-04-09 07:06:58', '2020-04-10 10:14:21'),
(1133, 0, 'ar', 'titles', 'delete_confirmation', 'هل تريد استمرار عملية الحذف ؟', '2020-04-09 07:07:37', '2020-04-10 10:14:21'),
(1134, 0, 'en', 'titles', 'site_settings', 'Site Settings', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1135, 0, 'en', 'titles', 'stie_name', 'Site Name', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1136, 0, 'en', 'titles', 'site_logo', 'Site Logo', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1137, 0, 'en', 'titles', 'site_copyright', 'Site Copyright', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1138, 0, 'en', 'titles', 'stie_desc', 'Site Description', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1139, 0, 'en', 'titles', 'site_tags', 'Site Tags', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1143, 0, 'en', 'titles', 'sender_email', 'Sender Email', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1144, 0, 'en', 'titles', 'sender_name', 'Sender Name', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1145, 0, 'en', 'titles', 'email_port', 'Port', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1146, 0, 'en', 'titles', 'email_host', 'Host', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1147, 0, 'en', 'titles', 'encryption', 'Encryption', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1148, 0, 'en', 'titles', 'font_color', 'Font Color', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1149, 0, 'en', 'titles', 'header_color', 'Header Color', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1150, 0, 'en', 'titles', 'footer_color', 'Footer Color', '2020-04-09 07:32:15', '2020-04-10 10:14:21'),
(1151, 0, 'en', 'titles', 'link', 'Link', '2020-04-09 07:33:35', '2020-04-10 10:14:21'),
(1152, 0, 'ar', 'titles', 'link', 'لينك', '2020-04-09 07:33:43', '2020-04-10 10:14:21'),
(1153, 0, 'ar', 'titles', 'email_host', 'الهوست', '2020-04-09 07:34:52', '2020-04-10 10:14:21'),
(1154, 0, 'ar', 'titles', 'email_port', 'البورت', '2020-04-09 07:35:08', '2020-04-10 10:14:21'),
(1155, 0, 'ar', 'titles', 'encryption', 'التشفير', '2020-04-09 07:35:22', '2020-04-10 10:14:21'),
(1156, 0, 'ar', 'titles', 'font_color', 'لون الخط', '2020-04-09 07:36:00', '2020-04-10 10:14:21'),
(1157, 0, 'ar', 'titles', 'footer_color', 'لون الفوتر', '2020-04-09 07:36:23', '2020-04-10 10:14:21'),
(1158, 0, 'ar', 'titles', 'header_color', 'لون الهيدر', '2020-04-09 07:36:38', '2020-04-10 10:14:21'),
(1159, 0, 'ar', 'titles', 'sender_email', 'ايميل المرسل', '2020-04-09 07:37:12', '2020-04-10 10:14:21'),
(1160, 0, 'ar', 'titles', 'sender_name', 'اسم الراسل', '2020-04-09 07:37:36', '2020-04-10 10:14:21'),
(1161, 0, 'ar', 'titles', 'site_copyright', 'حقوق الموقع', '2020-04-09 07:39:13', '2020-04-10 10:14:21'),
(1162, 0, 'ar', 'titles', 'site_logo', 'لوجو الموقع', '2020-04-09 07:39:27', '2020-04-10 10:14:21'),
(1163, 0, 'ar', 'titles', 'site_settings', 'اعدادات الموقع', '2020-04-09 07:39:44', '2020-04-10 10:14:21'),
(1164, 0, 'ar', 'titles', 'site_tags', 'الكلمات الدلاليه', '2020-04-09 07:39:56', '2020-04-10 10:14:21'),
(1165, 0, 'ar', 'titles', 'stie_desc', 'وصف الموقع', '2020-04-09 07:41:08', '2020-04-10 10:14:21'),
(1166, 0, 'ar', 'titles', 'stie_name', 'اسم الموقع', '2020-04-09 07:41:15', '2020-04-10 10:14:21'),
(1167, 0, 'en', 'titles', 'messages_emails', 'Messages & Emails', '2020-04-09 07:46:57', '2020-04-10 10:14:21'),
(1168, 0, 'ar', 'titles', 'messages_emails', 'الرسائل و الايميل', '2020-04-09 07:47:22', '2020-04-10 10:14:21'),
(1169, 0, 'en', 'titles', 'email_template', 'Email Template', '2020-04-09 07:51:33', '2020-04-10 10:14:21'),
(1170, 0, 'ar', 'titles', 'email_template', 'قالب البريد الألكتروني', '2020-04-09 07:52:11', '2020-04-10 10:14:21'),
(1171, 0, 'en', 'titles', 'general_settings', 'General Settings', '2020-04-09 07:55:11', '2020-04-10 10:14:21'),
(1172, 0, 'ar', 'titles', 'general_settings', 'إعدادات عامة', '2020-04-09 07:56:21', '2020-04-10 10:14:21'),
(1173, 0, 'en', 'titles', 'company_copyright', 'Company Copyright', '2020-04-09 08:11:27', '2020-04-10 10:14:21'),
(1174, 0, 'ar', 'titles', 'company_copyright', 'حقوق الشركة', '2020-04-09 08:12:04', '2020-04-10 10:14:21'),
(1175, 0, 'en', 'titles', 'no_content', 'There is no content to display!', '2020-04-09 10:40:30', '2020-04-10 10:14:21'),
(1176, 0, 'ar', 'titles', 'no_content', 'لا يوجد محتوي للعرض!', '2020-04-09 10:40:47', '2020-04-10 10:14:21'),
(1177, 0, 'en', 'titles', 'copyright', 'Copyright', '2020-04-09 11:18:54', '2020-04-10 10:14:21'),
(1178, 0, 'ar', 'titles', 'copyright', 'الحقوق', '2020-04-09 11:19:08', '2020-04-10 10:14:21'),
(1179, 0, 'en', 'titles', 'see_all_messages', 'See all messages.', '2020-04-10 10:06:39', '2020-04-10 10:14:21'),
(1180, 0, 'ar', 'titles', 'see_all_messages', 'مشاهدة جميع الرسائل', '2020-04-10 10:06:58', '2020-04-10 10:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subCategory_id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryDay` date NOT NULL,
  `deliveryTime` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenances_finished`
--

CREATE TABLE `maintenances_finished` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `maint_id` int(11) NOT NULL,
  `user_confirmation` tinyint(1) DEFAULT NULL,
  `shop_confirmation` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_categories`
--

CREATE TABLE `maintenance_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_sub_categories`
--

CREATE TABLE `maintenance_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `father_id` int(10) UNSIGNED DEFAULT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance__auctions`
--

CREATE TABLE `maintenance__auctions` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `maint_id` int(10) UNSIGNED NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryDay` datetime NOT NULL,
  `deliveryTime` time NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2017_11_12_131403_Roles_table', 1),
(9, '2017_11_13_154950_permissions_table', 1),
(10, '2017_11_29_114127_socialMedia', 1),
(11, '2017_12_04_165459_contact_us_table', 1),
(12, '2017_12_05_134944_reports', 1),
(13, '2017_12_07_153910_money_accounts', 1),
(14, '2017_12_10_154903_smsAndEmailAndNotification', 1),
(15, '2017_12_10_155233_siteSettingTable', 1),
(16, '2017_12_10_155339_htmlTable', 1),
(17, '2018_05_02_201831_create_notifications_table', 1),
(18, '2018_08_14_160543_create_Fields_table', 1),
(19, '2018_08_14_160543_create_SubCategories_table', 1),
(20, '2018_08_14_160543_create_basket_table', 1),
(21, '2018_08_14_160543_create_categories_table', 1),
(22, '2018_08_14_160543_create_maintenance__auctions_table', 1),
(23, '2018_08_14_160543_create_maintenance_categories_table', 1),
(24, '2018_08_14_160543_create_maintenance_sub_categories_table', 1),
(25, '2018_08_14_160543_create_maintenance_table', 1),
(26, '2018_08_14_160543_create_maintenances_finished_table', 1),
(27, '2018_08_14_160543_create_new_product_table', 1),
(28, '2018_08_14_160543_create_new_products_finished_table', 1),
(29, '2018_08_14_160543_create_offers_table', 1),
(30, '2018_08_14_160543_create_photos_table', 1),
(31, '2018_08_14_160543_create_processing_table', 1),
(32, '2018_08_14_160543_create_product_auctions_table', 1),
(33, '2018_08_14_160543_create_products_ratings_table', 1),
(34, '2018_08_14_160543_create_products_table', 1),
(35, '2018_08_14_160543_create_shop_categories_table', 1),
(36, '2018_08_14_160543_create_shop_maintenance_table', 1),
(37, '2018_08_14_160543_create_shops_products_table', 1),
(38, '2018_08_14_160543_create_shops_rating_table', 1),
(39, '2018_08_14_160543_create_shops_table', 1),
(40, '2018_08_14_160543_create_users_analysis_table', 1),
(41, '2018_08_14_160543_create_users_settings_table', 1),
(42, '2018_08_14_160553_create_foreign_keys', 1),
(43, '2014_04_02_193005_create_translations_table', 2),
(44, '2019_08_19_000000_create_failed_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `money_accounts`
--

CREATE TABLE `money_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ammount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_accounts`
--

INSERT INTO `money_accounts` (`id`, `ammount`, `bank_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(5, '2148', '032937975069', 1, 2, '2020-04-09 07:04:49', '2020-04-09 07:04:49'),
(6, '7955', '517565719337502', 0, 2, '2020-04-09 07:04:49', '2020-04-09 07:04:49'),
(7, '5509', '44173688', 0, 2, '2020-04-09 07:04:49', '2020-04-09 07:04:49'),
(8, '9086', '63893094406', 0, 2, '2020-04-09 07:04:49', '2020-04-09 07:04:49'),
(9, '6512', '0841267586', 1, 2, '2020-04-09 07:04:49', '2020-04-09 07:04:49'),
(10, '7584', '554377918', 0, 2, '2020-04-09 07:04:49', '2020-04-09 07:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `new_product`
--

CREATE TABLE `new_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airConditioningPipes` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryDay` date NOT NULL,
  `deliveryTime` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_products_finished`
--

CREATE TABLE `new_products_finished` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `new_id` int(11) NOT NULL,
  `user_confirmation` tinyint(1) DEFAULT NULL,
  `shop_confirmation` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_ar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_en` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permissions`, `role_id`, `created_at`, `updated_at`) VALUES
(8, 'dashboard', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(9, 'inbox', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(10, 'showmessage', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(11, 'deletemessage', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(12, 'sendsms', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(13, 'sendemail', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(14, 'users', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(15, 'adduser', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(16, 'updateuser', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(17, 'deleteuser', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(18, 'emailallusers', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(19, 'smsallusers', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(20, 'notificationallusers', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(21, 'sendcurrentemail', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(22, 'sendcurrentsms', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(23, 'sendcurrentnotification', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(24, 'reportspage', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(25, 'deleteusersreports', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(26, 'deletesupervisorsreports', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(27, 'permissionslist', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(28, 'addpermissionspage', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(29, 'addpermission', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(30, 'editpermissionpage', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(31, 'updatepermission', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(32, 'deletepermission', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(33, 'moneyaccountspage', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(34, 'moneyaccept', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(35, 'moneyacceptdelete', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(36, 'moneydelete', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(37, 'setting', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(38, 'addsocials', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(39, 'updatesocials', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(40, 'updatesmtp', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(41, 'updatesms', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(42, 'updateonesignal', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(43, 'updatefcm', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(44, 'updatesitesetting', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(45, 'updateseo', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(46, 'updatesitecopyright', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(47, 'updateemailtemplate', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(48, 'updategoogleanalytics', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(49, 'updatelivechat', 1, '2020-02-15 16:00:45', '2020-02-15 16:00:45'),
(50, 'moneyaccept', 2, '2020-04-07 11:32:24', '2020-04-07 11:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `processing`
--

CREATE TABLE `processing` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `new_id` int(11) DEFAULT NULL,
  `maint_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subCategory_id` int(11) NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_ratings`
--

CREATE TABLE `products_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quality` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `performance` int(11) NOT NULL,
  `recommendation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_auctions`
--

CREATE TABLE `product_auctions` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `new_id` int(10) UNSIGNED NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryDay` datetime NOT NULL,
  `deliveryTime` datetime NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(10) UNSIGNED NOT NULL,
  `event` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supervisor` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-02-15 15:31:28', '2020-02-15 15:31:28'),
(2, 'Assistant', '2020-02-15 15:31:28', '2020-04-07 11:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_register` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_register_img` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops_products`
--

CREATE TABLE `shops_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `subCategory_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops_rating`
--

CREATE TABLE `shops_rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `dealingPerformance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deliveryQuality` int(11) NOT NULL DEFAULT '0',
  `workExperiencek` int(11) NOT NULL,
  `dealingAgain` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `subCategory_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_maintenance`
--

CREATE TABLE `shop_maintenance` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `ids_group` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_tagged` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_copyrigth` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `site_name`, `site_logo`, `site_description`, `site_tagged`, `site_copyrigth`, `created_at`, `updated_at`) VALUES
(1, 'YOUR SITE NAME', 'logo.jpg', '', '', '', '2020-02-15 15:31:29', '2020-04-02 08:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `smsemailnotification`
--

CREATE TABLE `smsemailnotification` (
  `id` int(10) UNSIGNED NOT NULL,
  `smtp_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_sender_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_sender_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_sender_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oneSignal_application_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oneSignal_authorization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcm_server_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcm_sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smsemailnotification`
--

INSERT INTO `smsemailnotification` (`id`, `smtp_type`, `smtp_username`, `smtp_password`, `smtp_sender_email`, `smtp_sender_name`, `smtp_port`, `smtp_host`, `smtp_encryption`, `sms_number`, `sms_password`, `sms_sender_name`, `oneSignal_application_id`, `oneSignal_authorization`, `fcm_server_key`, `fcm_sender_id`, `created_at`, `updated_at`) VALUES
(1, 'smtp', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '2020-02-15 15:31:29', '2020-02-15 15:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SubCategories`
--

CREATE TABLE `SubCategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `father_id` int(11) DEFAULT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` bigint(20) NOT NULL,
  `lng` bigint(20) NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `arrears` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '0',
  `device_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `city`, `address`, `lat`, `lng`, `avatar`, `arrears`, `active`, `role`, `device_type`, `device_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Mesbah', 'admin@test.com', '$2y$10$HfIvHQISnQYNSxWC58opVu2rIuXBLdyon0LGM1jJ7Tkx.mrHe5zR.', '123456789', 'Mansoura', 'egypt,Mansoura', 31, 31, 'default.png', '100', 1, 1, NULL, '1111111111', 'JH9oXLyGqPoTrwA5ChkW3DoEGHGQdWjC0RSXOik8KBfN13WENX3j7UaUS539', '2020-02-15 15:31:28', '2020-02-15 15:31:28'),
(2, 'Ahmed Mesbah Rezk', 'work72019@gmail.com', '$2y$10$UteIUKsRjc/SgzVz.hJ5rupB7DLUhJjpq4faSUKNxl8b38ITxrv5i', '9709665773', '0', '0', 0, 0, '01-04-2015857132371576340721.jpg', '-13702', 1, 2, NULL, NULL, NULL, '2020-04-01 09:53:58', '2020-04-09 07:12:06'),
(3, 'Ava Aufderhar', 'abbey.labadie@example.org', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '640.846.8303 x648', 'Laurianefort', '738 Laney Forges\nHeaneychester, DE 51041', 62, -168, '0', '0', 0, 0, NULL, NULL, 'fM9EKBUWtgOa8JcHbHCjDAtt7zZYYAozSKhJMm18', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(4, 'Benton Russel PhD', 'aditya71@example.com', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '+1-232-796-0888', 'Lake Raymundo', '495 Wilkinson Islands\nFaheyfort, OK 47701', 1, 117, '44a96fce088db08091750db4f8327382.jpg', '0', 0, 0, NULL, NULL, 'JbkqlUBdPDpPlEs5dyTHfEdQhakyjXxKeKuSPFJA', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(5, 'Prof. Clarabelle Wisozk I', 'ollie40@example.net', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '1-562-815-7620 x2798', 'Schinnerberg', '2165 Emmie Stravenue Suite 752\nPort Glennieton, ID 69348-4378', 22, 92, 'b4eee5bb843de99315840a4ab4206ebf.jpg', '0', 0, 0, NULL, NULL, 'ohP9NbgNxRGGZ8lZDQzNouUczZ5TBo9onvPcrlG7', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(6, 'Prof. Hulda Kreiger V', 'macey03@example.net', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '329.595.0063 x75955', 'Port Vito', '9786 Claud Drives\nLolatown, WV 65538', 68, 164, '0', '0', 0, 0, NULL, NULL, 'CwVRj4d9dJUhlzVOYzTxSioqbNCMzQDTspWoJyoP', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(7, 'Prof. Nash Rogahn PhD', 'bette.pfannerstill@example.org', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '1-430-515-6044 x42320', 'Anyaview', '470 Schuppe Ports Apt. 315\nLeatown, PA 16947-5867', 79, 118, '099f39cfab9e6348fbf8198c56d872ca.jpg', '0', 0, 0, NULL, NULL, 'l7M2aaGAjfBzWrh38qBhv31AFHjMki5tSi7v6WlE', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(8, 'Zion Sawayn', 'jewel90@example.com', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '+1 (605) 213-5076', 'South Shannonview', '994 Murphy Corner\nEast Cristopher, DE 44980-1911', -37, 26, '0', '0', 0, 0, NULL, NULL, 'orJ2YLs0ZaftdHP2jXFCx8lTnIKPrVkGDA2ZDvH0', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(9, 'Ruby Connelly', 'schuppe.fiona@example.net', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '1-391-697-4183 x60900', 'North Cassandre', '136 Joy Branch Suite 689\nNew Sheldon, NV 05797', -31, 76, '0', '0', 0, 0, NULL, NULL, 'cN46btO4CX97J3Amj6oEXekp0M5iMIdy8hFGJir8', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(10, 'Dr. Jayne Luettgen', 'yvonne.oconner@example.org', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '974.612.1168 x0260', 'Quigleyburgh', '6414 Dexter Center Suite 564\nEast Daneview, KY 46556', -26, -142, '1a5d630c7298f46fff5c00dd048ddadb.jpg', '0', 0, 0, NULL, NULL, 'XMKnME2bTE5YNzrIP3RJSRzOS8Hgmks4ITSFdFrd', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(11, 'Prof. Taya Leffler', 'pzboncak@example.com', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '863.316.1169 x236', 'Smithambury', '3345 Muller Point Apt. 172\nMayertburgh, AR 37647-1809', -50, -60, '0', '0', 0, 0, NULL, NULL, 'lpi1eixExLej3PfN0uYdHlGf3HoBvelnRLDLxeCS', '2020-04-09 07:06:07', '2020-04-09 07:06:07'),
(12, 'Rodolfo Cummerata', 'elise.wolff@example.com', '$2y$10$izVwe5v9VoTOkvdOhkBTAOydW5Fh71QPLS1lrDbcKp39/kdTtsUc.', '1-357-216-6829 x1536', 'New Stephen', '362 Elise Lakes Apt. 392\nTerrystad, ME 23195-5769', -44, -82, '2d4c560431e7fc0717e920102596cdec.jpg', '0', 0, 0, NULL, NULL, 'YMkhptTX4YskdOErKUyXczAmBTU6SZRMsf0XffAl', '2020-04-09 07:06:07', '2020-04-09 07:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `users_analysis`
--

CREATE TABLE `users_analysis` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_seen` datetime DEFAULT NULL,
  `replying_speed` int(11) DEFAULT NULL,
  `complated_orders` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_settings`
--

CREATE TABLE `users_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basket_user_id_foreign` (`user_id`),
  ADD KEY `basket_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Fields`
--
ALTER TABLE `Fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fields_product_id_foreign` (`product_id`);

--
-- Indexes for table `html`
--
ALTER TABLE `html`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenance_user_id_foreign` (`user_id`);

--
-- Indexes for table `maintenances_finished`
--
ALTER TABLE `maintenances_finished`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenances_finished_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `maintenance_categories`
--
ALTER TABLE `maintenance_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_sub_categories`
--
ALTER TABLE `maintenance_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenance_sub_categories_category_id_foreign` (`category_id`),
  ADD KEY `maintenance_sub_categories_father_id_foreign` (`father_id`);

--
-- Indexes for table `maintenance__auctions`
--
ALTER TABLE `maintenance__auctions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenance__auctions_shop_id_foreign` (`shop_id`),
  ADD KEY `maintenance__auctions_maint_id_foreign` (`maint_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_accounts`
--
ALTER TABLE `money_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `money_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `new_product`
--
ALTER TABLE `new_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_products_finished`
--
ALTER TABLE `new_products_finished`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new_products_finished_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_product_id_foreign` (`product_id`);

--
-- Indexes for table `processing`
--
ALTER TABLE `processing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_ratings`
--
ALTER TABLE `products_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ratings_user_id_foreign` (`user_id`),
  ADD KEY `products_ratings_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_auctions`
--
ALTER TABLE `product_auctions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_auctions_shop_id_foreign` (`shop_id`),
  ADD KEY `product_auctions_new_id_foreign` (`new_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `shops_products`
--
ALTER TABLE `shops_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_products_shop_id_foreign` (`shop_id`),
  ADD KEY `shops_products_product_id_foreign` (`product_id`),
  ADD KEY `shops_products_subcategory_id_foreign` (`subCategory_id`);

--
-- Indexes for table `shops_rating`
--
ALTER TABLE `shops_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_rating_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_categories_shop_id_foreign` (`shop_id`),
  ADD KEY `shop_categories_subcategory_id_foreign` (`subCategory_id`);

--
-- Indexes for table `shop_maintenance`
--
ALTER TABLE `shop_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_maintenance_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smsemailnotification`
--
ALTER TABLE `smsemailnotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SubCategories`
--
ALTER TABLE `SubCategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `users_analysis`
--
ALTER TABLE `users_analysis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_analysis_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_settings`
--
ALTER TABLE `users_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_settings_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Fields`
--
ALTER TABLE `Fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `html`
--
ALTER TABLE `html`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1181;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenances_finished`
--
ALTER TABLE `maintenances_finished`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance_categories`
--
ALTER TABLE `maintenance_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance_sub_categories`
--
ALTER TABLE `maintenance_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance__auctions`
--
ALTER TABLE `maintenance__auctions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `money_accounts`
--
ALTER TABLE `money_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `new_product`
--
ALTER TABLE `new_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_products_finished`
--
ALTER TABLE `new_products_finished`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processing`
--
ALTER TABLE `processing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_ratings`
--
ALTER TABLE `products_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_auctions`
--
ALTER TABLE `product_auctions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops_products`
--
ALTER TABLE `shops_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops_rating`
--
ALTER TABLE `shops_rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_maintenance`
--
ALTER TABLE `shop_maintenance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smsemailnotification`
--
ALTER TABLE `smsemailnotification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubCategories`
--
ALTER TABLE `SubCategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_analysis`
--
ALTER TABLE `users_analysis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_settings`
--
ALTER TABLE `users_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `basket_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Fields`
--
ALTER TABLE `Fields`
  ADD CONSTRAINT `fields_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintenances_finished`
--
ALTER TABLE `maintenances_finished`
  ADD CONSTRAINT `maintenances_finished_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintenance_sub_categories`
--
ALTER TABLE `maintenance_sub_categories`
  ADD CONSTRAINT `maintenance_sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `maintenance_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maintenance_sub_categories_father_id_foreign` FOREIGN KEY (`father_id`) REFERENCES `maintenance_sub_categories` (`id`);

--
-- Constraints for table `maintenance__auctions`
--
ALTER TABLE `maintenance__auctions`
  ADD CONSTRAINT `maintenance__auctions_maint_id_foreign` FOREIGN KEY (`maint_id`) REFERENCES `maintenance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maintenance__auctions_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `money_accounts`
--
ALTER TABLE `money_accounts`
  ADD CONSTRAINT `money_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `new_products_finished`
--
ALTER TABLE `new_products_finished`
  ADD CONSTRAINT `new_products_finished_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_ratings`
--
ALTER TABLE `products_ratings`
  ADD CONSTRAINT `products_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_auctions`
--
ALTER TABLE `product_auctions`
  ADD CONSTRAINT `product_auctions_new_id_foreign` FOREIGN KEY (`new_id`) REFERENCES `new_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_auctions_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shops_products`
--
ALTER TABLE `shops_products`
  ADD CONSTRAINT `shops_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shops_products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shops_products_subcategory_id_foreign` FOREIGN KEY (`subCategory_id`) REFERENCES `SubCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shops_rating`
--
ALTER TABLE `shops_rating`
  ADD CONSTRAINT `shops_rating_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD CONSTRAINT `shop_categories_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shop_categories_subcategory_id_foreign` FOREIGN KEY (`subCategory_id`) REFERENCES `SubCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shop_maintenance`
--
ALTER TABLE `shop_maintenance`
  ADD CONSTRAINT `shop_maintenance_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_analysis`
--
ALTER TABLE `users_analysis`
  ADD CONSTRAINT `users_analysis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_settings`
--
ALTER TABLE `users_settings`
  ADD CONSTRAINT `users_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
