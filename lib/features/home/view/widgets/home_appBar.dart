import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/widget_extension.dart';
import 'package:masrofy/core/themes/app_sizes.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(radius: AppSizes.rL, child: Icon(Icons.person)),
        AppSizes.s.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('مرحبا توسل'),
            AppSizes.s.verticalSpace,
            Text('التحكم في أموالك هو أول خطوة للحرية الماليه'),
          ],
        ),
      ],
    ).paddingAll(AppSizes.s);
  }
}
