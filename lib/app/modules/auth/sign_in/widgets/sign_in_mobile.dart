import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:rmdev_widgets/buttons/rm_button.dart';
import 'package:rmdev_widgets/text_fields/rm_textfield_with_label.dart';

import '../../../../../generated/assets.dart';
import '../../../../constants/dimension_constants.dart';
import '../../../../routes/app_pages.dart';

class SignInMobileView extends StatelessWidget {
  const SignInMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: AnimatedContainer(
                padding: EdgeInsets.fromLTRB(29.w, 75.h, 29.w, 20.h),
                height: 643.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color(0xC215171C),
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
                      Gap(15.h),
                      Text(
                        "to continue to podPulse",
                        style: context.textTheme.bodyMedium
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      Gap(29.h),
                      Container(
                        height: 67.h,
                        width: 67.h,
                        padding: EdgeInsets.all(15.w),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              width: 3.w, color: const Color(0xFF222429)),
                        ),
                        child: Image.asset(Assets.imagesGoogle),
                      ),
                      Gap(33.h),
                      Form(
                        child: RmLabelTextField(
                          label: "Email address",
                          isDarkMode: true,
                          filled: true,
                          hideBorder: true,
                          fillColor: const Color(0xFF1B1F29),
                          labelTextStyle: context.textTheme.bodyMedium,
                          onInputChanged: (value) {},
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xFF222429), width: 1.22.w),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: const Color(0xFFFF3887), width: 1.22.w),
                          ),
                        ),
                      ),
                      20.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot password",
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      20.verticalSpace,
                      RmButton(
                        onTap: () => Get.toNamed(AppRoutes.dashboard),
                        label: "CONTINUE",
                        color: const Color(0xFFFF3887),
                        buttonCornerRadius: 10.r,
                        height: 50.h,
                        // labelSize: 40.sp,
                      ),
                      40.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "No account?",
                                style: context.textTheme.bodyMedium?.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                                children: [
                                  TextSpan(
                                    text: " Sing up",
                                    style:
                                        context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14.sp,
                                      color: const Color(0xFFFF3887),
                                    ),
                                  ),
                                ]),
                          ),
                          Row(
                            children: [
                              Text("Help",
                                  style: context.textTheme.bodyMedium
                                      ?.copyWith(fontSize: 14.sp)),
                              10.horizontalSpace,
                              Text("Privacy",
                                  style: context.textTheme.bodyMedium
                                      ?.copyWith(fontSize: 14.sp)),
                              10.horizontalSpace,
                              Text("Terms",
                                  style: context.textTheme.bodyMedium
                                      ?.copyWith(fontSize: 14.sp)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
