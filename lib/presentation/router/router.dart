part of 'router_imports.dart';

final fRoutes = GoRouter(
  initialLocation: Splash.route,
  routes: [
    GoRoute(path: Splash.route, builder: (_, __) => const Splash()),
    GoRoute(path: Onboard.route, builder: (_, __) => const Onboard()),
    GoRoute(path: Auth.route, builder: (_, __) => const Auth()),
    GoRoute(path: Login.route, builder: (_, __) => const Login()),
    GoRoute(path: Register.route, builder: (_, __) => const Register()),
    GoRoute(path: General.route, builder: (_, __) => const General()),
    GoRoute(path: HomeDetails.route, builder: (_, __) => const HomeDetails()),
  ],
);
