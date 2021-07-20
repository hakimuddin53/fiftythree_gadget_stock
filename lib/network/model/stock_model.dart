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
  @JsonKey(name: 'Id')
  String id;

  @JsonKey(name: 'PurchaseLedgerId')
  String purchaseLedgerId;

  @JsonKey(name: 'Imei_Number')
  String imeiNumber;

  @JsonKey(name: 'PhoneModelId')
  int phoneModelId;

  @JsonKey(name: 'ColourId')
  int colourId;

  @JsonKey(name: 'StorageId')
  int storageId;

  @JsonKey(name: 'Cost_Price')
  String costPrice;

  @JsonKey(name: 'Retail_Price')
  String retailPrice;

  @JsonKey(name: 'Dealer_Price')
  String dealerPrice;

  @JsonKey(name: 'IsLock')
  bool isLock;

  @JsonKey(name: 'InWarranty')
  bool inWarranty;

  @JsonKey(name: 'WarrantyExpiryDate')
  String warrantyExpiryDate;

  @JsonKey(name: 'Remarks')
  String remarks;

  @JsonKey(name: 'isActive')
  bool isActive;

  @JsonKey(name: 'createdDate')
  String createdDate;

  @JsonKey(name: 'createdBy')
  String createdBy;

  @JsonKey(name: 'UpdatedDate')
  String updatedDate;

  @JsonKey(name: 'UpdatedBy')
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
      this.inWarranty,
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
