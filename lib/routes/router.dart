import 'package:flutter_firebase/core/auth/login/screen/login_screen.dart';
import 'package:flutter_firebase/core/auth/splash_screen/screen/splash_screen.dart';
import 'package:flutter_firebase/modules/home/screen/bottomnavigation_bar.dart';
import 'package:flutter_firebase/modules/home/screen/home_screen.dart';
import 'package:flutter_firebase/modules/trending/screen/trending_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/splash_screen",
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    ShellRoute(
      pageBuilder: (context, state, child) => NoTransitionPage(
          name: state.name,
          key: state.pageKey,
          child: BottomNavigation(
            child: child,
          )),
      builder: (context, state, child) {
        return BottomNavigation(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: '/trending',
          builder: (context, state) {
            return const TrendingScreen();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/splash_screen',
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/login/screen',
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
  ],
);
