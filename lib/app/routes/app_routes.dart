part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const signIn = _Paths.signInPath;
  static const signUp = _Paths.signUpPath;
  static const dashboard = _Paths.dashboardPath;
}

abstract class _Paths {
  static const signInPath = "/sign-in";
  static const signUpPath = "/sign-up";
  static const dashboardPath = "/landing-page";
}