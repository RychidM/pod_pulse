import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pod_pulse/app/constants/dimension_constants.dart';
import 'package:pod_pulse/app/routes/app_pages.dart';
import 'package:pod_pulse/generated/assets.dart';
import 'package:rmdev_widgets/buttons/rm_button.dart';
import 'package:rmdev_widgets/text_fields/rm_textfield_with_label.dart';

import '../index.dart';

class SignInTabletView extends GetView<SignInController> {
  const SignInTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        color: Color(0xFF101114),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Assets.imagesBG),
        ),
      ),
      child: OrientationBuilder(builder: (context, orientation) {
        return Center(
          child: Align(
            child: ClipRRect(
              clipBehavior: Clip.none,
              borderRadius: BorderRadius.circular(25.r),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -40.w,
                      top: 50.h,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15.w),
                        width: 40.w,
                        // height: orientation == Orientation.landscape ? 280.h : 180.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF3887),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(25.r),
                          ),
                        ),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Powered by",
                                    style: context.textTheme.titleMedium,
                                  ),
                                  10.horizontalSpace,
                                  Image.asset(Assets.imagesRmDevLogo, height: 20.h,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      padding: EdgeInsets.fromLTRB(39.w, 85.h, 39.w, 60.h),
                      width:
                          orientation == Orientation.portrait ? 900.w : 588.w,
                      height:
                          orientation == Orientation.portrait ? 600.h : 673.h,
                      decoration: const BoxDecoration(
                        color: Color(0xC215171C),
                      ),
                      duration: DimensionConsts.animation150Secs,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              Assets.imagesLogo,
                              height: 50.h,
                            ),
                            Gap(20.h),
                            Text(
                              "to continue to podPulse",
                              style: context.textTheme.bodyMedium,
                            ),
                            Gap(39.h),
                            Container(
                              height: 67.h,
                              width: 67.h,
                              padding: EdgeInsets.all(20.w),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                    width: 3.w, color: const Color(0xFF222429)),
                              ),
                              child: Image.asset(Assets.imagesGoogle),
                            ),
                            Gap(43.h),
                            Form(
                              child: RmLabelTextField(
                                label: "Email address",
                                isDarkMode: true,
                                filled: true,
                                hideBorder: true,
                                fillColor: const Color(0xFF1B1F29),
                                labelTextStyle: context.textTheme.titleMedium,
                                onInputChanged: (value) {},
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide: BorderSide(
                                      color: const Color(0xFF222429),
                                      width: 1.22.w),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide: BorderSide(
                                      color: const Color(0xFFFF3887),
                                      width: 1.22.w),
                                ),
                              ),
                            ),
                            20.verticalSpace,
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Forgot password")
                              ],
                            ),
                            20.verticalSpace,
                            RmButton(
                              onTap: () => Get.toNamed(AppRoutes.dashboard),
                              label: "CONTINUE",
                              color: const Color(0xFFFF3887),
                            ),
                            40.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: "No account?",
                                      style: context.textTheme.titleMedium,
                                      children: [
                                        TextSpan(
                                          text: " Sing up",
                                          style: context.textTheme.titleMedium
                                              ?.copyWith(
                                            color: const Color(0xFFFF3887),
                                          ),
                                        ),
                                      ]),
                                ),
                                Row(
                                  children: [
                                    const Text("Help"),
                                    20.horizontalSpace,
                                    const Text("Privacy"),
                                    20.horizontalSpace,
                                    const Text("Terms"),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
