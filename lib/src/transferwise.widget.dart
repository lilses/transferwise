import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transferwise/src/transferwise.bloc.dart';

class TransferwiseWidget extends StatelessWidget {
  const TransferwiseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: 180,
                child: Image.network(
                    "https://goody-hams.fra1.digitaloceanspaces.com/cryptoworldapi/transferwise.png",
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Pay by bank transfer", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xff37517e),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text("Amount",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xff5d7079),
                fontWeight: FontWeight.w100
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0,left: 16,bottom: 16),
            child: Text(
              "1 GBP",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: const Color(0xff5d7079)),
            ),
          ),
          const TransferwiseText1(text: "You need to make the payment to Blue Software Labs Limited from your bank."),
          const TransferwiseText1(text: "Do this by using their details below and either using your online or telephone banking, or go in-branch."),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16, left: 4,right: 4),
            child: Divider(height: 1, thickness: 1, color: Colors.grey.withOpacity(0.5)),
          ),
          const TransferwiseText1(text: "Use these details to pay GBP from bank accounts inside the UK."),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Icon(Icons.timer),
              ),
              TransferwiseText2(text: "Payments take 1 working day or less"),
            ],
          ),
          const SizedBox(height: 16,),
          Card(
            color: const Color(0xfff2f6f8),
            elevation: 0,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 24, top: 16, right: 24),
              child: Column(
                children: [
                  TransferwiseCardItem(items: ["Reference",context.read<TransferwiseBloc>().state.transferwisePayment?.reference ?? ""]),
                  const TransferwiseCardItem(items: ["Account holder","BLue Software Labs Ltd"]),
                  const TransferwiseCardItem(items: ["Sort code","24-80-10"]),
                  const TransferwiseCardItem(items: ["Account number","46710000"]),
                  const TransferwiseCardItem(items: ["Wise's address","56 Shoreditch High Street","London","E1 6JJ","United Kingdom"]),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: SizedBox(
          //     width: 200,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: ElevatedButton(
          //           onPressed: null,
          //           child: Text("Done",style: Theme.of(context).textTheme.titleMedium,)),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class TransferwiseText1 extends StatelessWidget {
  const TransferwiseText1({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(text,style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: const Color(0xff5d7079)
      ),),
    );
  }
}

class TransferwiseText2 extends StatelessWidget {
  const TransferwiseText2({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(text,style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: const Color(0xff37517e),
        fontWeight: FontWeight.bold
      ),),
    );
  }
}


class TransferwiseCardItem extends StatelessWidget {
  const TransferwiseCardItem({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...items.asMap().entries.map((e){
                if (e.key == 0){
                  return Text(e.value,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xff5d7079),
                      fontWeight: FontWeight.w100
                  ));
                } else {
                  return Text(e.value,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xff5d7079),
                      fontWeight: FontWeight.w600
                  ));
                }
              })
            ],
          ),
          ElevatedButton(
              onPressed: (){},
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffe7eef3)),
              // elevation: MaterialStateProperty.all<double>(0.0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
              child: Text("Copy",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: const Color(0xff0097c7),
                fontWeight: FontWeight.w600
              ),),
          )
        ],
      ),
    );
  }
}
