import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/extensions/widget_extension.dart';
import 'package:masrofy/core/themes/app_colors.dart';
import 'package:masrofy/core/themes/app_sizes.dart';
import 'package:masrofy/features/financial_goals/view/widgets/goal_card.dart';

class GoalsList extends StatelessWidget {
  final List<Map<String, dynamic>> goals;

  const GoalsList({super.key, required this.goals});

  @override
  Widget build(BuildContext context) {
    if (goals.isEmpty) {
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
      itemCount: goals.length,
      separatorBuilder: (_, _) => AppSizes.m.verticalSpace,
      itemBuilder: (context, index) {
        final goal = goals[index];

        return GoalsCard(
          title: goal['title'],
          current: goal['current'],
          target: goal['target'],
          percentage: goal['percentage'],
          progressValue: (goal['progress'] as num).toDouble(),
          icon: goal['icon'],
          color: goal['color'],
        );
      },
    ).paddingHorizontal(AppSizes.s);
  }
}
