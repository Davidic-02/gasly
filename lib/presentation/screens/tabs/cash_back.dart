import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CashbackPointsScreen extends HookWidget {
  const CashbackPointsScreen({super.key});

  static const String routeName = '/cashback-points';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Cashback Points'));
  }
}
