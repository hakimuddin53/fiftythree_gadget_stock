// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchaseType_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseTypeResponseModel _$PurchaseTypeResponseModelFromJson(
    Map<String, dynamic> json) {
  return PurchaseTypeResponseModel(
    (json['purchaseType'] as List<dynamic>)
        .map((e) => PurchaseType.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$PurchaseTypeResponseModelToJson(
        PurchaseTypeResponseModel instance) =>
    <String, dynamic>{
      'purchaseType': instance.purchaseType,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

PurchaseType _$PurchaseTypeFromJson(Map<String, dynamic> json) {
  return PurchaseType(
    json['id'] as int,
    json['name'] as String,
    json['description'] as String,
    (json['purchaseLedgers'] as List<dynamic>)
        .map((e) => PurchaseLedger.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['remarks'] as String?,
    json['isActive'] as bool,
    json['createdDate'] as String,
    json['createdBy'] as String,
    json['updatedDate'] as String?,
    json['updatedBy'] as String?,
  );
}

Map<String, dynamic> _$PurchaseTypeToJson(PurchaseType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'purchaseLedgers': instance.purchaseLedgers,
      'remarks': instance.remarks,
      'isActive': instance.isActive,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'updatedDate': instance.updatedDate,
      'updatedBy': instance.updatedBy,
    };
