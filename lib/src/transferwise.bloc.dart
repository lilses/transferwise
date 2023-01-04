
import 'dart:async';

import 'package:api/api.dart';
import 'package:auth_id/auth_id.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transferwise/src/transferwise.repo.dart';
import 'package:transferwise/src/transferwise_statement.api.dart';
import 'package:transferwise/src/transferwise_statement.model.dart';
import 'package:wallet/wallet.dart';

import 'transferwise.state.dart';



class TransferwiseBloc extends Cubit<TransferwiseState> {

  final AuthIdRepo authIdRepo;
  final ApiRepo apiRepo;
  final TransferwiseRepo transferwiseRepo;


  late final StreamSubscription transferwiseStatementSubscription;
  late final StreamSubscription authIdRepoSubscription;
  late final StreamSubscription walletSubscription;
  late final StreamSubscription timerSubscription;




  QWallet? _qWallet;
  WalletRequest? _walletRequest;

  TransferwiseBloc({required this.authIdRepo, required this.apiRepo, required this.transferwiseRepo}) : super(const TransferwiseState.none()){
    subscribe();
  }

  @override
  Future<void> close() {
    timerSubscription.cancel();
    transferwiseStatementSubscription.cancel();
    return super.close();
  }

  void subscribe() {
    walletSubscription = apiRepo.postWalletItems.listen((event) {
      _qWallet = event;
    });
    authIdRepoSubscription = authIdRepo.items.listen((event) {
      event.map(
          none: (none){},
          some: (some){
            _walletRequest = some.walletRequest;
          }
      );
    });
    transferwiseStatementSubscription = apiRepo.postTransferwiseStatementItems.listen(
          (event) {
            emit(TransferwiseState.some(event));
      }
    );
  }

  checkStatement(){
    if (_walletRequest != null){
      apiRepo.postTransferwiseStatement(
          data: TransferwiseStatementApi(
              data: ITransferwiseStatement(
                  transactions: [ITransferWiseStatementTx(
                      date: DateTime.now(),
                      amount: const ITransferWiseStatementTxNumber(value: null, currency: null),
                      totalFees: const ITransferWiseStatementTxNumber(value: null, currency: null),
                      details: const ITransferWiseStatementTxDetails(description: '', senderName: null, senderAccount: null, paymentReference: null),
                      referenceNumber: "")]), walletRequest: _walletRequest!));
    }

  }


}
