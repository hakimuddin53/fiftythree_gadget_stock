import 'package:fiftythree_gadget_stock/components/ui_style.dart';
import 'package:fiftythree_gadget_stock/model/purchase_ledger_stock_page_model.dart';
import 'package:fiftythree_gadget_stock/network/model/stock_model.dart';
import 'package:fiftythree_gadget_stock/pages/controllers/puchase_ledger_controller_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_autocomplete_formfield/simple_autocomplete_formfield.dart';

import 'base_page_state.dart';

class PurchaseLedgerStock extends StatefulWidget {
  const PurchaseLedgerStock({Key? key}) : super(key: key);

  @override
  _PurchaseLedgerStockState createState() => _PurchaseLedgerStockState();
}

class _PurchaseLedgerStockState extends BasePageState<PurchaseLedgerStock> {
  final _formKey = GlobalKey<FormState>();

  late ValueNotifier<List<Stock>> _stocks;

  final PurchaseLedgerStockController _pageController =
      Get.put(PurchaseLedgerStockController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Purchase Ledger Stock"),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Container(
                  //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: _pageController.imeiNumberEditingController,
                    keyboardType: TextInputType.number,
                    decoration: UiStyle.textFormDecoration(
                      'IMEI Number',
                      context,
                      needLabelText: true,
                    ),
                    validator: (val) {
                      if (val!.length == 0)
                        return "Please Enter IMEI Number";
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
                  // margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: _colourAutoCompleteWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  //   margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: _isLockAutoCompleteWidget(),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10.0, bottom: 20, top: 10),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        _pageController.addStocks(
                            _pageController.imeiNumberEditingController.text,
                            _pageController.isLockEditingController.text,
                            _pageController.colourEditingController.text,
                            _pageController
                                .getColourSingleSearch(_pageController
                                    .colourEditingController.text)
                                .id);
                      },
                      child: Text(
                        'Add Device',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void actionColourSubmitted() {
    fieldFocusChange(context, _pageController.colourFocusNode,
        _pageController.isLockFocusNode);
  }

  Widget _isLockAutoCompleteWidget() {
    return SimpleAutocompleteFormField<IsLockPageModel>(
      controller: _pageController.isLockEditingController,
      focusNode: _pageController.isLockFocusNode,
      decoration: UiStyle.textFormDecoration(
        'Condition',
        context,
        needLabelText: true,
      ),
      maxSuggestions: UiStyle.simpleAutoCompleteSuggestionMaxCount(),
      suggestionsHeight: UiStyle.simpleAutoCompleteSuggestionMaxHeight(),
      suggestionsBuilder: ((context, items) {
        return UiStyle.simpleAutoCompleteSuggestionList(
            _pageController.isLockScrollBarController, items);
      }),
      itemBuilder: (context, condition) => Container(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        height: 40,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(0.3)))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(condition!.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
      onSearch: (search) async => _pageController.isLockAutoComplete
          .where((condition) =>
              condition.name.toLowerCase().contains(search.toLowerCase()))
          .toList(),
      itemFromString: (search) {
        final matches = _pageController.isLockAutoComplete.where((condition) =>
            condition.name.toLowerCase() == search.toLowerCase());
        return matches.isEmpty ? null : matches.first;
      },
      onChanged: (value) {
        if (value != null) {
          _pageController.isLockEditingController.text = value.name;
        } else {
          fieldFocusOn(context, _pageController.isLockFocusNode);
        }
      },
      onSaved: (value) {
        if (value != null) {
          _pageController.isLockEditingController.text = value.name;
        }
      },
      onFieldSubmitted: (item) {
        // if (item != null) {
        //   fieldFocusOn(context, _pageController.costPriceFocusNode);
        // }
      },
      validator: (model) {
        if (model == null) {
          return 'Batch No is empty/invalid';
        }

        return null;
      },
    );
  }

  Widget _colourAutoCompleteWidget() {
    return SimpleAutocompleteFormField<ColourPageModel>(
      controller: _pageController.colourEditingController,
      focusNode: _pageController.colourFocusNode,
      decoration: UiStyle.textFormDecoration(
        'Colour',
        context,
        needLabelText: true,
      ),
      maxSuggestions: UiStyle.simpleAutoCompleteSuggestionMaxCount(),
      suggestionsHeight: UiStyle.simpleAutoCompleteSuggestionMaxHeight(),
      suggestionsBuilder: ((context, items) {
        return UiStyle.simpleAutoCompleteSuggestionList(
            _pageController.colourScrollBarController, items);
      }),
      itemBuilder: (context, dealer) => Container(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        height: 40,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(0.3)))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dealer!.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
      onSearch: (search) async => await _pageController.getColourSearch(search),
      itemFromString: (search) => _pageController.getColourSingleSearch(search),
      onChanged: (value) {
        if (value != null) {
          _pageController.colourEditingController.text = value.name;
          actionColourSubmitted();
        } else {
          fieldFocusOn(context, _pageController.colourFocusNode);
        }
      },
      onSaved: (value) {
        if (value != null) {
          _pageController.colourEditingController.text = value.name;
          actionColourSubmitted();
        }
      },
      onFieldSubmitted: (item) {
        if (item != null) {
          fieldFocusOn(context, _pageController.isLockFocusNode);
          actionColourSubmitted();
        }
      },
      validator: (model) {
        if (model == null) {
          return 'Colour is empty/invalid';
        }

        return null;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      _pageController.addIsLock();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
