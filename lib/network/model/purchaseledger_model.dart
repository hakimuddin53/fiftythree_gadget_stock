import 'package:fiftythree_gadget_stock/network/model/stock_model.dart';
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
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'purchaseTypeId')
  String purchaseTypeId;

  @JsonKey(name: 'pv_Ref')
  String pvRef;

  @JsonKey(name: 'dealerId')
  String dealerId;

  @JsonKey(name: 'dealer_Inv_Ref')
  String dealerInvRef;

  @JsonKey(name: 'item_Description')
  String itemDescription;

  @JsonKey(name: 'amount')
  String amount;

  @JsonKey(name: 'units')
  int units;

  @JsonKey(name: 'condition')
  String condition;

  @JsonKey(name: 'stocks')
  List<Stock> stocks;

  @JsonKey(name: 'remarks')
  String remarks;

  @JsonKey(name: 'isActive')
  bool isActive;

  @JsonKey(name: 'createdDate')
  String createdDate;

  @JsonKey(name: 'createdBy')
  String createdBy;

  @JsonKey(name: 'updatedDate')
  String updatedDate;

  @JsonKey(name: 'updatedBy')
  String updatedBy;

  PurchaseLedger(
      this.id,
      this.purchaseTypeId,
      this.pvRef,
      this.dealerId,
      this.dealerInvRef,
      this.amount,
      this.units,
      this.itemDescription,
      this.condition,
      this.stocks,
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
