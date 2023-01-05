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
    walletSubscription.cancel();
    paymentSubscription.cancel();
    cartSubscription.cancel();
    authIdRepoSubscription.cancel();
    return super.close();
  }

  void subscribe() {
    transferwiseRepoSubscription = transferwiseRepo.transferwiseTimer.listen((event) {
      final payment = getStatePayment();
      if (payment != null){
        checkStatement();
        print("transferwiseRepo event $event");
      }
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
          if (event.transactions.isNotEmpty) {
            emit(TransferwiseState.some(transferwiseStatement: event, transferwisePayment: payment));
          } else {
            emit(TransferwiseState.some(transferwiseStatement: null, transferwisePayment: payment));
          }
        });
  }

  ITransferwisePayment? getStatePayment(){
    final payment = state.map(none: (none)=>null, some: (some) => some.transferwisePayment);
    return payment;
  }

  ITransferwiseStatement? getStateStatement(){
    final statement = state.map(none: (none)=>null, some: (some) => some.transferwiseStatement);
    return statement;
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
                    date: DateTime.now().toUtc(),
                    amount: const ITransferWiseStatementTxNumber(
                        value: "0", currency: ""),
                    totalFees: const ITransferWiseStatementTxNumber(
                        value: "0", currency: ""),
                    details: ITransferWiseStatementTxDetails(
                        description: '',
                        senderName: null,
                        senderAccount: null,
                        paymentReference: getStatePayment()!.reference),
                    referenceNumber: "")
              ]),
              walletRequest: _walletRequest!));
    }
  }
}
