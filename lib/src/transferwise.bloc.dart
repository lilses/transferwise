import 'dart:async';

import 'package:api/api.dart';
import 'package:auth_id/auth_id.dart';
import 'package:cart/cart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/product.dart';
import 'package:wallet/wallet.dart';
import '../transferwise.dart';

class TransferwiseBloc extends Cubit<TransferwiseState> {
  final AuthIdRepo authIdRepo;
  final ApiRepo apiRepo;
  final CartRepo cartRepo;
  final TransferwiseRepo transferwiseRepo;

  late final StreamSubscription transferwiseStatementSubscription;
  late final StreamSubscription authIdRepoSubscription;
  late final StreamSubscription walletSubscription;
  late final StreamSubscription cartSubscription;
  late final StreamSubscription transferwiseRepoSubscription;
  late final StreamSubscription paymentSubscription;


  QWallet? _qWallet;
  List<IProduct>? _qProducts;
  WalletRequest? _walletRequest;

  TransferwiseBloc({required this.authIdRepo,
    required this.apiRepo,
    required this.transferwiseRepo,
    required this.cartRepo})
      : super(const TransferwiseState.none()) {
    subscribe();
  }

  @override
  Future<void> close() {
    transferwiseRepoSubscription.cancel();
    transferwiseStatementSubscription.cancel();
    return super.close();
  }

  void subscribe() {
    transferwiseRepoSubscription = transferwiseRepo.transferwiseTimer.listen((event) {
      print("transferwiseRepo event $event");
    });
    walletSubscription = apiRepo.postWalletItems.listen((event) {
      _qWallet = event;
    });
    paymentSubscription = apiRepo.postTransferwisePaymentItems.listen((event) {
      state.map(
          none: (none){
            emit(TransferwiseState.some(transferwisePayment: event, transferwiseStatement: null));
          },
          some: (some){
            emit(TransferwiseState.some(transferwisePayment: event, transferwiseStatement: some.transferwiseStatement));
          });
      // _qWallet = event;
    });
    cartSubscription = cartRepo.items.listen((event) {
      _qProducts = event.products;
      // createPaymentReference();
    });
    authIdRepoSubscription = authIdRepo.items.listen((event) {
      event.map(
          none: (none) {},
          some: (some) {
            _walletRequest = some.walletRequest;
            // createPaymentReference();
          });
    });
    transferwiseStatementSubscription =
        apiRepo.postTransferwiseStatementItems.listen((event) {
          final payment = state.map(none: (none)=>null, some: (some) => some.transferwisePayment);
          emit(TransferwiseState.some(transferwiseStatement: event, transferwisePayment: payment));
        });
  }

  createPaymentReference() {
    if (_qProducts != null && _walletRequest != null) {
      apiRepo.postTransferwisePayment(data:
      TransferwisePaymentApi(
          data: ITransferwisePayment(
              products: _qProducts!,
              reference: "",
              amount: cartRepo.getPricePlusPercent(0.015).toStringAsFixed(2),
              createdAt: DateTime.now().toUtc()),
          walletRequest: _walletRequest!)
      );
    }
  }

  checkStatement() {
    if (_walletRequest != null) {
      apiRepo.postTransferwiseStatement(
          data: TransferwiseStatementApi(
              data: ITransferwiseStatement(transactions: [
                ITransferWiseStatementTx(
                    date: DateTime.now(),
                    amount: const ITransferWiseStatementTxNumber(
                        value: null, currency: null),
                    totalFees: const ITransferWiseStatementTxNumber(
                        value: null, currency: null),
                    details: const ITransferWiseStatementTxDetails(
                        description: '',
                        senderName: null,
                        senderAccount: null,
                        paymentReference: null),
                    referenceNumber: "")
              ]),
              walletRequest: _walletRequest!));
    }
  }
}
