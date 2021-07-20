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

  @JsonKey(name: 'PurchaseTypeId')
  String purchaseTypeId;

  @JsonKey(name: 'Pv_Ref')
  String pvRef;

  @JsonKey(name: 'DealerId')
  String dealerId;

  @JsonKey(name: 'Dealer_Inv_Ref')
  String dealerInvRef;

  @JsonKey(name: 'Item_Description')
  String itemDescription;

  @JsonKey(name: 'Amount')
  String amount;

  @JsonKey(name: 'Units')
  int units;

  @JsonKey(name: 'Condition')
  String condition;

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
      this.purchaseTypeId,
      this.pvRef,
      this.dealerId,
      this.dealerInvRef,
      this.amount,
      this.units,
      this.itemDescription,
      this.condition,
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
