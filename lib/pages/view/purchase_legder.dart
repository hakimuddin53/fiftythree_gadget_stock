import 'package:fiftythree_gadget_stock/pages/controllers/puchase_ledger_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_page_state.dart';

class PurchaseLedger extends StatefulWidget {
  const PurchaseLedger({Key? key}) : super(key: key);

  @override
  _PurchaseLedgerState createState() => _PurchaseLedgerState();
}

class _PurchaseLedgerState extends BasePageState<PurchaseLedger> {
  final _formKey = GlobalKey<FormState>();
  final PurchaseLedgerController _pageController =
      Get.put(PurchaseLedgerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Purchase Ledger"),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _pageController.amountEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Amount',
                  ),
                  // keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val!.length == 0)
                      return "Please enter Amount";
                    else
                      return null;
                  },
                  // onSaved: (val) => _email = val!,
                ),
              ),
              ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   primary: Colors.orange, // background
                //   onPrimary: Colors.white, // foreground
                // ),
                onPressed: () {
                  // test();
                  print(_pageController.amountEditingController.text);

                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => MyHome()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      // showLoadingView(true);
      // await _pageController.initData(
      //     widget.argument.isNewBatch, widget.argument.batchItem);
      // showLoadingView(false);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
