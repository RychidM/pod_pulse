import 'package:get/get.dart';
import 'package:pod_pulse/app/modules/auth/sign_in/index.dart';
import 'package:pod_pulse/app/modules/auth/sign_up/view.dart';
import 'package:pod_pulse/app/modules/dashboard/index.dart';

part 'app_routes.dart';

class AppPages {
  static const initialPage = AppRoutes.signIn;

  static final routes = <GetPage>[
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
