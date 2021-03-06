import 'package:fiftythree_gadget_stock/components/ui_style.dart';
import 'package:fiftythree_gadget_stock/data/purchase_ledger_repo.dart';
import 'package:fiftythree_gadget_stock/data/result.dart';
import 'package:fiftythree_gadget_stock/model/purchase_ledger_page_model.dart';
import 'package:fiftythree_gadget_stock/network/model/purchaseledger_model.dart';
import 'package:fiftythree_gadget_stock/network/model/stock_model.dart';
import 'package:fiftythree_gadget_stock/pages/controllers/puchase_ledger_controller.dart';
import 'package:fiftythree_gadget_stock/pages/controllers/puchase_ledger_controller_stock.dart';
import 'package:fiftythree_gadget_stock/pages/view/purchase_legder_stock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:simple_autocomplete_formfield/simple_autocomplete_formfield.dart';
import 'package:uuid/uuid.dart';

import 'base_page_state.dart';

class PurchaseLedgerPage extends StatefulWidget {
  const PurchaseLedgerPage({Key? key}) : super(key: key);

  @override
  _PurchaseLedgerPageState createState() => _PurchaseLedgerPageState();
}

class _PurchaseLedgerPageState extends BasePageState<PurchaseLedgerPage> {
  final _formKey = GlobalKey<FormState>();

  final PurchaseLedgerController _pageController =
      Get.put(PurchaseLedgerController());

  final PurchaseLedgerStockController _pageControllerStock =
      Get.put(PurchaseLedgerStockController());

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Container(
                        //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _pageController.pvRefEditingController,
                          decoration: UiStyle.textFormDecoration(
                            'PV Reference',
                            context,
                            needLabelText: true,
                          ),
                          enabled: false,
                          // keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val!.length == 0)
                              return "Please Enter Dealer Invoice Reference";
                            else
                              return null;
                          },
                          // onSaved: (val) => _email = val!,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Container(
                        //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller:
                              _pageController.dealerInvRefEditingController,
                          focusNode: _pageController.dealerInvRefFocusNode,

                          decoration: UiStyle.textFormDecoration(
                            'Dealer Invoice Reference',
                            context,
                            needLabelText: true,
                          ),
                          // keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val!.length == 0)
                              return "Please Enter Dealer Invoice Reference";
                            else
                              return null;
                          },
                          // onSaved: (val) => _email = val!,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: _purchaseTypeAutoCompleteWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  // margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: _dealerAutoCompleteWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  //   margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: _conditionAutoCompleteWidget(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Container(
                        //  margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _pageController.quantityEditingController,
                          keyboardType: TextInputType.number,

                          decoration: UiStyle.textFormDecoration(
                            'Unit',
                            context,
                            needLabelText: true,
                          ),

                          // decoration: InputDecoration(
                          //   border: OutlineInputBorder(),
                          //   hintText: 'Unit',
                          // ),
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
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        // margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller: _pageController.amountEditingController,
                          focusNode: _pageController.amountFocusNode,
                          keyboardType: TextInputType.number,
                          decoration: UiStyle.textFormDecoration(
                            'Amount',
                            context,
                            needLabelText: true,
                          ),
                          // decoration: InputDecoration(
                          //   border: OutlineInputBorder(),
                          //   hintText: 'Amount',
                          // ),
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
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  // margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller:
                        _pageController.itemDescriptionEditingController,

                    decoration: UiStyle.textFormDecoration(
                      'Description',
                      context,
                      needLabelText: true,
                    ),

                    // decoration: InputDecoration(
                    //   border: OutlineInputBorder(),
                    //   hintText: 'Description',
                    // ),
                    // keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val!.length == 0)
                        return "Please Enter Item Description";
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
                  //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: _phoneModelAutoCompleteWidget(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Container(
                        child: TextFormField(
                          controller:
                              _pageController.retailPriceEditingController,
                          keyboardType: TextInputType.number,

                          decoration: UiStyle.textFormDecoration(
                            'Retail Price',
                            context,
                            needLabelText: true,
                          ),

                          validator: (val) {
                            if (val!.length == 0)
                              return "Please Enter Retail Price";
                            else
                              return null;
                          },
                          // onSaved: (val) => _email = val!,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        // margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          controller:
                              _pageController.costPriceEditingController,
                          focusNode: _pageController.costPriceFocusNode,
                          keyboardType: TextInputType.number,
                          decoration: UiStyle.textFormDecoration(
                            'Cost Price',
                            context,
                            needLabelText: true,
                          ),
                          // decoration: InputDecoration(
                          //   border: OutlineInputBorder(),
                          //   hintText: 'Amount',
                          // ),
                          // keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val!.length == 0)
                              return "Please Enter Cost Price";
                            else
                              return null;
                          },
                          // onSaved: (val) => _email = val!,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Container(
                  //margin: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: _pageController.dealerPriceEditingController,
                    focusNode: _pageController.dealerPriceFocusNode,

                    decoration: UiStyle.textFormDecoration(
                      'Dealer Price',
                      context,
                      needLabelText: true,
                    ),
                    // keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val!.length == 0)
                        return "Please Enter Dealer Invoice Reference";
                      else
                        return null;
                    },
                    // onSaved: (val) => _email = val!,
                  ),
                ),
              ),
              Obx(
                () => ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _pageControllerStock.stocks.length,
                  itemBuilder: (BuildContext context, int index) {
                    StockPageModel u = _pageControllerStock.stocks[index];
                    return _listTileScanCon(u);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox.shrink();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Container(
                        margin: const EdgeInsets.only(
                            right: 10.0, bottom: 20, top: 10),
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green[800], // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () async {
                                var uuid = Uuid();

                                var purchaseLedgerId = uuid.v1();

                                List<Stock> stocks = <Stock>[];

                                _pageControllerStock.stocks
                                    .forEach((StockPageModel u) {
                                  stocks.add(Stock(
                                      uuid.v1(),
                                      purchaseLedgerId,
                                      u.imeiNumber,
                                      _pageController
                                          .getPhoneModelSingleSearch(
                                              _pageController
                                                  .phoneModelEditingController
                                                  .text)
                                          .id,
                                      u.colourId,
                                      123, //storage id
                                      _pageController
                                          .costPriceEditingController.text,
                                      _pageController
                                          .retailPriceEditingController.text,
                                      _pageController
                                          .dealerPriceEditingController.text,
                                      _pageController
                                          .conditionEditingController.text,
                                      u.lockStatus,
                                      "",
                                      "2021-08-05",
                                      "",
                                      "Y",
                                      "2021-08-05",
                                      ""));
                                });

                                var purchaseLedger = PurchaseLedger(
                                    purchaseLedgerId,
                                    _pageController
                                        .getPurchaseTypeSingleSearch(
                                            _pageController
                                                .purchaseTypeEditingController
                                                .text)
                                        .id,
                                    _pageController.pvRefEditingController.text,
                                    _pageController
                                        .getDealerSingleSearch(_pageController
                                            .dealerEditingController.text)
                                        .id,
                                    _pageController
                                        .dealerInvRefEditingController.text,
                                    _pageController
                                        .amountEditingController.text,
                                    int.parse(_pageController
                                        .quantityEditingController.text),
                                    _pageController
                                        .itemDescriptionEditingController.text,
                                    _pageController
                                        .conditionEditingController.text,
                                    stocks,
                                    "",
                                    "2021-08-05",
                                    "",
                                    "Y",
                                    "2021-08-05",
                                    "");

                                Result resultApi = await PurchaseLedgerRepo()
                                    .savePurchaseLedger(purchaseLedger);
                              },
                              child: Text(
                                'Save',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                          right: 10.0, bottom: 20, top: 10),
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightGreen[500], // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {
                              // test();

                              // StockPageModel argument = StockPageModel(_pageController
                              //     .itemDescriptionEditingController.text);

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  settings: RouteSettings(
                                      name: "/PurchaseLedgerStock"),
                                  builder: (context) => PurchaseLedgerStock(),
                                ),
                              );

                              // Navigator.of(context).pushNamed('/PurchaseLedgerStock');

                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (_) => MyHome()));
                            },
                            child: Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _listTileScanCon(StockPageModel model) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      // decoration: BoxDecoration(
      //   border: Border.all(),
      //   borderRadius: BorderRadius.circular(12.0),
      // ),
      child: ListTile(
        onTap: () => {
          //_deleteBooking(value[index], value, index),
        },
        title: Row(
          children: <Widget>[
            Text(
              '${model.imeiNumber}',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Text(
              '${model.colour}' + " - " + '${model.lockStatus}',
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            InkWell(
              onTap: () => {
                // _deleteBooking(value[index], value, index),
              },
              child: Container(
                margin: const EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 0, top: 0),
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),

        // Text('${value[index].userName}'),
        subtitle: Text('${model.colour}'),
      ),
    );
    // return ListTile(
    //     title: Text(model.imeiNumber, style: TextStyle(fontSize: 14)),
    //     trailing: IconButton(
    //       icon: Icon(Icons.remove_circle),
    //       onPressed: () => print("didChangePlatformBrightness"),
    //     ));
  }

  Widget _phoneModelAutoCompleteWidget() {
    return SimpleAutocompleteFormField<PhoneModelPageModel>(
      controller: _pageController.phoneModelEditingController,
      focusNode: _pageController.phoneModelFocusNode,
      decoration: UiStyle.textFormDecoration(
        'Model',
        context,
        needLabelText: true,
      ),
      maxSuggestions: UiStyle.simpleAutoCompleteSuggestionMaxCount(),
      suggestionsHeight: UiStyle.simpleAutoCompleteSuggestionMaxHeight(),
      suggestionsBuilder: ((context, items) {
        return UiStyle.simpleAutoCompleteSuggestionList(
            _pageController.phoneModelScrollBarController, items);
      }),
      itemBuilder: (context, phoneModel) => Container(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        height: 40,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(0.3)))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(phoneModel!.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
      onSearch: (search) async =>
          await _pageController.getPhoneModelSearch(search),
      itemFromString: (search) =>
          _pageController.getPhoneModelSingleSearch(search),
      onChanged: (value) {
        if (value != null) {
          _pageController.phoneModelEditingController.text = value.name;
          actionPhoneModelSubmitted();
        } else {
          fieldFocusOn(context, _pageController.phoneModelFocusNode);
        }
      },
      onSaved: (value) {
        if (value != null) {
          _pageController.phoneModelEditingController.text = value.name;
        }
      },
      onFieldSubmitted: (item) {
        if (item != null) {
          actionPhoneModelSubmitted();
        }
      },
      validator: (model) {
        if (model == null) {
          return 'Phone Model is empty/invalid';
        }

        return null;
      },
    );
  }

  void actionPhoneModelSubmitted() {
    fieldFocusChange(context, _pageController.phoneModelFocusNode,
        _pageController.costPriceFocusNode);
  }

  Widget _purchaseTypeAutoCompleteWidget() {
    return SimpleAutocompleteFormField<PurchaseTypePageModel>(
      controller: _pageController.purchaseTypeEditingController,
      focusNode: _pageController.typeFocusNode,
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
          actionPurchaseTypeSubmitted();
        } else {
          fieldFocusOn(context, _pageController.typeFocusNode);
        }
      },
      onSaved: (value) {
        if (value != null) {
          _pageController.purchaseTypeEditingController.text = value.name;
        }
      },
      onFieldSubmitted: (item) {
        if (item != null) {
          actionPurchaseTypeSubmitted();
        }
      },
      validator: (model) {
        if (model == null) {
          return 'Purchase Type is empty/invalid';
        }

        return null;
      },
    );
  }

  void actionPurchaseTypeSubmitted() {
    fieldFocusChange(context, _pageController.typeFocusNode,
        _pageController.dealerFocusNode);
  }

  void actionDealerSubmitted() {
    fieldFocusChange(context, _pageController.dealerFocusNode,
        _pageController.amountFocusNode);
  }

  Widget _conditionAutoCompleteWidget() {
    return SimpleAutocompleteFormField<ConditionPageModel>(
      controller: _pageController.conditionEditingController,
      focusNode: _pageController.conditionFocusNode,
      decoration: UiStyle.textFormDecoration(
        'Condition',
        context,
        needLabelText: true,
      ),
      maxSuggestions: UiStyle.simpleAutoCompleteSuggestionMaxCount(),
      suggestionsHeight: UiStyle.simpleAutoCompleteSuggestionMaxHeight(),
      suggestionsBuilder: ((context, items) {
        return UiStyle.simpleAutoCompleteSuggestionList(
            _pageController.conditionScrollBarController, items);
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
      onSearch: (search) async => _pageController.conditionAutoComplete
          .where((condition) =>
              condition.name.toLowerCase().contains(search.toLowerCase()))
          .toList(),
      itemFromString: (search) {
        final matches = _pageController.conditionAutoComplete.where(
            (condition) =>
                condition.name.toLowerCase() == search.toLowerCase());
        return matches.isEmpty ? null : matches.first;
      },
      onChanged: (value) {
        if (value != null) {
          _pageController.conditionEditingController.text = value.name;
        } else {
          fieldFocusOn(context, _pageController.conditionFocusNode);
        }
      },
      onSaved: (value) {
        if (value != null) {
          _pageController.conditionEditingController.text = value.name;
        }
      },
      onFieldSubmitted: (item) {
        if (item != null) {
          fieldFocusOn(context, _pageController.amountFocusNode);
        }
      },
      validator: (model) {
        if (model == null) {
          return 'Batch No is empty/invalid';
        }

        return null;
      },
    );
  }

  Widget _dealerAutoCompleteWidget() {
    return SimpleAutocompleteFormField<DealerPageModel>(
      controller: _pageController.dealerEditingController,
      focusNode: _pageController.dealerFocusNode,
      decoration: UiStyle.textFormDecoration(
        'Dealer',
        context,
        needLabelText: true,
      ),
      maxSuggestions: UiStyle.simpleAutoCompleteSuggestionMaxCount(),
      suggestionsHeight: UiStyle.simpleAutoCompleteSuggestionMaxHeight(),
      suggestionsBuilder: ((context, items) {
        return UiStyle.simpleAutoCompleteSuggestionList(
            _pageController.dealerScrollBarController, items);
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
      onSearch: (search) async => await _pageController.getDealerSearch(search),
      itemFromString: (search) => _pageController.getDealerSingleSearch(search),
      onChanged: (value) {
        if (value != null) {
          _pageController.dealerEditingController.text = value.name;
          actionDealerSubmitted();
        } else {
          fieldFocusOn(context, _pageController.dealerFocusNode);
        }
      },
      onSaved: (value) {
        if (value != null) {
          _pageController.dealerEditingController.text = value.name;
          actionDealerSubmitted();
        }
      },
      onFieldSubmitted: (item) {
        if (item != null) {
          fieldFocusOn(context, _pageController.amountFocusNode);
          actionDealerSubmitted();
        }
      },
      validator: (model) {
        if (model == null) {
          return 'Batch No is empty/invalid';
        }

        return null;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      _pageController.pvRefEditingController.text = "PV-0621-065";
      _pageController.addCondition();

      // _stocks.clear();
      //
      // _stocks.add(StockPageModel("", "", ""));
      //
      // _stockListener = ValueNotifier(_getStocks());

      // showLoadingView(true);
      // await _pageController.initData(
      //     widget.argument.isNewBatch, widget.argument.batchItem);
      // showLoadingView(false);
    });
  }

  // List<StockPageModel> _getStocks() {
  //   return _stocks;
  // }

  @override
  void dispose() {
    super.dispose();
  }
}
