import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:types/types.dart';

part 'transferwise.state.freezed.dart';

@freezed
class TransferwiseState with _$TransferwiseState {
  const factory TransferwiseState.none() = _None;
  const factory TransferwiseState.some({
    required QTransferwiseStatement? transferwiseStatement,
      required QTransferwisePayment? transferwisePayment
  }) = _Some;
}
