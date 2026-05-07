import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReferralsScreen extends HookWidget {
  const ReferralsScreen({super.key});

  static const String routeName = '/referrals';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Referrals'));
  }
}
