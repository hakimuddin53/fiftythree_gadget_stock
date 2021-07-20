// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseledger_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseLedgerResponseModel _$PurchaseLedgerResponseModelFromJson(
    Map<String, dynamic> json) {
  return PurchaseLedgerResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$PurchaseLedgerResponseModelToJson(
        PurchaseLedgerResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

PurchaseLedger _$PurchaseLedgerFromJson(Map<String, dynamic> json) {
  return PurchaseLedger(
    json['Id'] as String,
    json['PurchaseTypeId'] as String,
    json['Pv_Ref'] as String,
    json['DealerId'] as String,
    json['Dealer_Inv_Ref'] as String,
    json['Amount'] as String,
    json['Units'] as int,
    json['Item_Description'] as String,
    json['Condition'] as String,
    json['Remarks'] as String,
    json['isActive'] as bool,
    json['createdDate'] as String,
    json['createdBy'] as String,
    json['UpdatedDate'] as String,
    json['UpdatedBy'] as String,
  );
}

Map<String, dynamic> _$PurchaseLedgerToJson(PurchaseLedger instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'PurchaseTypeId': instance.purchaseTypeId,
      'Pv_Ref': instance.pvRef,
      'DealerId': instance.dealerId,
      'Dealer_Inv_Ref': instance.dealerInvRef,
      'Item_Description': instance.itemDescription,
      'Amount': instance.amount,
      'Units': instance.units,
      'Condition': instance.condition,
      'Remarks': instance.remarks,
      'isActive': instance.isActive,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'UpdatedDate': instance.updatedDate,
      'UpdatedBy': instance.updatedBy,
    };
