import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gasly/models/customer_model.dart';

extension CustomerModelX on CustomerModel {
  static CustomerModel fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return CustomerModel.fromJson({
      ...data,
      "id": doc.id,
      "createdAt": (data['createdAt'] as Timestamp?)
          ?.toDate()
          .toIso8601String(),
    });
  }
}
