import 'package:fiftythree_gadget_stock/data/purchase_ledger_stock_repo.dart';
import 'package:fiftythree_gadget_stock/data/result.dart';
import 'package:fiftythree_gadget_stock/model/purchase_ledger_page_model.dart';
import 'package:fiftythree_gadget_stock/model/purchase_ledger_stock_page_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseLedgerStockController extends GetxController {
  RxList<StockPageModel> stocks = <StockPageModel>[].obs;
  List<ColourPageModel> colourAutoComplete = <ColourPageModel>[];
  List<IsLockPageModel> isLockAutoComplete = <IsLockPageModel>[];

  TextEditingController imeiNumberEditingController = TextEditingController();

  TextEditingController colourEditingController = TextEditingController();
  TextEditingController isLockEditingController = TextEditingController();

  FocusNode isLockFocusNode = FocusNode();
  FocusNode colourFocusNode = FocusNode();

  ScrollController colourScrollBarController = ScrollController();
  ScrollController isLockScrollBarController = ScrollController();

  Future<List<ColourPageModel>> getColourSearch(String dealerSearch) async {
    try {
      colourAutoComplete.clear();

      Result resultApi = await PurchaseLedgerStockRepo().getColour();

      resultApi.data.forEach((colourDb) {
        colourAutoComplete.add(
            ColourPageModel(colourDb.id, colourDb.name, colourDb.description));
      });
    } catch (exception, stackTrace) {
      colourAutoComplete = [];
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return colourAutoComplete;
  }

  ColourPageModel getColourSingleSearch(String nameSearch) {
    ColourPageModel obj = ColourPageModel(0, "", "");
    try {
      obj = colourAutoComplete.firstWhere(
          (u) => u.name.toUpperCase() == nameSearch.toUpperCase(),
          orElse: () => ColourPageModel(0, "", ""));
    } catch (exception, stackTrace) {
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return obj;
  }

  void addIsLock() {
    try {
      isLockAutoComplete.clear();

      isLockAutoComplete.add(IsLockPageModel("Yes"));
      isLockAutoComplete.add(IsLockPageModel("No"));
    } catch (exception, stackTrace) {
      isLockAutoComplete = [];
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }
  }

  void addStocks(
      String imeiNumber, String lockStatus, String colour, int colourId) {
    try {
      stocks.clear();

      stocks.add(StockPageModel(imeiNumber, lockStatus, colour, colourId));
    } catch (exception, stackTrace) {
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }
  }
}
