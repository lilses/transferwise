// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferwise_statement.api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferwiseStatementApi _$TransferwiseStatementApiFromJson(
        Map<String, dynamic> json) =>
    TransferwiseStatementApi(
      data:
          ITransferwiseStatement.fromJson(json['data'] as Map<String, dynamic>),
      walletRequest: WalletRequest.fromJson(
          json['wallet_request'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransferwiseStatementApiToJson(
        TransferwiseStatementApi instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'wallet_request': instance.walletRequest.toJson(),
    };
