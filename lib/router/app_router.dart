import 'package:flutter/material.dart';
import 'package:gasly/presentation/screens/auth/forgot_password._screen.dart';
import 'package:gasly/presentation/screens/auth/login.dart';
import 'package:gasly/presentation/screens/auth/register.dart';
import 'package:gasly/presentation/screens/tabs/add_customer.dart';
import 'package:gasly/presentation/screens/tabs/cash_back.dart';
import 'package:gasly/presentation/screens/tabs/customer_list.dart';
import 'package:gasly/presentation/screens/tabs/dashboard.dart';
import 'package:gasly/presentation/screens/tabs/gas_station.dart';
import 'package:gasly/presentation/screens/tabs/gift_card.dart';
import 'package:gasly/presentation/screens/tabs/profile_settings.dart';
import 'package:gasly/presentation/screens/tabs/referrals.dart';
import 'package:gasly/presentation/screens/tabs/transaction.dart';
import 'package:gasly/presentation/screens/tabs/virtual_card.dart';
import 'package:gasly/router/main_side_bar.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: LoginScreen.routeName,
  debugLogDiagnostics: true,
  routes: [
    // ── Auth (No Sidebar) ──────────────────────────
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

    // ── Main App Shell (With Sidebar) ──────────────
    ShellRoute(
      builder: (context, state, child) {
        // This is where you return your Sidebar layout
        // with the 'child' being the actual page content
        return MainSideBarLayout(
          child: child,
          currentLocation: state.uri.toString(),
        );
      },
      routes: [
        GoRoute(
          path: Dashboard.routeName,
          name: Dashboard.routeName,
          builder: (context, state) => const Dashboard(),
        ),
        GoRoute(
          path: CustomerListScreen.routeName,
          name: CustomerListScreen.routeName,
          builder: (context, state) => const CustomerListScreen(),
        ),
        GoRoute(
          path: AddCustomerScreen.routeName,
          name: AddCustomerScreen.routeName,
          builder: (context, state) => const AddCustomerScreen(),
        ),
        // GoRoute(
        // path: '${CustomerDetailScreen.routeName}/:id',
        //name: CustomerDetailScreen.routeName,
        //builder: (context, state) {
        //final customerId = state.pathParameters['id']!;
        //return CustomerDetailScreen(customerId: customerId);
        //},
        //),
        GoRoute(
          path: VirtualCardScreen.routeName,
          name: VirtualCardScreen.routeName,
          builder: (context, state) => const VirtualCardScreen(),
        ),
        GoRoute(
          path: CashbackPointsScreen.routeName,
          name: CashbackPointsScreen.routeName,
          builder: (context, state) => const CashbackPointsScreen(),
        ),
        GoRoute(
          path: GiftCardScreen.routeName,
          name: GiftCardScreen.routeName,
          builder: (context, state) => const GiftCardScreen(),
        ),
        GoRoute(
          path: TransactionsScreen.routeName,
          name: TransactionsScreen.routeName,
          builder: (context, state) => const TransactionsScreen(),
        ),
        GoRoute(
          path: GasStationsScreen.routeName,
          name: GasStationsScreen.routeName,
          builder: (context, state) => const GasStationsScreen(),
        ),
        GoRoute(
          path: ReferralsScreen.routeName,
          name: ReferralsScreen.routeName,
          builder: (context, state) => const ReferralsScreen(),
        ),
        GoRoute(
          path: ProfileSettingsScreen.routeName,
          name: ProfileSettingsScreen.routeName,
          builder: (context, state) => const ProfileSettingsScreen(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text('Page not found: ${state.error}'))),
);
