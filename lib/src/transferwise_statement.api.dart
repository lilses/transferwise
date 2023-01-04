import 'package:auth_id/auth_id.dart';
import 'package:json_annotation/json_annotation.dart';

import 'transferwise_statement.model.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transferwise_statement.api.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class TransferwiseStatementApi {
  final ITransferwiseStatement data;
  final WalletRequest walletRequest;

  const TransferwiseStatementApi({
    required this.data,
    required this.walletRequest,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TransferwiseStatementApi.fromJson(Map<String, dynamic> json) =>
      _$TransferwiseStatementApiFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TransferwiseStatementApiToJson(this);
}
