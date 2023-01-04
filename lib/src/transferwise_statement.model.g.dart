// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferwise_statement.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QTransferwiseStatement _$QTransferwiseStatementFromJson(
        Map<String, dynamic> json) =>
    QTransferwiseStatement(
      id: json['id'] as int,
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) =>
              ITransferWiseStatementTx.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QTransferwiseStatementToJson(
        QTransferwiseStatement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };

OTransferwiseStatement _$OTransferwiseStatementFromJson(
        Map<String, dynamic> json) =>
    OTransferwiseStatement(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) =>
              ITransferWiseStatementTx.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OTransferwiseStatementToJson(
        OTransferwiseStatement instance) =>
    <String, dynamic>{
      'transactions': instance.transactions?.map((e) => e.toJson()).toList(),
    };

ITransferwiseStatement _$ITransferwiseStatementFromJson(
        Map<String, dynamic> json) =>
    ITransferwiseStatement(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) =>
              ITransferWiseStatementTx.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ITransferwiseStatementToJson(
        ITransferwiseStatement instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };

ITransferWiseStatementTx _$ITransferWiseStatementTxFromJson(
        Map<String, dynamic> json) =>
    ITransferWiseStatementTx(
      date: DateTime.parse(json['date'] as String),
      amount: ITransferWiseStatementTxNumber.fromJson(
          json['amount'] as Map<String, dynamic>),
      totalFees: ITransferWiseStatementTxNumber.fromJson(
          json['total_fees'] as Map<String, dynamic>),
      details: ITransferWiseStatementTxDetails.fromJson(
          json['details'] as Map<String, dynamic>),
      referenceNumber: json['reference_number'] as String,
    );

Map<String, dynamic> _$ITransferWiseStatementTxToJson(
        ITransferWiseStatementTx instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'details': instance.details.toJson(),
      'total_fees': instance.totalFees.toJson(),
      'amount': instance.amount.toJson(),
      'reference_number': instance.referenceNumber,
    };

ITransferWiseStatementTxDetails _$ITransferWiseStatementTxDetailsFromJson(
        Map<String, dynamic> json) =>
    ITransferWiseStatementTxDetails(
      description: json['description'] as String,
      senderName: json['sender_name'] as String?,
      senderAccount: json['sender_account'] as String?,
      paymentReference: json['payment_reference'] as String?,
    );

Map<String, dynamic> _$ITransferWiseStatementTxDetailsToJson(
        ITransferWiseStatementTxDetails instance) =>
    <String, dynamic>{
      'description': instance.description,
      'sender_name': instance.senderName,
      'sender_account': instance.senderAccount,
      'payment_reference': instance.paymentReference,
    };

ITransferWiseStatementTxNumber _$ITransferWiseStatementTxNumberFromJson(
        Map<String, dynamic> json) =>
    ITransferWiseStatementTxNumber(
      value: json['value'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$ITransferWiseStatementTxNumberToJson(
        ITransferWiseStatementTxNumber instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
    };
