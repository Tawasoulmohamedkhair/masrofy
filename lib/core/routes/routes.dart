import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:masrofy/core/routes/app_routes.dart';
import 'package:masrofy/features/home/view/screens/home_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  //  final authRepo = ref.read(authRepositoryProvider);
  return GoRouter(
    initialLocation: AppRoutes.home,
    // redirect: (context, state) {
    //   final isLoggedIn = authRepo.currentUser != null;
    //   final isAuthRoute = state.matchedLocation == AppRoutes.auth;
    //   if (!isLoggedIn) {
    //     return isAuthRoute ? null : AppRoutes.auth;
    //   }
    //   if (isAuthRoute) return AppRoutes.home;
    //   return null;
    // },
    routes: [
      // GoRoute(path: AppRoutes.auth, builder: (context, state) => AuthPage()),
      GoRoute(path: AppRoutes.home, builder: (context, state) => HomeScreen()),
      // GoRoute(path: AppRoutes.goals, builder: (context, state) => GoalsPage()),
      //GoRoute(path: AppRoutes.depts, builder: (context, state) => DebtsPage()),
      // GoRoute(
      //   path: AppRoutes.income,
      //   builder: (context, state) => IncomePage(),
      // ),
    ],
  );
});
