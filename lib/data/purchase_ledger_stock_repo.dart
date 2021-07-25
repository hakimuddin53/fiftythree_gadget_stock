import 'package:fiftythree_gadget_stock/data/result.dart';
import 'package:fiftythree_gadget_stock/network/api.dart';
import 'package:fiftythree_gadget_stock/network/model/colour_model.dart';

import 'base_repo.dart';

class PurchaseLedgerStockRepo extends BaseRepo {
  Future<Result> getColour() async {
    try {
      ColourResponseModel response = await Api.getInstance().getColour();

      if (response.resultCode == "200") {
        return Result(true, data: response.colour);
      } else {
        return Result(false, message: response.resultDescription);
      }
    } catch (exception, stackTrace) {
      return handleError(exception, stackTrace);
    }
  }
}
