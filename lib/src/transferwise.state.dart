import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product/product.dart';
import 'package:router/router.dart';
import 'package:types/types.dart';

part 'transferwise.state.freezed.dart';

@freezed
class TransferwiseState with _$TransferwiseState {
  const factory TransferwiseState.some({
    QTransferwiseStatement? transferwiseStatement,
    QTransferwisePayment? transferwisePayment,
    RouterState? routerState,
    WalletRequest? walletRequest,
    QWallet? wallet,
    required List<ProductEnum> productEnums,
    QAddress? address
  }) = _Some;
}
