// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockResponseModel _$StockResponseModelFromJson(Map<String, dynamic> json) {
  return StockResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$StockResponseModelToJson(StockResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

Stock _$StockFromJson(Map<String, dynamic> json) {
  return Stock(
    json['Id'] as String,
    json['PurchaseLedgerId'] as String,
    json['Imei_Number'] as String,
    json['PhoneModelId'] as int,
    json['ColourId'] as int,
    json['StorageId'] as int,
    json['Cost_Price'] as String,
    json['Retail_Price'] as String,
    json['Dealer_Price'] as String,
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

Map<String, dynamic> _$StockToJson(Stock instance) => <String, dynamic>{
      'Id': instance.id,
      'PurchaseLedgerId': instance.purchaseLedgerId,
      'Imei_Number': instance.imeiNumber,
      'PhoneModelId': instance.phoneModelId,
      'ColourId': instance.colourId,
      'StorageId': instance.storageId,
      'Cost_Price': instance.costPrice,
      'Retail_Price': instance.retailPrice,
      'Dealer_Price': instance.dealerPrice,
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
