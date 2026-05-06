import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gasly/presentation/widgets/top_bar.dart';

class CustomerListScreen extends HookWidget {
  const CustomerListScreen({super.key});

  static const String routeName = '/customer-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopBar(),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text("Customer $index"),
                    subtitle: const Text("07000000000"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
