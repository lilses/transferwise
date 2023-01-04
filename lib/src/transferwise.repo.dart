import 'dart:async';


class TransferwiseRepo {

  final transferwiseTimer = Stream.periodic(const Duration(seconds: 10), (x) => x).asBroadcastStream();

}
