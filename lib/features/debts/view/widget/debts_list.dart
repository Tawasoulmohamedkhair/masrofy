import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/extensions/widget_extension.dart';
import 'package:masrofy/core/themes/app_colors.dart';
import 'package:masrofy/core/themes/app_sizes.dart';
import 'package:masrofy/features/debts/view/widget/debts.dart';

class DebtsList extends StatelessWidget {
  final List<Map<String, dynamic>> debts;

  const DebtsList({super.key, required this.debts});

  @override
  Widget build(BuildContext context) {
    if (debts.isEmpty) {
      return Center(
        child: Text(
          'لا توجد أهداف هنا',
          style: context.textTheme.bodyMedium?.copyWith(
            color: AppColors.grey500,
          ),
        ),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      itemCount: debts.length,
      separatorBuilder: (_, _) => AppSizes.m.verticalSpace,
      itemBuilder: (context, index) {
        final debt = debts[index];

        return DebtCard(
          title: debt['title'] as String,
          subtitle: debt['subtitle'] as String,
          remaining: debt['remaining'] as String,
          total: debt['total'] as String,
          percentage: debt['percentage'] as int,
          progressValue: debt['progress'] as double,
          progressColor: debt['color'] as Color,
        );
      },
    ).paddingHorizontal(AppSizes.s);
  }
}
