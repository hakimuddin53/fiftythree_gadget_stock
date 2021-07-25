// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stockStatus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockStatusResponseModel _$StockStatusResponseModelFromJson(
    Map<String, dynamic> json) {
  return StockStatusResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$StockStatusResponseModelToJson(
        StockStatusResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

StockStatus _$StockStatusFromJson(Map<String, dynamic> json) {
  return StockStatus(
    json['id'] as String,
    json['name'] as String,
    json['description'] as String,
    json['remarks'] as String,
    json['isActive'] as bool,
    json['createdDate'] as String,
    json['createdBy'] as String,
    json['updatedDate'] as String,
    json['updatedBy'] as String,
  );
}

Map<String, dynamic> _$StockStatusToJson(StockStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'remarks': instance.remarks,
      'isActive': instance.isActive,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'updatedDate': instance.updatedDate,
      'updatedBy': instance.updatedBy,
    };
