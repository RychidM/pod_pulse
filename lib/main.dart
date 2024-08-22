import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:pod_pulse/app/routes/app_pages.dart';
import 'package:pod_pulse/app/utils/app_theme.dart';

void main() {
  runApp(const PodPulse());
}

class PodPulse extends StatelessWidget {
  const PodPulse({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: const [
        GestureType.onTap,
        GestureType.onPanUpdateDownDirection,
      ],
      child: LayoutBuilder(
        builder: (context, constraints) => ScreenUtilInit(
          designSize: constraints.maxWidth <= 450
              ? const Size(430, 932)
              : const Size(1440, 1024),
          minTextAdapt: true,
          ensureScreenSize: true,
          useInheritedMediaQuery: true,
          builder: (context, _) => GetMaterialApp(
            title: 'PodPulse',
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.initialPage,
            getPages: AppPages.routes,
            theme: PodPulseTheme.pulseTheme,
            defaultTransition: Transition.rightToLeftWithFade,
          ),
        ),
      ),
    );
  }
}
