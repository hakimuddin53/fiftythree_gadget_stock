// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salesType_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesTypeResponseModel _$SalesTypeResponseModelFromJson(
    Map<String, dynamic> json) {
  return SalesTypeResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$SalesTypeResponseModelToJson(
        SalesTypeResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

SalesType _$SalesTypeFromJson(Map<String, dynamic> json) {
  return SalesType(
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

Map<String, dynamic> _$SalesTypeToJson(SalesType instance) => <String, dynamic>{
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
