import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:transferwise/src/transferwise_statement.model.dart';

part 'transferwise.state.freezed.dart';

@freezed
class TransferwiseState with _$TransferwiseState {
  const factory TransferwiseState.none() = _None;
  const factory TransferwiseState.some(ITransferwiseStatement transferwiseStatement) = _Some;
}
