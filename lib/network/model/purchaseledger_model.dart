import 'package:json_annotation/json_annotation.dart';

part 'purchaseledger_model.g.dart';

@JsonSerializable()
class PurchaseLedgerResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  PurchaseLedgerResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory PurchaseLedgerResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$PurchaseLedgerResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PurchaseLedgerResponseModelToJson(this);
}

@JsonSerializable()
class PurchaseLedger extends Object {
  @JsonKey(name: 'Id')
  String id;

  @JsonKey(name: 'Imei_Number')
  String imeiNumber;

  @JsonKey(name: 'Date')
  String date;

  @JsonKey(name: 'Type')
  String type;

  @JsonKey(name: 'Pv_Ref')
  String pvRef;

  @JsonKey(name: 'Dealer')
  String dealer;

  @JsonKey(name: 'Dealer_Inv_Ref')
  String dealerInvRef;

  @JsonKey(name: 'Amount')
  String amount;

  @JsonKey(name: 'Units')
  int units;

  @JsonKey(name: 'Item_Description')
  String itemDescription;

  @JsonKey(name: 'Condition')
  String condition;

  @JsonKey(name: 'Cost_Price')
  String costPrice;

  @JsonKey(name: 'Retail_Price')
  String retailPrice;

  @JsonKey(name: 'Dealer_Price')
  String dealerPrice;

  @JsonKey(name: 'Phone_Model')
  String phoneModel;

  @JsonKey(name: 'Colour')
  String colour;

  @JsonKey(name: 'Storage')
  String storage;

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

  PurchaseLedger(
      this.id,
      this.imeiNumber,
      this.date,
      this.type,
      this.pvRef,
      this.dealer,
      this.dealerInvRef,
      this.amount,
      this.units,
      this.itemDescription,
      this.condition,
      this.costPrice,
      this.retailPrice,
      this.dealerPrice,
      this.phoneModel,
      this.colour,
      this.storage,
      this.isLock,
      this.inWarranty,
      this.warrantyExpiryDate,
      this.remarks,
      this.isActive,
      this.createdDate,
      this.createdBy,
      this.updatedDate,
      this.updatedBy);

  factory PurchaseLedger.fromJson(Map<String, dynamic> srcJson) =>
      _$PurchaseLedgerFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PurchaseLedgerToJson(this);
}
