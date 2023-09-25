import "package:command_dex/page/home.dart";
import 'package:command_dex/page/landing_page.dart';
import "package:command_dex/page/login_page.dart";
import "package:command_dex/routes/route_names.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class RoutesConfig {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
        name: RouteNames.landingPage,
        path: '/',
        builder: ((context, state) => const LandingPage()),
      ),
      GoRoute(
        name: RouteNames.homePage,
        path: '/home',
        builder: ((context, state) => const Home()),
        // routes: [
        //   ...
        // ],
      ),
      GoRoute(
        name: RouteNames.auth,
        path: '/auth',
        builder: ((context, state) => const AuthPage()),
      ),
    ],
  );
}
