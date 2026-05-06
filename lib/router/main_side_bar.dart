import 'package:flutter/material.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/router/gasly_sidebar.dart';
import 'package:go_router/go_router.dart';

class MainSideBarLayout extends StatelessWidget {
  final Widget child;
  final String currentLocation;

  const MainSideBarLayout({
    super.key,
    required this.child,
    required this.currentLocation,
  });

  /// Helper: converts route path → sidebar enum
  GaslyRoute _getSelectedRoute(String location) {
    if (location.contains('/dashboard')) return GaslyRoute.dashboard;
    if (location.contains('/customers')) return GaslyRoute.customerList;
    if (location.contains('/add-customer')) return GaslyRoute.addCustomer;
    if (location.contains('/virtual-card')) return GaslyRoute.virtualCard;
    if (location.contains('/cashback')) return GaslyRoute.cashbackPoints;
    if (location.contains('/gift-card')) return GaslyRoute.giftCard;
    if (location.contains('/transactions')) return GaslyRoute.transactions;
    if (location.contains('/gas-stations')) return GaslyRoute.gasStations;
    if (location.contains('/referrals')) return GaslyRoute.referrals;
    if (location.contains('/profile')) return GaslyRoute.profileSettings;

    return GaslyRoute.dashboard;
  }

  /// Helper: converts enum → route path
  String _routeToPath(GaslyRoute route) {
    switch (route) {
      case GaslyRoute.dashboard:
        return '/dashboard';
      case GaslyRoute.customerList:
        return '/customers';
      case GaslyRoute.addCustomer:
        return '/add-customer';
      case GaslyRoute.virtualCard:
        return '/virtual-card';
      case GaslyRoute.cashbackPoints:
        return '/cashback';
      case GaslyRoute.giftCard:
        return '/gift-card';
      case GaslyRoute.transactions:
        return '/transactions';
      case GaslyRoute.gasStations:
        return '/gas-stations';
      case GaslyRoute.referrals:
        return '/referrals';
      case GaslyRoute.profileSettings:
        return '/profile-settings';
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedRoute = _getSelectedRoute(currentLocation);

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: Row(
        children: [
          /// ─────────────────────────────────────────────
          /// SIDEBAR (LEFT)
          /// ─────────────────────────────────────────────
          GaslySidebar(
            selectedRoute: selectedRoute,
            onRouteTap: (route) {
              final path = _routeToPath(route);

              /// prevents rebuilding same page
              if (path != currentLocation) {
                context.go(path);
              }
            },
          ),

          /// ─────────────────────────────────────────────
          /// MAIN CONTENT (RIGHT)
          /// ─────────────────────────────────────────────
          Expanded(
            child: Column(
              children: [
                /// optional top spacing/header area
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: AppColors.borderColor),
                    ),
                  ),
                  child: Text(
                    _getPageTitle(selectedRoute),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ),

                /// actual screen content
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getPageTitle(GaslyRoute route) {
    switch (route) {
      case GaslyRoute.dashboard:
        return "Dashboard";
      case GaslyRoute.customerList:
        return "Customers";
      case GaslyRoute.addCustomer:
        return "Add Customer";
      case GaslyRoute.virtualCard:
        return "Virtual Card";
      case GaslyRoute.cashbackPoints:
        return "Cashback Points";
      case GaslyRoute.giftCard:
        return "Gift Card";
      case GaslyRoute.transactions:
        return "Transactions";
      case GaslyRoute.gasStations:
        return "Gas Stations";
      case GaslyRoute.referrals:
        return "Referrals";
      case GaslyRoute.profileSettings:
        return "Profile Settings";
    }
  }
}
