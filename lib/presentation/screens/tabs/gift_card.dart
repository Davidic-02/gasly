import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GiftCardScreen extends HookWidget {
  const GiftCardScreen({super.key});

  static const String routeName = '/gift-card';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Gift Card'));
  }
}
