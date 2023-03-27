import 'package:flutter_firebase/auth/login/screen/login_screen.dart';
import 'package:flutter_firebase/auth/splash_screen/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/splash_screen",
  debugLogDiagnostics: true,
  routes: <RouteBase>[
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
