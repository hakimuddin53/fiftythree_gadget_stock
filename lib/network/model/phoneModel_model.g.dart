// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phoneModel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneModelResponseModel _$PhoneModelResponseModelFromJson(
    Map<String, dynamic> json) {
  return PhoneModelResponseModel(
    (json['phoneModel'] as List<dynamic>)
        .map((e) => PhoneModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$PhoneModelResponseModelToJson(
        PhoneModelResponseModel instance) =>
    <String, dynamic>{
      'phoneModel': instance.phoneModel,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) {
  return PhoneModel(
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

Map<String, dynamic> _$PhoneModelToJson(PhoneModel instance) =>
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
