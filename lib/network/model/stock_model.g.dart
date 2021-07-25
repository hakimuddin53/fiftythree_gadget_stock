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
    json['id'] as String,
    json['purchaseLedgerId'] as String,
    json['imei_Number'] as String,
    json['phoneModelId'] as int,
    json['colourId'] as int,
    json['storageId'] as int,
    json['cost_Price'] as String,
    json['retail_Price'] as String,
    json['dealer_Price'] as String,
    json['isLock'] as bool,
    json['warrantyExpiryDate'] as String,
    json['remarks'] as String,
    json['isActive'] as bool,
    json['createdDate'] as String,
    json['createdBy'] as String,
    json['updatedDate'] as String,
    json['updatedBy'] as String,
  );
}

Map<String, dynamic> _$StockToJson(Stock instance) => <String, dynamic>{
      'id': instance.id,
      'purchaseLedgerId': instance.purchaseLedgerId,
      'imei_Number': instance.imeiNumber,
      'phoneModelId': instance.phoneModelId,
      'colourId': instance.colourId,
      'storageId': instance.storageId,
      'cost_Price': instance.costPrice,
      'retail_Price': instance.retailPrice,
      'dealer_Price': instance.dealerPrice,
      'isLock': instance.isLock,
      'warrantyExpiryDate': instance.warrantyExpiryDate,
      'remarks': instance.remarks,
      'isActive': instance.isActive,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'updatedDate': instance.updatedDate,
      'updatedBy': instance.updatedBy,
    };
