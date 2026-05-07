import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gasly/bloc/customer/customer_bloc.dart';
import 'package:gasly/models/customer_model.dart';
import 'package:gasly/constants/app_colors.dart';
import 'package:gasly/constants/app_spacing.dart';

class CustomerListScreen extends StatefulWidget {
  static const String routeName = '/customers';
  const CustomerListScreen({super.key});

  @override
  State<CustomerListScreen> createState() => _CustomerListScreenState();
}

class _CustomerListScreenState extends State<CustomerListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CustomerBloc>().add(const CustomerEvent.fetchCustomers());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Header row ─────────────────────────────────────
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Customer information',
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.4,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Showing data over the last 30 days',
                          style: TextStyle(
                            color: AppColors.greyTextColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Export CSV — fixed width, no overflow
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.borderColor),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.download_outlined,
                            size: 15,
                            color: AppColors.primaryTextColor,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Export CSV',
                            style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              AppSpacing.verticalSpaceLarge,

              // ── Filter row ─────────────────────────────────────
              Row(
                children: [
                  // Status dropdown chip
                  _FilterDropChip(
                    label: 'Status',
                    onTap: () => _showStatusFilter(context),
                  ),

                  AppSpacing.horizontalSpaceSmall,

                  // Active filter chip shown when filter is applied
                  if (state.activeFilter != 'All') ...[
                    _ActiveChip(
                      label: state.activeFilter,
                      onRemove: () => context.read<CustomerBloc>().add(
                        const CustomerEvent.filterByStatus('All'),
                      ),
                    ),
                    AppSpacing.horizontalSpaceSmall,
                  ],

                  const Spacer(),

                  // Result count
                  if (state.fetchStatus.isSuccess)
                    Text(
                      'Showing 1–${state.filteredCustomers.length} of ${state.customers.length} results',
                      style: const TextStyle(
                        color: AppColors.greyTextColor,
                        fontSize: 12,
                      ),
                    ),
                ],
              ),

              AppSpacing.verticalSpaceLarge,

              // ── Table ──────────────────────────────────────────
              _buildTable(context, state),
            ],
          ),
        );
      },
    );
  }

  void _showStatusFilter(BuildContext context) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Navigator.of(context).overlay!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(
          button.size.bottomRight(Offset.zero),
          ancestor: overlay,
        ),
      ),
      Offset.zero & overlay.size,
    );

    showMenu<String>(
      context: context,
      position: position,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      items: [
        'All',
        'Active',
        'Inactive',
      ].map((s) => PopupMenuItem(value: s, child: Text(s))).toList(),
    ).then((value) {
      if (value != null) {
        context.read<CustomerBloc>().add(CustomerEvent.filterByStatus(value));
      }
    });
  }

  Widget _buildTable(BuildContext context, CustomerState state) {
    if (state.fetchStatus.isInProgress) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(48),
          child: CircularProgressIndicator(color: AppColors.primaryColor),
        ),
      );
    }

    if (state.filteredCustomers.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(48),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Column(
          children: [
            Icon(
              Icons.people_outline,
              size: 48,
              color: AppColors.greyTextColor.withValues(alpha: .4),
            ),
            AppSpacing.verticalSpaceMedium,
            const Text(
              'No customers found',
              style: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            AppSpacing.verticalSpaceSmall,
            const Text(
              'Add your first customer to get started',
              style: TextStyle(color: AppColors.greyTextColor, fontSize: 12),
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        children: [
          // ── Table header (dark) ───────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: const BoxDecoration(
              color: AppColors.tableHeaderBg,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const _TableHeaderRow(),
          ),

          // ── Rows ─────────────────────────────────────────────
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.filteredCustomers.length,
            itemBuilder: (context, index) {
              final customer = state.filteredCustomers[index];
              final isLast = index == state.filteredCustomers.length - 1;
              return _CustomerRow(
                customer: customer,
                isLast: isLast,
                onLock: () => _showLockDialog(context, customer.id),
                onUnlock: () => context.read<CustomerBloc>().add(
                  CustomerEvent.unlockCustomer(customer.id),
                ),
                onDelete: () => _showDeleteDialog(context, customer.id),
              );
            },
          ),

          // ── Pagination ────────────────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: AppColors.borderColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Page 1 of ${(state.filteredCustomers.length / 15).ceil().clamp(1, 999)}',
                  style: const TextStyle(
                    color: AppColors.greyTextColor,
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: [
                    _PageBtn(label: '← Previous', onTap: () {}),
                    AppSpacing.horizontalSpaceSmall,
                    _PageBtn(label: 'Next →', onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showLockDialog(BuildContext context, String customerId) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Row(
          children: const [
            Icon(Icons.lock_outline, color: AppColors.errorRed, size: 20),
            SizedBox(width: 8),
            Text(
              'Lock customer\'s account',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        content: const Text(
          'Are you sure you want to lock this customer\'s account? This action cannot be undone.',
          style: TextStyle(color: AppColors.greyTextColor, fontSize: 13),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Cancel',
              style: TextStyle(color: AppColors.primaryTextColor),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.errorRed,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              context.read<CustomerBloc>().add(
                CustomerEvent.lockCustomer(customerId),
              );
              Navigator.of(context).pop();
            },
            child: const Text('Lock', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, String customerId) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Row(
          children: const [
            Icon(Icons.delete_outline, color: AppColors.errorRed, size: 20),
            SizedBox(width: 8),
            Text(
              'Delete customer',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        content: const Text(
          'Are you sure you want to delete this customer? This action cannot be undone.',
          style: TextStyle(color: AppColors.greyTextColor, fontSize: 13),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Cancel',
              style: TextStyle(color: AppColors.primaryTextColor),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.errorRed,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              context.read<CustomerBloc>().add(
                CustomerEvent.deleteCustomer(customerId),
              );
              Navigator.of(context).pop();
            },
            child: const Text('Delete', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// TABLE HEADER ROW — fixed proportions matching Figma
// ─────────────────────────────────────────────────────────────────────────────
class _TableHeaderRow extends StatelessWidget {
  const _TableHeaderRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 36), // checkbox col
        SizedBox(width: 150, child: _H('Name')),
        SizedBox(width: 130, child: _H('Phone number')),
        SizedBox(width: 170, child: _H('Email')),
        SizedBox(width: 80, child: _H('Status')),
        Expanded(child: _H('Address')),
        SizedBox(width: 40), // actions col
      ],
    );
  }
}

class _H extends StatelessWidget {
  final String label;
  const _H(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// CUSTOMER DATA ROW — fixed SizedBox widths to match header, prevents overflow
// ─────────────────────────────────────────────────────────────────────────────
class _CustomerRow extends StatelessWidget {
  final CustomerModel customer;
  final bool isLast;
  final VoidCallback onLock;
  final VoidCallback onUnlock;
  final VoidCallback onDelete;

  const _CustomerRow({
    required this.customer,
    required this.isLast,
    required this.onLock,
    required this.onUnlock,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = customer.status.toLowerCase() == 'active';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: AppColors.borderColor)),
      ),
      child: Row(
        children: [
          // Checkbox
          SizedBox(
            width: 36,
            child: Checkbox(
              value: false,
              onChanged: (_) {},
              activeColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: const BorderSide(color: AppColors.borderColor),
            ),
          ),

          // Name + avatar — fixed width
          SizedBox(
            width: 150,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 13,
                  backgroundColor: AppColors.primaryColor.withValues(
                    alpha: .12,
                  ),
                  child: Text(
                    customer.fullName.isNotEmpty
                        ? customer.fullName[0].toUpperCase()
                        : '?',
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    customer.fullName,
                    style: const TextStyle(
                      color: AppColors.primaryTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          // Phone
          SizedBox(
            width: 130,
            child: Text(
              customer.phone,
              style: const TextStyle(
                color: AppColors.greyTextColor,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Email
          SizedBox(
            width: 170,
            child: Text(
              customer.email ?? '-',
              style: const TextStyle(
                color: AppColors.greyTextColor,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Status badge
          SizedBox(
            width: 80,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: isActive ? AppColors.successBg : AppColors.errorBg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                isActive ? 'Active' : 'Inactive',
                style: TextStyle(
                  color: isActive ? AppColors.successGreen : AppColors.errorRed,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // Address — takes remaining space
          Expanded(
            child: Text(
              customer.address ?? '-',
              style: const TextStyle(
                color: AppColors.greyTextColor,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),

          // Actions menu
          SizedBox(
            width: 40,
            child: PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'lock') onLock();
                if (value == 'unlock') onUnlock();
                if (value == 'delete') onDelete();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              itemBuilder: (_) => [
                const PopupMenuItem(
                  value: 'edit',
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        size: 15,
                        color: AppColors.primaryTextColor,
                      ),
                      SizedBox(width: 8),
                      Text('Edit', style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: isActive ? 'lock' : 'unlock',
                  child: Row(
                    children: [
                      Icon(
                        isActive
                            ? Icons.lock_outline
                            : Icons.lock_open_outlined,
                        size: 15,
                        color: AppColors.errorRed,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        isActive ? 'Lock' : 'Unlock',
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_outline,
                        size: 15,
                        color: AppColors.errorRed,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Delete',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.errorRed,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              icon: const Icon(
                Icons.more_vert,
                size: 18,
                color: AppColors.greyTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// SMALL REUSABLE WIDGETS
// ─────────────────────────────────────────────────────────────────────────────

class _FilterDropChip extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _FilterDropChip({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 16,
              color: AppColors.greyTextColor,
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveChip extends StatelessWidget {
  final String label;
  final VoidCallback onRemove;
  const _ActiveChip({required this.label, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primaryColor.withValues(alpha: .3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: AppColors.primaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 4),
          GestureDetector(
            onTap: onRemove,
            child: const Icon(
              Icons.close,
              size: 13,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _PageBtn extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _PageBtn({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.primaryTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
