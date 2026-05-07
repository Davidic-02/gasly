import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VirtualCardScreen extends HookWidget {
  const VirtualCardScreen({super.key});

  static const String routeName = '/virtual-card';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Virtual Card'));
  }
}
