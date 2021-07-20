import 'package:fiftythree_gadget_stock/data/purchase_ledger_repo.dart';
import 'package:fiftythree_gadget_stock/data/result.dart';
import 'package:fiftythree_gadget_stock/model/purchase_ledger_page_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseLedgerController extends GetxController {
  List<PurchaseTypePageModel> purchaseTypeAutoComplete =
      <PurchaseTypePageModel>[];

  TextEditingController amountEditingController = TextEditingController();
  TextEditingController quantityEditingController = TextEditingController();
  TextEditingController purchaseTypeEditingController = TextEditingController();
  FocusNode typeFocusNode = FocusNode();
  FocusNode amountFocusNode = FocusNode();

  ScrollController purchaseTypeScrollBarController = ScrollController();

  Future<List<PurchaseTypePageModel>> getPurchaseTypeSearch(
      String routeCodeSearch) async {
    try {
      purchaseTypeAutoComplete.clear();

      Result resultApi = await PurchaseLedgerRepo().getPurchaseType();

      resultApi.data.forEach((purchaseTypeDb) {
        purchaseTypeAutoComplete.add(PurchaseTypePageModel(purchaseTypeDb.id,
            purchaseTypeDb.name, purchaseTypeDb.description));
      });
    } catch (exception, stackTrace) {
      purchaseTypeAutoComplete = [];
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return purchaseTypeAutoComplete;
  }

  PurchaseTypePageModel getPurchaseTypeSingleSearch(String nameSearch) {
    PurchaseTypePageModel obj = PurchaseTypePageModel("", "", "");
    try {
      obj = purchaseTypeAutoComplete.firstWhere(
          (u) => u.name.toUpperCase() == nameSearch.toUpperCase(),
          orElse: () => PurchaseTypePageModel("", "", ""));
    } catch (exception, stackTrace) {
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return obj;
  }
}
