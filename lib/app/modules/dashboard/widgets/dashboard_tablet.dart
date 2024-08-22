import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardTabletView extends StatelessWidget {
  const DashboardTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Stack(
        children: [
          Positioned(
            top: 0,
            left: 5.w,
            right: 5.w,
            bottom: 102.h,
            child: OrientationBuilder(builder: (context, orientation) {
              return Row(
                children: [
                  AnimatedContainer(
                    width: constrains.maxWidth <= 1000 ||
                            orientation == Orientation.portrait
                        ? 100.w
                        : 350.w,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8.r)),
                    duration: const Duration(milliseconds: 150),
                  ),
                  5.0.horizontalSpace,
                  Expanded(
                    flex: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                  ),
                  5.horizontalSpace,
                  AnimatedContainer(
                    width: 350.w,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(8.r)),
                    duration: const Duration(milliseconds: 250),
                  )
                ],
              );
            }),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100.h,
              width: double.maxFinite,
              color: Colors.blue,
            ),
          )
        ],
      );
    });
  }
}
