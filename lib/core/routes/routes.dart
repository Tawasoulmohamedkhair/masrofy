import 'package:go_router/go_router.dart';
import 'package:masrofy/core/routes/app_routes.dart';
import 'package:masrofy/features/debts/view/screens/debts_screen.dart';
import 'package:masrofy/home_screen.dart';
import 'package:masrofy/settings_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.debts,
  routes: [
    GoRoute(path: AppRoutes.home, builder: (context, state) => HomeScreen()),
    GoRoute(
      path: AppRoutes.settings,
      builder: (context, state) => SettingsScreen(),
    ),
    GoRoute(path: AppRoutes.debts, builder: (context, state) => DebtsScreen()),
  ],
);
