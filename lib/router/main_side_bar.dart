import 'package:flutter/material.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';
import 'package:gasly/router/gasly_sidebar.dart';
import 'package:go_router/go_router.dart';

// ─────────────────────────────────────────────────────────────────────────────
// TOP BAR CONFIG — each screen declares its own top bar content
// ─────────────────────────────────────────────────────────────────────────────

class TopBarConfig {
  final Widget title;
  final bool showSearch;
  final bool showNotification;
  final bool showAvatar;

  const TopBarConfig({
    required this.title,
    this.showSearch = true,
    this.showNotification = true,
    this.showAvatar = true,
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// SHELL LAYOUT
// ─────────────────────────────────────────────────────────────────────────────

class MainSideBarLayout extends StatelessWidget {
  final Widget child;
  final String currentLocation;

  const MainSideBarLayout({
    super.key,
    required this.child,
    required this.currentLocation,
  });

  GaslyRoute _getSelectedRoute(String location) {
    return GaslyRoute.values.firstWhere(
      (route) => location.startsWith(route.path),
      orElse: () => GaslyRoute.dashboard,
    );
  }

  TopBarConfig _topBarConfig(GaslyRoute route) {
    switch (route) {
      // Dashboard has greeting + subtitle
      case GaslyRoute.dashboard:
        return TopBarConfig(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Hello, Micheal!',
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Here is what is happening today.',
                style: TextStyle(color: AppColors.greyTextColor, fontSize: 12),
              ),
            ],
          ),
        );

      case GaslyRoute.customerList:
      case GaslyRoute.addCustomer:
        return TopBarConfig(
          title: const Text(
            'Customer information',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

      case GaslyRoute.virtualCard:
        return TopBarConfig(
          title: const Text(
            'Virtual Card',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

      case GaslyRoute.cashbackPoints:
        return TopBarConfig(
          title: const Text(
            'Cashback Points',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

      case GaslyRoute.giftCard:
        return TopBarConfig(
          title: const Text(
            'Gift Card',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

      case GaslyRoute.transactions:
        return TopBarConfig(
          title: const Text(
            'Transactions',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

      case GaslyRoute.gasStations:
        return TopBarConfig(
          title: const Text(
            'Gas Stations',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

      case GaslyRoute.referrals:
        return TopBarConfig(
          title: const Text(
            'Referrals',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

      case GaslyRoute.profileSettings:
        return TopBarConfig(
          title: const Text(
            'Profile Settings',
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedRoute = _getSelectedRoute(currentLocation);
    final topBar = _topBarConfig(selectedRoute);

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: Row(
        children: [
          // ── Sidebar ──────────────────────────────────────────
          GaslySidebar(
            selectedRoute: selectedRoute,
            onRouteTap: (route) {
              if (route.path != currentLocation) context.go(route.path);
            },
          ),

          // ── Right side: top bar + screen ─────────────────────
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _TopBar(config: topBar),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// TOP BAR WIDGET
// ─────────────────────────────────────────────────────────────────────────────

class _TopBar extends StatelessWidget {
  final TopBarConfig config;
  const _TopBar({required this.config});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        border: Border(bottom: BorderSide(color: AppColors.borderColor)),
      ),
      child: Row(
        children: [
          Expanded(child: config.title),

          if (config.showSearch) ...[
            _SearchBar(),
            AppSpacing.horizontalSpaceMedium,
          ],

          if (config.showNotification) ...[
            _IconBox(icon: Icons.notifications_none_outlined),
            AppSpacing.horizontalSpaceSmall,
          ],

          if (config.showAvatar)
            const CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.primaryColor,
              child: Text(
                'AE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 36,
      decoration: BoxDecoration(
        color: AppColors.lightBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Row(
        children: const [
          SizedBox(width: 10),
          Icon(Icons.search, size: 15, color: AppColors.greyTextColor),
          SizedBox(width: 6),
          Text(
            'Search here...',
            style: TextStyle(color: AppColors.greyTextColor, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class _IconBox extends StatelessWidget {
  final IconData icon;
  const _IconBox({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: AppColors.lightBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Icon(icon, size: 18, color: AppColors.greyTextColor),
    );
  }
}
