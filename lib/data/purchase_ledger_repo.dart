import 'package:fiftythree_gadget_stock/data/result.dart';
import 'package:fiftythree_gadget_stock/network/api.dart';
import 'package:fiftythree_gadget_stock/network/model/dealer_model.dart';
import 'package:fiftythree_gadget_stock/network/model/phoneModel_model.dart';
import 'package:fiftythree_gadget_stock/network/model/purchaseType_model.dart';

import 'base_repo.dart';

class PurchaseLedgerRepo extends BaseRepo {
  Future<Result> getPurchaseType() async {
    try {
      PurchaseTypeResponseModel response =
          await Api.getInstance().getPurchaseType();

      if (response.resultCode == "200") {
        return Result(true, data: response.purchaseType);
      } else {
        return Result(false, message: response.resultDescription);
      }
    } catch (exception, stackTrace) {
      return handleError(exception, stackTrace);
    }
  }

  Future<Result> getDealer() async {
    try {
      DealerResponseModel response = await Api.getInstance().getDealer();

      if (response.resultCode == "200") {
        return Result(true, data: response.dealer);
      } else {
        return Result(false, message: response.resultDescription);
      }
    } catch (exception, stackTrace) {
      return handleError(exception, stackTrace);
    }
  }

  Future<Result> getPhoneModel() async {
    try {
      PhoneModelResponseModel response =
          await Api.getInstance().getPhoneModel();

      if (response.resultCode == "200") {
        return Result(true, data: response.phoneModel);
      } else {
        return Result(false, message: response.resultDescription);
      }
    } catch (exception, stackTrace) {
      return handleError(exception, stackTrace);
    }
  }
}
