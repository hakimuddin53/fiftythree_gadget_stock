// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageResponseModel _$StorageResponseModelFromJson(Map<String, dynamic> json) {
  return StorageResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$StorageResponseModelToJson(
        StorageResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

Storage _$StorageFromJson(Map<String, dynamic> json) {
  return Storage(
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

Map<String, dynamic> _$StorageToJson(Storage instance) => <String, dynamic>{
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
