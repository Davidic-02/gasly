import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GasStationsScreen extends HookWidget {
  const GasStationsScreen({super.key});

  static const String routeName = '/gas-stations';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Gas Stations'));
  }
}
