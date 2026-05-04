// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    _CustomerModel(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      status: json['status'] as String,
      loyaltyPoints: (json['loyaltyPoints'] as num).toInt(),
      totalSpent: (json['totalSpent'] as num).toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CustomerModelToJson(_CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'status': instance.status,
      'loyaltyPoints': instance.loyaltyPoints,
      'totalSpent': instance.totalSpent,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
