part of 'router_imports.dart';

final fRoutes = GoRouter(
  initialLocation: Splash.route,
  routes: [
    GoRoute(path: Splash.route, builder: (_, __) => const Splash()),
    GoRoute(path: Onboard.route, builder: (_, __) => const Onboard()),
    GoRoute(path: Auth.route, builder: (_, __) => const Auth()),
  ],
);
