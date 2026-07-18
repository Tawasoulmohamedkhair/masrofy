import 'package:flutter/material.dart';
import 'package:masrofy/core/themes/app_colors.dart';
import 'package:masrofy/features/debts/view/widget/debts_list.dart';

class DebtTabsSection extends StatelessWidget {
  const DebtTabsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> allDebts = [
      {
        'title': 'قرض شخصي',
        'subtitle': 'الأهلي',
        'remaining': '3,000',
        'total': '6,000',
        'percentage': 60,
        'progress': 0.6,
        'color': AppColors.expense,
        'isPaid': false,
      },
      {
        'title': 'بطاقة الائتمان',
        'subtitle': 'البنك التجاري الدولي',
        'remaining': '1,250',
        'total': '2,000',
        'percentage': 37,
        'progress': 0.37,
        'color': AppColors.blue,
        'isPaid': false,
      },
      {
        'title': 'دين لصديق',
        'subtitle': 'أحمد محمد',
        'remaining': '950',
        'total': '1,000',
        'percentage': 95,
        'progress': 0.95,
        'color': AppColors.success,
        'isPaid': false,
      },
      // Mock paid debt for demonstrating tab filtering
      {
        'title': 'دين لـ محمد',
        'subtitle': 'مسترد كامل',
        'remaining': '0',
        'total': '2,000',
        'percentage': 100,
        'progress': 1.0,
        'color': AppColors.success,
        'isPaid': true,
      },
    ];

    final remainingDebts = allDebts
        .where(
          (debt) =>
              !debt['isPaid'] &&
              double.parse((debt['remaining'] as String).replaceAll(',', '')) >
                  0,
        )
        .toList();

    final paidDebts = allDebts
        .where(
          (debt) =>
              debt['isPaid'] ||
              double.parse((debt['remaining'] as String).replaceAll(',', '')) ==
                  0,
        )
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: TabBarView(
            children: [
              DebtsList(debts: allDebts),
              DebtsList(debts: remainingDebts),
              DebtsList(debts: paidDebts),
            ],
          ),
        ),
      ],
    );
  }
}
