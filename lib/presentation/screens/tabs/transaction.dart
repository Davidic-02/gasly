import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TransactionsScreen extends HookWidget {
  const TransactionsScreen({super.key});

  static const String routeName = '/transactions';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Transactions'));
  }
}
