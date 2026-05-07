import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: const Row(
        children: [
          Text("Page Header", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
