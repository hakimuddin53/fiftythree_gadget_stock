import 'package:fiftythree_gadget_stock/components/ui_style.dart';
import 'package:fiftythree_gadget_stock/model/purchase_ledger_page_model.dart';
import 'package:fiftythree_gadget_stock/pages/controllers/puchase_ledger_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_autocomplete_formfield/simple_autocomplete_formfield.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: _pageController.amountEditingController,
                    focusNode: _pageController.amountFocusNode,
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: _pageController.quantityEditingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Unit',
                    ),
                    // keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val!.length == 0)
                        return "Please Enter Unit";
                      else
                        return null;
                    },
                    // onSaved: (val) => _email = val!,
                  ),
                ),
              ),
              _purchaseTypeAutoCompleteWidget(),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _purchaseTypeAutoCompleteWidget() {
    return Obx(() => SimpleAutocompleteFormField<PurchaseTypePageModel>(
          controller: _pageController.purchaseTypeEditingController,
          focusNode: _pageController.typeFocusNode,
          //enabled: _pageController.routeEnabled.value,
          decoration: UiStyle.textFormDecoration(
            'Type',
            context,
            needLabelText: true,
          ),
          maxSuggestions: UiStyle.simpleAutoCompleteSuggestionMaxCount(),
          suggestionsHeight: UiStyle.simpleAutoCompleteSuggestionMaxHeight(),
          suggestionsBuilder: ((context, items) {
            return UiStyle.simpleAutoCompleteSuggestionList(
                _pageController.purchaseTypeScrollBarController, items);
          }),
          itemBuilder: (context, purchaseType) => Container(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            height: 40,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey.withOpacity(0.3)))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(purchaseType!.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ],
            ),
          ),
          onSearch: (search) async =>
              await _pageController.getPurchaseTypeSearch(search),
          itemFromString: (search) =>
              _pageController.getPurchaseTypeSingleSearch(search),
          onChanged: (value) {
            if (value != null) {
              _pageController.purchaseTypeEditingController.text = value.name;
              // actionRouteCodeSubmitted();
            } else {
              fieldFocusOn(context, _pageController.typeFocusNode);
            }
          },
          onSaved: (value) {
            if (value != null) {
              _pageController.purchaseTypeEditingController.text = value.name;
              // actionRouteCodeSubmitted();
            }
          },
          onFieldSubmitted: (item) {
            if (item != null) {
              fieldFocusOn(context, _pageController.amountFocusNode);
              // actionRouteCodeSubmitted();
            }
          },
          validator: (model) {
            if (model == null) {
              return 'Batch No is empty/invalid';
            }

            return null;
          },
        ));
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
