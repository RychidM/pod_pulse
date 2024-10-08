import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(title: const Text("sign_up")),
          body: SafeArea(
            child: constraints.maxWidth <= 450.w
                ? const SignUpMobileView()
                : const SignUpTabletView(),
          ),
        );
      },
    );
  }
}
