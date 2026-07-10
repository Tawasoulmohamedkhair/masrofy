import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/themes/app_colors.dart';
import 'package:masrofy/features/financial_goals/view/widgets/goal_list.dart';

class GoalsTabsSection extends StatelessWidget {
  const GoalsTabsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> allGoals = [
      {
        'title': 'شراء سيارة',
        'current': '250,000',
        'target': '250,000',
        'percentage': 100,
        'progress': 1,
        'icon': Icons.directions_car_rounded,
        'color': AppColors.blue,
        'isActive': false,
      },
      {
        'title': 'سفر تركيا',
        'current': '12,500',
        'target': '25,000',
        'percentage': 50,
        'progress': 0.5,
        'icon': Icons.airplanemode_active_rounded,
        'color': AppColors.success,
        'isActive': true,
      },
      {
        'title': 'صندوق الطوارئ',
        'current': '8,000',
        'target': '10,000',
        'percentage': 80,
        'progress': 0.8,
        'icon': Icons.shield_rounded,
        'color': AppColors.success,
        'isActive': true,
      },
      {
        'title': 'شراء منزل',
        'current': '0',
        'target': '500,000',
        'percentage': 0,
        'progress': 0.0,
        'icon': Icons.home_rounded,
        'color': AppColors.expense,
        'isActive': true,
      },

      {
        'title': 'هاتف جديد',
        'current': '15,000',
        'target': '15,000',
        'percentage': 100,
        'progress': 1.0,
        'icon': Icons.phone_android_rounded,
        'color': AppColors.success,
        'isActive': false,
      },
    ];

    final activeGoals = allGoals
        .where((goal) => goal['isActive'] == true)
        .toList();

    final completedGoals = allGoals
        .where((goal) => goal['isActive'] == false)
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 350.h,
          child: TabBarView(
            children: [
              GoalsList(goals: activeGoals),
              GoalsList(goals: completedGoals),
            ],
          ),
        ),
      ],
    );
  }
}
