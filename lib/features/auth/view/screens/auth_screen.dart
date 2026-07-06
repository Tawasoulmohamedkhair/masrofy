import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/extensions/widget_extension.dart';
import 'package:masrofy/core/themes/app_colors.dart';
import 'package:masrofy/core/themes/app_sizes.dart';
import 'package:masrofy/core/widgets/custom_app_scaffold.dart';
import 'package:masrofy/features/auth/view/widgets/app_logo.dart';
import 'package:masrofy/features/auth/view/widgets/auth_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    return AppScaffold(
      isDark: isDark,
      child: Column(
        children: [
          AppSizes.huge.verticalSpace,
          AppLogo(),
          AppSizes.huge.verticalSpace,
          Text(
            'مصروفي',
            style: context.textTheme.displayLarge!.copyWith(
              color: isDark ? AppColors.white : AppColors.primary,
            ),
          ),
          AppSizes.xl.verticalSpace,
          Text(
            'مرحبا بك مجددا في مصروفي',
            style: context.textTheme.titleSmall!.copyWith(
              color: isDark ? AppColors.white : AppColors.primary,
            ),
          ),
          AppSizes.xl.verticalSpace,
          Text(
            "أدر مصروفاتك وديونك وأهدافك المالية في مكان واحد",
            style: context.textTheme.titleSmall!.copyWith(
              color: isDark ? AppColors.white : AppColors.primary,
            ),
          ),
          Spacer(),

          AuthBtn().paddingHorizontal(AppSizes.s),
          AppSizes.xxxl.verticalSpace,
        ],
      ),
    );
  }
}
