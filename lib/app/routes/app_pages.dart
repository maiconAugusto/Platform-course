import 'package:course_web/app/modules/auth/binding.dart';
import 'package:course_web/app/modules/auth/page.dart';
import 'package:course_web/app/modules/commentsClase/bindings.dart';
import 'package:course_web/app/modules/course/binding.dart';
import 'package:course_web/app/modules/course/page.dart';
import 'package:course_web/app/modules/home/bindings.dart';
import 'package:course_web/app/modules/home/page.dart';
import 'package:course_web/app/modules/myData/bindings.dart';
import 'package:course_web/app/modules/myData/page.dart';
import 'package:course_web/app/modules/recoveryPassword/binding.dart';
import 'package:course_web/app/modules/recoveryPassword/page.dart';
import 'package:course_web/app/modules/topic/bindings.dart';
import 'package:course_web/app/modules/topic/page.dart';
import 'package:get/get.dart';

import '../modules/commentsClase/page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.auth,
      page: () => const Auth(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.recoveryPassword,
      page: () => const RecoveryPassword(),
      binding: RecoveryPassordBindings(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const Home(),
      binding: HomeBinings(),
    ),
    GetPage(
      name: Routes.course,
      page: () => const Course(),
      binding: CourseBinding(),
    ),
    GetPage(
      name: Routes.newTopic,
      page: () => const TopicView(),
      binding: TopicBindings(),
    ),
    GetPage(
      name: Routes.commentClase,
      page: () => const CommentClaseView(),
      binding: CommentClaseBindings(),
    ),
    GetPage(
      name: Routes.myData,
      page: () => const MyDataView(),
      binding: MyDataBindings(),
    ),
  ];
}
