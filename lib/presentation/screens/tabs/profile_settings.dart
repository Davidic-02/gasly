import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProfileSettingsScreen extends HookWidget {
  const ProfileSettingsScreen({super.key});

  static const String routeName = '/profile-settings';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Profile Settings'));
  }
}
