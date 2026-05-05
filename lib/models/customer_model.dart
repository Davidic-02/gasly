import 'package:cloud_firestore/cloud_firestore.dart';

class CustomerModel {
  final String id;
  final String fullName;
  final String email;
  final String phone;
  final String address;
  final String status; // "active" or "inactive"
  final int loyaltyPoints;
  final double totalSpent;
  final DateTime? createdAt;

  const CustomerModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.address,
    required this.status,
    required this.loyaltyPoints,
    required this.totalSpent,
    this.createdAt,
  });

  factory CustomerModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return CustomerModel(
      id: doc.id,
      fullName: data['fullName'] ?? '',
      email: data['email'] ?? '',
      phone: data['phone'] ?? '',
      address: data['address'] ?? '',
      status: data['status'] ?? 'active',
      loyaltyPoints: data['loyaltyPoints'] ?? 0,
      totalSpent: (data['totalSpent'] ?? 0.0).toDouble(),
      createdAt: (data['createdAt'] as Timestamp?)?.toDate(),
    );
  }
}
