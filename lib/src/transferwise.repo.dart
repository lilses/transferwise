import 'dart:async';

import 'package:list_component/list_component.dart';
import 'package:product/product.dart';
import 'package:router/router.dart';
import 'package:transferwise/transferwise.dart';
import 'package:transferwise/transferwise.dart';
import 'package:transferwise/transferwise.dart';
import 'package:types/types.dart';


class TransferwiseRepo {
  final int listItemId = 1;

  final controller = StreamController<TransferwiseState>.broadcast()..add(const TransferwiseState.some(productEnums: []));
  Stream<TransferwiseState> get items => controller.stream.asBroadcastStream();


  ListItem toListItem() => ListItem(
    text1: "Transferwise bank transfer",
    id: listItemId,
    text2: "+1.5%",
    image1: "https://goody-hams.fra1.digitaloceanspaces.com/cryptoworldapi/transferwise.png",
  );

  void inputCard(
      {
        required QTransferwiseStatement? transferwiseStatement,
        required QTransferwisePayment? transferwisePayment,
        required RouterState? routerState,
        required WalletRequest? walletRequest,
        required QWallet? wallet,
        required List<ProductEnum> productEnums,
        required QAddress? address
      }
      ) {
    controller.sink.add(TransferwiseState.some(
        transferwiseStatement: transferwiseStatement,
        transferwisePayment: transferwisePayment,
        routerState: routerState,
        walletRequest: walletRequest,
        wallet: wallet,
        productEnums:productEnums,
      address: address
    ));
  }

}
