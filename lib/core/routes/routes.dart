import 'package:go_router/go_router.dart';
import 'package:masrofy/core/routes/app_routes.dart';
import 'package:masrofy/features/home/view/screens/home_screen.dart';
import 'package:masrofy/settings_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(path: AppRoutes.home, builder: (context, state) => HomeScreen()),
    GoRoute(
      path: AppRoutes.settings,
      builder: (context, state) => SettingsScreen(),
    ),
  ],
);
