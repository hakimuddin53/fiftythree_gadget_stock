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
    json['Id'] as String,
    json['Name'] as String,
    json['Description'] as String,
    json['Remarks'] as String,
    json['isActive'] as bool,
    json['createdDate'] as String,
    json['createdBy'] as String,
    json['UpdatedDate'] as String,
    json['UpdatedBy'] as String,
  );
}

Map<String, dynamic> _$PurchaseTypeToJson(PurchaseType instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Description': instance.description,
      'Remarks': instance.remarks,
      'isActive': instance.isActive,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'UpdatedDate': instance.updatedDate,
      'UpdatedBy': instance.updatedBy,
    };
