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
    json['Imei_Number'] as String,
    json['Date'] as String,
    json['Type'] as String,
    json['Pv_Ref'] as String,
    json['Dealer'] as String,
    json['Dealer_Inv_Ref'] as String,
    json['Amount'] as String,
    json['Units'] as int,
    json['Item_Description'] as String,
    json['Condition'] as String,
    json['Cost_Price'] as String,
    json['Retail_Price'] as String,
    json['Dealer_Price'] as String,
    json['Phone_Model'] as String,
    json['Colour'] as String,
    json['Storage'] as String,
    json['IsLock'] as bool,
    json['InWarranty'] as bool,
    json['WarrantyExpiryDate'] as String,
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
      'Imei_Number': instance.imeiNumber,
      'Date': instance.date,
      'Type': instance.type,
      'Pv_Ref': instance.pvRef,
      'Dealer': instance.dealer,
      'Dealer_Inv_Ref': instance.dealerInvRef,
      'Amount': instance.amount,
      'Units': instance.units,
      'Item_Description': instance.itemDescription,
      'Condition': instance.condition,
      'Cost_Price': instance.costPrice,
      'Retail_Price': instance.retailPrice,
      'Dealer_Price': instance.dealerPrice,
      'Phone_Model': instance.phoneModel,
      'Colour': instance.colour,
      'Storage': instance.storage,
      'IsLock': instance.isLock,
      'InWarranty': instance.inWarranty,
      'WarrantyExpiryDate': instance.warrantyExpiryDate,
      'Remarks': instance.remarks,
      'isActive': instance.isActive,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'UpdatedDate': instance.updatedDate,
      'UpdatedBy': instance.updatedBy,
    };
