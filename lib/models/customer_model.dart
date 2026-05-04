import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
abstract class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    required String id,
    required String fullName,
    required String email,
    required String phone,
    required String address,
    required String status,
    required int loyaltyPoints,
    required double totalSpent,
    DateTime? createdAt,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
