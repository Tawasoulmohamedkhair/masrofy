import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/extensions/widget_extension.dart';
import 'package:masrofy/core/themes/app_sizes.dart';
import 'package:masrofy/core/widgets/custom_app_scaffold.dart';
import 'package:masrofy/features/debts/view/widget/app_bar_debt.dart';
import 'package:masrofy/features/debts/view/widget/build_tab_item.dart';
import 'package:masrofy/features/debts/view/widget/debts_summary_card.dart';
import 'package:masrofy/features/debts/view/widget/debts_tab_section.dart';

class DebtsScreen extends StatefulWidget {
  const DebtsScreen({super.key});

  @override
  State<DebtsScreen> createState() => _DebtsScreenState();
}

class _DebtsScreenState extends State<DebtsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: AppScaffold(
        isDark: context.isDarkMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Row
            AppBarDebts(),

            AppSizes.m.verticalSpace,

            // Red Coral Gradient Card
            const DebtsSummaryCard(),
            AppSizes.l.verticalSpace,

            // Custom tab bar
            BuildTabItem(),
            AppSizes.l.verticalSpace,

            Expanded(child: DebtTabsSection()),
          ],
        ).paddingAll(AppSizes.screenPadding),
      ),
    );
  }
}
