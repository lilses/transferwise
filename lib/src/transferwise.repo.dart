import 'dart:async';

import 'package:list_component/list_component.dart';


class TransferwiseRepo {
  final int listItemId = 1;

  final transferwiseTimer = Stream.periodic(const Duration(seconds: 10), (x) => x).asBroadcastStream();


  ListItem toListItem() => ListItem(
    text1: "Transferwise bank transfer",
    id: listItemId,
    text2: "+1.5%",
    image1: "https://goody-hams.fra1.digitaloceanspaces.com/cryptoworldapi/transferwise.png",
  );

}
