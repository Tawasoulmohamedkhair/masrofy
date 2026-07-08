import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/extensions/widget_extension.dart';

import 'package:masrofy/core/themes/app_sizes.dart';
import 'package:masrofy/core/widgets/custom_app_scaffold.dart';

import 'package:masrofy/features/home/view/widgets/home_appbar.dart';
import 'package:masrofy/features/home/view/widgets/overview_section.dart';
import 'package:masrofy/features/home/view/widgets/quick_tools.dart';
import 'package:masrofy/features/home/view/widgets/summery_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      isDark: context.isDarkMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(),
            AppSizes.l.verticalSpace,
            SummeryCard(),
            AppSizes.l.verticalSpace,

            QuickTools(),
            AppSizes.l.verticalSpace,

            OverviewSection(),
          ],
        ).paddingAll(AppSizes.s),
      ),
    );
  }
}
