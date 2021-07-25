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
    json['id'] as String,
    json['purchaseTypeId'] as String,
    json['pv_Ref'] as String,
    json['dealerId'] as String,
    json['dealer_Inv_Ref'] as String,
    json['amount'] as String,
    json['units'] as int,
    json['item_Description'] as String,
    json['condition'] as String,
    (json['stocks'] as List<dynamic>)
        .map((e) => Stock.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['remarks'] as String,
    json['isActive'] as bool,
    json['createdDate'] as String,
    json['createdBy'] as String,
    json['updatedDate'] as String,
    json['updatedBy'] as String,
  );
}

Map<String, dynamic> _$PurchaseLedgerToJson(PurchaseLedger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purchaseTypeId': instance.purchaseTypeId,
      'pv_Ref': instance.pvRef,
      'dealerId': instance.dealerId,
      'dealer_Inv_Ref': instance.dealerInvRef,
      'item_Description': instance.itemDescription,
      'amount': instance.amount,
      'units': instance.units,
      'condition': instance.condition,
      'stocks': instance.stocks,
      'remarks': instance.remarks,
      'isActive': instance.isActive,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'updatedDate': instance.updatedDate,
      'updatedBy': instance.updatedBy,
    };
