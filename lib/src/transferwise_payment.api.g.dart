// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferwise_payment.api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferwisePaymentApi _$TransferwisePaymentApiFromJson(
        Map<String, dynamic> json) =>
    TransferwisePaymentApi(
      data: ITransferwisePayment.fromJson(json['data'] as Map<String, dynamic>),
      walletRequest: WalletRequest.fromJson(
          json['wallet_request'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransferwisePaymentApiToJson(
        TransferwisePaymentApi instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'wallet_request': instance.walletRequest.toJson(),
    };
