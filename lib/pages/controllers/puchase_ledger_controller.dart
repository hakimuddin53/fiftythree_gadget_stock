import 'package:fiftythree_gadget_stock/data/purchase_ledger_repo.dart';
import 'package:fiftythree_gadget_stock/data/result.dart';
import 'package:fiftythree_gadget_stock/model/purchase_ledger_page_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseLedgerController extends GetxController {
  List<PurchaseTypePageModel> purchaseTypeAutoComplete =
      <PurchaseTypePageModel>[];
  List<PhoneModelPageModel> phoneModelAutoComplete = <PhoneModelPageModel>[];
  List<DealerPageModel> dealerAutoComplete = <DealerPageModel>[];

  List<ConditionPageModel> conditionAutoComplete = <ConditionPageModel>[];

  TextEditingController amountEditingController = TextEditingController();
  TextEditingController dealerInvRefEditingController = TextEditingController();
  TextEditingController pvRefEditingController = TextEditingController();
  TextEditingController quantityEditingController = TextEditingController();
  TextEditingController itemDescriptionEditingController =
      TextEditingController();
  TextEditingController costPriceEditingController = TextEditingController();
  TextEditingController retailPriceEditingController = TextEditingController();
  TextEditingController dealerPriceEditingController = TextEditingController();
  TextEditingController purchaseTypeEditingController = TextEditingController();
  TextEditingController dealerEditingController = TextEditingController();
  TextEditingController conditionEditingController = TextEditingController();
  TextEditingController phoneModelEditingController = TextEditingController();
  FocusNode phoneModelFocusNode = FocusNode();
  FocusNode costPriceFocusNode = FocusNode();
  FocusNode dealerPriceFocusNode = FocusNode();
  ScrollController phoneModelScrollBarController = ScrollController();

  //model and gb on the main purhcase ledger

  FocusNode typeFocusNode = FocusNode();
  FocusNode dealerFocusNode = FocusNode();
  FocusNode conditionFocusNode = FocusNode();
  FocusNode amountFocusNode = FocusNode();
  FocusNode dealerInvRefFocusNode = FocusNode();

  ScrollController purchaseTypeScrollBarController = ScrollController();
  ScrollController dealerScrollBarController = ScrollController();
  ScrollController conditionScrollBarController = ScrollController();

  Future<List<PhoneModelPageModel>> getPhoneModelSearch(
      String phoneModelSearch) async {
    try {
      phoneModelAutoComplete.clear();

      Result resultApi = await PurchaseLedgerRepo().getPhoneModel();

      resultApi.data.forEach((phoneModelDb) {
        phoneModelAutoComplete.add(PhoneModelPageModel(
            phoneModelDb.id, phoneModelDb.name, phoneModelDb.description));
      });
    } catch (exception, stackTrace) {
      phoneModelAutoComplete = [];
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return phoneModelAutoComplete;
  }

  PhoneModelPageModel getPhoneModelSingleSearch(String nameSearch) {
    PhoneModelPageModel obj = PhoneModelPageModel(0, "", "");
    try {
      obj = phoneModelAutoComplete.firstWhere(
          (u) => u.name.toUpperCase() == nameSearch.toUpperCase(),
          orElse: () => PhoneModelPageModel(0, "", ""));
    } catch (exception, stackTrace) {
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return obj;
  }

  Future<List<PurchaseTypePageModel>> getPurchaseTypeSearch(
      String purchaseTypeSearch) async {
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
    PurchaseTypePageModel obj = PurchaseTypePageModel(0, "", "");
    try {
      obj = purchaseTypeAutoComplete.firstWhere(
          (u) => u.name.toUpperCase() == nameSearch.toUpperCase(),
          orElse: () => PurchaseTypePageModel(0, "", ""));
    } catch (exception, stackTrace) {
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return obj;
  }

  Future<List<DealerPageModel>> getDealerSearch(String dealerSearch) async {
    try {
      dealerAutoComplete.clear();

      Result resultApi = await PurchaseLedgerRepo().getDealer();

      resultApi.data.forEach((dealerDb) {
        dealerAutoComplete.add(
            DealerPageModel(dealerDb.id, dealerDb.name, dealerDb.description));
      });
    } catch (exception, stackTrace) {
      dealerAutoComplete = [];
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return dealerAutoComplete;
  }

  DealerPageModel getDealerSingleSearch(String nameSearch) {
    DealerPageModel obj = DealerPageModel(0, "", "");
    try {
      obj = dealerAutoComplete.firstWhere(
          (u) => u.name.toUpperCase() == nameSearch.toUpperCase(),
          orElse: () => DealerPageModel(0, "", ""));
    } catch (exception, stackTrace) {
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }

    return obj;
  }

  void addCondition() {
    try {
      conditionAutoComplete.clear();

      conditionAutoComplete.add(ConditionPageModel("New"));
      conditionAutoComplete.add(ConditionPageModel("Used"));
    } catch (exception, stackTrace) {
      conditionAutoComplete = [];
      // CrashReport().logError(
      //     FlutterErrorDetails(exception: exception, stack: stackTrace));
    }
  }
}
