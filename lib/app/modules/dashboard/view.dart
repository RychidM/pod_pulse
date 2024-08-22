import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(title: const Text("dashboard")),
          body: SafeArea(
            child: constraints.maxWidth <= 450.w
                ? const DashboardMobileView()
                : const DashboardTabletView(),
          ),
        );
      },
    );
  }
}
