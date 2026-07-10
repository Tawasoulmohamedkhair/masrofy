import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/themes/app_sizes.dart';
import 'package:masrofy/core/widgets/custom_app_scaffold.dart';
import 'package:masrofy/features/financial_goals/view/widgets/app_bar_goal.dart';
import 'package:masrofy/features/financial_goals/view/widgets/build_tab_item.dart';
import 'package:masrofy/features/financial_goals/view/widgets/goal_tab_section.dart';
import 'package:masrofy/features/financial_goals/view/widgets/goals_summary_card.dart';

class FinancialGoalsScreen extends StatelessWidget {
  const FinancialGoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AppScaffold(
        isDark: context.isDarkMode,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppSizes.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppBarGoal(),

                  AppSizes.m.verticalSpace,

                  GoalsSummaryCard(),

                  AppSizes.l.verticalSpace,
                  BuildTabItem(),
                ],
              ),
            ),

            Expanded(child: GoalsTabsSection()),
          ],
        ),
      ),
    );
  }
}
