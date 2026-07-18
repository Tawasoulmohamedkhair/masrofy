import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/extensions/num_extension.dart';
import 'package:masrofy/core/themes/app_colors.dart';
import 'package:masrofy/core/themes/app_sizes.dart';

class GoalsCard extends StatelessWidget {
  const GoalsCard({
    super.key,
    required this.title,
    required this.current,
    required this.target,
    required this.percentage,
    required this.progressValue,
    required this.icon,
    required this.color,
  });
  final String title;
  final String current;
  final String target;
  final int percentage;
  final double progressValue;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;

    return Container(
      padding: 16.allPadding,
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.rL),
        border: Border.all(
          color: isDark ? AppColors.borderDark : AppColors.borderLight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(AppSizes.rM),
                ),
                child: Icon(icon, color: color, size: AppSizes.iconM),
              ),
              AppSizes.m.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: context.textTheme.titleMedium),
                  4.verticalSpace,
                  Text('$current EGP', style: context.textTheme.bodyMedium),
                  2.verticalSpace,
                  Text(
                    'من $target EGP',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: isDark
                          ? AppColors.textSecondaryDark
                          : AppColors.textSecondaryLight,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Row(
            children: [
              Text(
                '$percentage%',
                style: context.textTheme.bodySmall?.copyWith(
                  color: isDark
                      ? AppColors.textSecondaryDark
                      : AppColors.textSecondaryLight,
                ),
              ),
              8.horizontalSpace,
              SizedBox(
                width: 80.w,
                child: ClipRRect(
                  borderRadius: 10.r.radius,
                  child: LinearProgressIndicator(
                    value: progressValue,
                    minHeight: 6.h,
                    backgroundColor: isDark
                        ? AppColors.borderDark
                        : AppColors.grey100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
