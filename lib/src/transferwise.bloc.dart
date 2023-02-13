import 'dart:async';

import 'package:api/api.dart';
import 'package:auth_id/auth_id.dart';
import 'package:cart/cart.dart';
import 'package:notification/notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/product.dart';
import 'package:router/router.dart';
import 'package:wallet/wallet.dart';
import '../transferwise.dart';

class TransferwiseBloc extends Cubit<TransferwiseState> {
  final AuthIdRepo authIdRepo;
  final TransferwisePaymentApiRepo transferwisePaymentApiRepo;
  final TransferwiseStatementApiRepo transferwiseStatementApiRepo;

  final WalletApiRepo walletApiRepo;
  final CartRepo cartRepo;

  late final StreamSubscription transferwiseStatementSubscription;
  late final StreamSubscription authIdRepoSubscription;
  late final StreamSubscription walletSubscription;
  late final StreamSubscription cartSubscription;
  late final StreamSubscription transferwiseRepoSubscription;
  late final StreamSubscription paymentSubscription;


  QWallet? _qWallet;
  List<ProductEnum>? _qProducts;
  WalletRequest? _walletRequest;

  TransferwiseBloc({
    required this.walletApiRepo,
    required this.authIdRepo,
    required this.transferwisePaymentApiRepo,
    required this.transferwiseStatementApiRepo,
    required this.cartRepo})
      : super(const TransferwiseState.some(productEnums: [])) {
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
    // transferwiseRepoSubscription = transferwiseRepo.transferwiseTimer.listen((event) {
    //   final payment = getStatePayment();
    //   if (payment != null){
    //     checkStatement();
    //     print("transferwiseRepo event $event");
    //   }
    // });
    walletSubscription = walletApiRepo.postWalletItems.listen((event) {
      _qWallet = event[0];
      emit(newState(wallet: event[0]));
    });
    paymentSubscription = transferwisePaymentApiRepo.postTransferwisePaymentItems.listen((event) {
      emit(newState(transferwisePayment: event[0]));
    });
    cartSubscription = cartRepo.items.listen((event) {
      emit(newState(productEnums: event.products));
    });
    authIdRepoSubscription = authIdRepo.items.listen((event) {
      event.map(
          none: (none) {},
          some: (some) {
            emit(newState(walletRequest: some.walletRequest));
          });
    });
    transferwiseStatementSubscription =
        transferwiseStatementApiRepo.postTransferwiseStatementItems.listen((event) {
          final payment = state.map(some: (some) => some.transferwisePayment);
          if (event.isNotEmpty) {
            emit(newState(transferwiseStatement: event[0]));
          }
        });
  }

  QTransferwisePayment? getStatePayment(){
    final payment = state.map(some: (some) => some.transferwisePayment);
    return payment;
  }

  QTransferwiseStatement? getStateStatement(){
    final statement = state.map(some: (some) => some.transferwiseStatement);
    return statement;
  }

  createPaymentReference() {
    if (_qProducts != null && _walletRequest != null && _qWallet != null) {
      transferwisePaymentApiRepo.postTransferwisePayment(data:
      TransferwisePaymentApi(
          data: ITransferwisePayment(
              reference: "",
              amount: _qProducts!.getPricePlusPercent(0.015).toStringAsFixed(2),
              createdAt: DateTime.now().toUtc(),
              walletId: _qWallet!.id,
              productPriceList: [
                ..._qProducts!.map((e) => e.productPriceIndex()).toList()
              ]
          ),
          walletRequest: _walletRequest!)
      );
    }
  }

  // notify() {
  //   state.map(
  //       none: (none){},
  //       some: (some){
  //         if (some.transferwisePayment != null){
  //           transferwisePaymentApiRepo.postNotification(data:
  //             NotificationApi(data:
  //                 INotification(
  //                     notificationType: NotificationType.transferwisePayment.index,
  //                     transferwisePaymentId: some.transferwisePayment!.id,
  //                     stripePaymentId: null,
  //                     walletId: _qWallet!.id
  //                 ),
  //                 walletRequest: _walletRequest!)
  //           );
  //         }
  //       });
  // }

  // checkStatement() {
  //   if (_walletRequest != null) {
  //     transferwisePaymentApiRepo.postTransferwiseStatement(
  //         data: TransferwiseStatementApi(
  //             data: ITransferwiseStatement(transactions: [
  //               ITransferWiseStatementTx(
  //                   date: DateTime.now().toUtc(),
  //                   amount: const ITransferWiseStatementTxNumber(
  //                       value: "0", currency: ""),
  //                   totalFees: const ITransferWiseStatementTxNumber(
  //                       value: "0", currency: ""),
  //                   details: ITransferWiseStatementTxDetails(
  //                       description: '',
  //                       senderName: null,
  //                       senderAccount: null,
  //                       paymentReference: getStatePayment()!.reference),
  //                   referenceNumber: "")
  //             ]),
  //             walletRequest: _walletRequest!));
  //   }
  // }

  newState({
    QTransferwiseStatement? transferwiseStatement,
    QTransferwisePayment? transferwisePayment,
    RouterState? routerState,
    WalletRequest? walletRequest,
    QWallet? wallet,
    List<ProductEnum>? productEnums,
    QAddress? address
  }){
    return TransferwiseState.some(
        transferwiseStatement: transferwiseStatement ??state.transferwiseStatement,
        transferwisePayment: transferwisePayment ??state.transferwisePayment,
        routerState: routerState ??state.routerState,
        walletRequest: walletRequest ??state.walletRequest,
        wallet: wallet ??state.wallet,
        productEnums: productEnums ?? state.productEnums,
        address: address ??state.address
    );
  }
}
