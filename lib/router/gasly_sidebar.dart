import 'package:flutter/material.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';

// ─────────────────────────────────────────────────────────────────────────────
// NAV DESTINATION MODEL
// ─────────────────────────────────────────────────────────────────────────────

enum GaslyRoute {
  dashboard,
  customerList,
  addCustomer, // ← new entry
  virtualCard,
  cashbackPoints,
  giftCard,
  transactions,
  gasStations,
  referrals,
  profileSettings,
}

class _NavItem {
  final IconData icon;
  final String label;
  final GaslyRoute route;
  final bool hasDividerAfter;
  final bool isSubItem; // indented under Customer information

  const _NavItem({
    required this.icon,
    required this.label,
    required this.route,
    this.hasDividerAfter = false,
    this.isSubItem = false,
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// SIDEBAR WIDGET
// ─────────────────────────────────────────────────────────────────────────────

class GaslySidebar extends StatelessWidget {
  final GaslyRoute selectedRoute;
  final ValueChanged<GaslyRoute> onRouteTap;

  const GaslySidebar({
    super.key,
    required this.selectedRoute,
    required this.onRouteTap,
  });

  static const List<_NavItem> _items = [
    _NavItem(
      icon: Icons.grid_view_rounded,
      label: 'Dashboard',
      route: GaslyRoute.dashboard,
    ),
    _NavItem(
      icon: Icons.people_alt_outlined,
      label: 'Customer information',
      route: GaslyRoute.customerList,
    ),
    _NavItem(
      icon: Icons.person_add_outlined,
      label: 'Add Customer',
      route: GaslyRoute.addCustomer,
      isSubItem: true, // rendered indented under Customer information
    ),
    _NavItem(
      icon: Icons.credit_card_outlined,
      label: 'Virtual Card',
      route: GaslyRoute.virtualCard,
    ),
    _NavItem(
      icon: Icons.stars_outlined,
      label: 'Cashback Points',
      route: GaslyRoute.cashbackPoints,
    ),
    _NavItem(
      icon: Icons.card_giftcard_outlined,
      label: 'Gift card',
      route: GaslyRoute.giftCard,
    ),
    _NavItem(
      icon: Icons.swap_horiz_rounded,
      label: 'Transactions',
      route: GaslyRoute.transactions,
      hasDividerAfter: true,
    ),
    _NavItem(
      icon: Icons.local_gas_station_outlined,
      label: 'Gas Stations',
      route: GaslyRoute.gasStations,
    ),
    _NavItem(
      icon: Icons.group_add_outlined,
      label: 'Referrals',
      route: GaslyRoute.referrals,
    ),
    _NavItem(
      icon: Icons.settings_outlined,
      label: 'Profile settings',
      route: GaslyRoute.profileSettings,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: AppColors.sidebarDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Logo ──────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.local_gas_station,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                AppSpacing.horizontalSpaceSmall,
                const Text(
                  'Gasly App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.3,
                  ),
                ),
              ],
            ),
          ),

          // ── Nav items ──────────────────────────────────────────
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                final isSelected = item.route == selectedRoute;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SidebarTile(
                      item: item,
                      isSelected: isSelected,
                      onTap: () => onRouteTap(item.route),
                    ),
                    if (item.hasDividerAfter)
                      Divider(
                        color: AppColors.secondaryBlue,
                        height: 20,
                        thickness: 1,
                      ),
                  ],
                );
              },
            ),
          ),

          // ── User profile at bottom ─────────────────────────────
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.secondaryBlue, width: 1),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.primaryColor,
                  child: const Text(
                    'AE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                AppSpacing.horizontalSpaceSmall,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Alison Eyo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'alison.e@rayna.ui',
                        style: TextStyle(
                          color: AppColors.greyTextColor,
                          fontSize: 10,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// SIDEBAR TILE
// ─────────────────────────────────────────────────────────────────────────────

class _SidebarTile extends StatelessWidget {
  final _NavItem item;
  final bool isSelected;
  final VoidCallback onTap;

  const _SidebarTile({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  @override
  Widget build(BuildContext context) {
    final double leftPad = item.isSubItem ? 28 : 12;

    return Stack(
      children: [
        /// MAIN TILE
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.symmetric(vertical: 2),
            padding: EdgeInsets.fromLTRB(leftPad, 10, 12, 10),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.secondaryBlue : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                if (item.isSubItem) ...[
                  Container(
                    width: 1,
                    height: 16,
                    color: isSelected
                        ? AppColors.primaryColor
                        : AppColors.greyTextColor.withValues(alpha: .4),
                    margin: const EdgeInsets.only(right: 8),
                  ),
                ],
                Icon(
                  item.icon,
                  size: item.isSubItem ? 15 : 18,
                  color: isSelected ? Colors.white : AppColors.greyTextColor,
                ),
                AppSpacing.horizontalSpaceSmall,
                Expanded(
                  child: Text(
                    item.label,
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white
                          : AppColors.greyTextColor,
                      fontSize: item.isSubItem ? 12 : 13,
                      fontWeight: isSelected
                          ? FontWeight.w500
                          : FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        /// ANIMATED LEFT INDICATOR
        AnimatedPositioned(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          left: 0,
          top: 6,
          bottom: 6,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: isSelected ? 4 : 0,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}
