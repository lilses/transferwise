// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferwise_payment.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QTransferwisePayment _$QTransferwisePaymentFromJson(
        Map<String, dynamic> json) =>
    QTransferwisePayment(
      id: json['id'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => IProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: json['reference'] as String,
      amount: json['amount'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      walletId: json['wallet_id'] as int,
    );

Map<String, dynamic> _$QTransferwisePaymentToJson(
        QTransferwisePayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products.map((e) => e.toJson()).toList(),
      'reference': instance.reference,
      'amount': instance.amount,
      'created_at': instance.createdAt.toIso8601String(),
      'wallet_id': instance.walletId,
    };

OTransferwisePayment _$OTransferwisePaymentFromJson(
        Map<String, dynamic> json) =>
    OTransferwisePayment(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => IProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: json['reference'] as String?,
      amount: json['amount'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      walletId: json['wallet_id'] as int?,
    );

Map<String, dynamic> _$OTransferwisePaymentToJson(
        OTransferwisePayment instance) =>
    <String, dynamic>{
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'reference': instance.reference,
      'amount': instance.amount,
      'created_at': instance.createdAt?.toIso8601String(),
      'wallet_id': instance.walletId,
    };

ITransferwisePayment _$ITransferwisePaymentFromJson(
        Map<String, dynamic> json) =>
    ITransferwisePayment(
      products: (json['products'] as List<dynamic>)
          .map((e) => IProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: json['reference'] as String,
      amount: json['amount'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      walletId: json['wallet_id'] as int,
    );

Map<String, dynamic> _$ITransferwisePaymentToJson(
        ITransferwisePayment instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
      'reference': instance.reference,
      'amount': instance.amount,
      'created_at': instance.createdAt.toIso8601String(),
      'wallet_id': instance.walletId,
    };
