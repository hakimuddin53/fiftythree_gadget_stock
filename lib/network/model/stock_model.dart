import 'package:json_annotation/json_annotation.dart';

part 'stock_model.g.dart';

@JsonSerializable()
class StockResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  StockResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory StockResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$StockResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StockResponseModelToJson(this);
}

@JsonSerializable()
class Stock extends Object {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'purchaseLedgerId')
  String purchaseLedgerId;

  @JsonKey(name: 'imei_Number')
  String imeiNumber;

  @JsonKey(name: 'phoneModelId')
  int phoneModelId;

  @JsonKey(name: 'colourId')
  int colourId;

  @JsonKey(name: 'storageId')
  int storageId;

  @JsonKey(name: 'cost_Price')
  String costPrice;

  @JsonKey(name: 'retail_Price')
  String retailPrice;

  @JsonKey(name: 'dealer_Price')
  String dealerPrice;

  @JsonKey(name: 'isLock')
  String isLock;

  @JsonKey(name: 'warrantyExpiryDate')
  String warrantyExpiryDate;

  @JsonKey(name: 'remarks')
  String remarks;

  @JsonKey(name: 'isActive')
  String isActive;

  @JsonKey(name: 'createdDate')
  String createdDate;

  @JsonKey(name: 'createdBy')
  String createdBy;

  @JsonKey(name: 'updatedDate')
  String updatedDate;

  @JsonKey(name: 'updatedBy')
  String updatedBy;

  Stock(
      this.id,
      this.purchaseLedgerId,
      this.imeiNumber,
      this.phoneModelId,
      this.colourId,
      this.storageId,
      this.costPrice,
      this.retailPrice,
      this.dealerPrice,
      this.isLock,
      this.warrantyExpiryDate,
      this.remarks,
      this.isActive,
      this.createdDate,
      this.createdBy,
      this.updatedDate,
      this.updatedBy);

  factory Stock.fromJson(Map<String, dynamic> srcJson) =>
      _$StockFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StockToJson(this);
}
