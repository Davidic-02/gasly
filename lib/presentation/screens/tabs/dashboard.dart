import 'package:flutter/material.dart';
import 'package:gasly/presentation/widgets/button.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = '/dashboard';
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            _buildMetricsGrid(), // Total Users, Gas Purchased, etc.
            const SizedBox(height: 24),
            _buildChartsSection(), // Bar Chart & Donut Chart
            const SizedBox(height: 24),
            _buildTopUsersTable(),
          ],
        ),
      ),
    );
  }

  // Header: "Hello, Owner!" + Add Customer Button
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Olamide Akintan!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Here is what's happening today",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        // Your custom Button widget
        SizedBox(
          width: 150,
          child: Button(
            "Add Customer",
            onPressed: () {
              // Navigation to Add Customer Form
            },
            pill: true,
          ),
        ),
      ],
    );
  }

  // The 4-card grid for Totals
  Widget _buildMetricsGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: [
        _buildStatCard("Total Users", "1,240", Icons.people),
        _buildStatCard("Total Amount", "₦4.2M", Icons.payments),
        _buildStatCard("Gas Purchased", "5,000L", Icons.local_gas_station),
        _buildStatCard("Referrals", "150", Icons.share),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // Or your AppColors.surface
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.blueAccent), // Use your primary color
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 14)),
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildChartsSection() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(child: Text("Monthly Gas Purchased Bar Chart")),
      // Integrate fl_chart's BarChart here
    );
  }

  Widget _buildTopUsersTable() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Users",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        // Simplified Table
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: const Text("Customer Name"),
            subtitle: const Text("Active"),
            trailing: const Text(
              "₦50,000",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
