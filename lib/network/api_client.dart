import 'package:dio/dio.dart';
import 'package:fiftythree_gadget_stock/network/model/colour_model.dart';
import 'package:fiftythree_gadget_stock/network/model/phoneModel_model.dart';
import 'package:retrofit/http.dart';

import 'model/dealer_model.dart';
import 'model/login_model.dart';
import 'model/purchaseType_model.dart';
import 'model/purchaseledger_model.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @POST("api/user/signin")
  Future<LoginResponseModel> appLogin(@Body() LoginModel params);

  @POST("api/purchasetype/getPurchasetype")
  Future<PurchaseTypeResponseModel> getPurchaseType();

  @POST("api/dealer/getDealer")
  Future<DealerResponseModel> getDealer();

  @POST("api/phonemodel/getPhonemodel")
  Future<PhoneModelResponseModel> getPhoneModel();

  @POST("api/colour/getColour")
  Future<ColourResponseModel> getColour();

  @POST("api/user/savePurchaseLedger")
  Future<PurchaseLedgerResponseModel> savePurchaseLedger(
      @Body() PurchaseLedger purchaseLedger);
}
