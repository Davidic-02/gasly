import 'package:flutter/material.dart';
import 'package:gasly/presentation/screens/auth/forgot_password._screen.dart';
import 'package:gasly/presentation/screens/auth/login.dart';
import 'package:gasly/presentation/screens/auth/register.dart';
import 'package:gasly/presentation/screens/tabs/dashboard.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: LoginScreen.routeName,
  debugLogDiagnostics: true,

  routes: [
    // ── Auth ──────────────────────────────────────
    GoRoute(
      path: LoginScreen.routeName,
      name: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: RegisterScreen.routeName,
      name: RegisterScreen.routeName,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: ForgotPasswordScreen.routeName,
      name: ForgotPasswordScreen.routeName,
      builder: (context, state) => const ForgotPasswordScreen(),
    ),

    // ── Dashboard ─────────────────────────────────
    GoRoute(
      path: Dashboard.routeName,
      name: Dashboard.routeName,
      builder: (context, state) => const Dashboard(),
    ),

    // ── Customer (uncomment as you build) ─────────
    // GoRoute(
    //   path: CustomerScreen.routeName,
    //   name: CustomerScreen.routeName,
    //   builder: (context, state) => const CustomerScreen(),
    // ),
    // GoRoute(
    //   path: '${CustomerDetailScreen.routeName}/:id',
    //   name: CustomerDetailScreen.routeName,
    //   builder: (context, state) {
    //     final customerId = state.pathParameters['id']!;
    //     return CustomerDetailScreen(customerId: customerId);
    //   },
    // ),
  ],

  // Global error screen
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text('Page not found: ${state.error}'))),
);
