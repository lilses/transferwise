import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transferwise_statement.model.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class QTransferwiseStatement {
  final int id;
  final List<ITransferWiseStatementTx> transactions;


  const QTransferwiseStatement({
    required this.id,
    required this.transactions,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory QTransferwiseStatement.fromJson(Map<String, dynamic> json) =>
      _$QTransferwiseStatementFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$QTransferwiseStatementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OTransferwiseStatement {
  final List<ITransferWiseStatementTx>? transactions;


  const OTransferwiseStatement({
    required this.transactions,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory OTransferwiseStatement.fromJson(Map<String, dynamic> json) =>
      _$OTransferwiseStatementFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$OTransferwiseStatementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ITransferwiseStatement {
  final List<ITransferWiseStatementTx> transactions;


  const ITransferwiseStatement({
    required this.transactions,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory ITransferwiseStatement.fromJson(Map<String, dynamic> json) =>
      _$ITransferwiseStatementFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ITransferwiseStatementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ITransferWiseStatementTx {
  final DateTime date;
  final ITransferWiseStatementTxDetails details;
  final ITransferWiseStatementTxNumber totalFees;
  final ITransferWiseStatementTxNumber amount;
  final String referenceNumber;


  const ITransferWiseStatementTx({
    required this.date,
    required this.amount,
    required this.totalFees,
    required this.details,
    required this.referenceNumber,

  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory ITransferWiseStatementTx.fromJson(Map<String, dynamic> json) =>
      _$ITransferWiseStatementTxFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ITransferWiseStatementTxToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ITransferWiseStatementTxDetails {
  final String description;
  final String? senderName;
  final String? senderAccount;
  final String? paymentReference;


  const ITransferWiseStatementTxDetails({
    required this.description,
    required this.senderName,
    required this.senderAccount,
    required this.paymentReference,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory ITransferWiseStatementTxDetails.fromJson(Map<String, dynamic> json) =>
      _$ITransferWiseStatementTxDetailsFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ITransferWiseStatementTxDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ITransferWiseStatementTxNumber {
  final String? value;
  final String? currency;


  const ITransferWiseStatementTxNumber({
    required this.value,
    required this.currency
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory ITransferWiseStatementTxNumber.fromJson(Map<String, dynamic> json) =>
      _$ITransferWiseStatementTxNumberFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ITransferWiseStatementTxNumberToJson(this);
}
