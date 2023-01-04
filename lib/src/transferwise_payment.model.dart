import 'package:json_annotation/json_annotation.dart';
import 'package:product/product.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transferwise_payment.model.g.dart';

// make_model22!(
// QTransferWisePayment,
// ITransferWisePayment,
// OTransferWisePayment,
// transferwise_payment,
// products: sqlx::types::Json<Vec<IProduct>>,
// reference: String,
// amount: bigdecimal::BigDecimal,
// created_at: chrono::DateTime<chrono::Utc>
// );

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class QTransferwisePayment {
  final int id;
  final List<IProduct> products;
  final String reference;
  final String amount;
  final DateTime createdAt;

  const QTransferwisePayment({
    required this.id,
    required this.products,
    required this.reference,
    required this.amount,
    required this.createdAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory QTransferwisePayment.fromJson(Map<String, dynamic> json) =>
      _$QTransferwisePaymentFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$QTransferwisePaymentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OTransferwisePayment {
  final List<IProduct>? products;
  final String? reference;
  final String? amount;
  final DateTime? createdAt;


  const OTransferwisePayment({
    required this.products,
    required this.reference,
    required this.amount,
    required this.createdAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory OTransferwisePayment.fromJson(Map<String, dynamic> json) =>
      _$OTransferwisePaymentFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$OTransferwisePaymentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ITransferwisePayment {
  final List<IProduct> products;
  final String reference;
  final String amount;
  final DateTime createdAt;

  const ITransferwisePayment({
    required this.products,
    required this.reference,
    required this.amount,
    required this.createdAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory ITransferwisePayment.fromJson(Map<String, dynamic> json) =>
      _$ITransferwisePaymentFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ITransferwisePaymentToJson(this);
}
