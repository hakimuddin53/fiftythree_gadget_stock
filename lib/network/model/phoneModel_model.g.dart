// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phoneModel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneModelResponseModel _$PhoneModelResponseModelFromJson(
    Map<String, dynamic> json) {
  return PhoneModelResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$PhoneModelResponseModelToJson(
        PhoneModelResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) {
  return PhoneModel(
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

Map<String, dynamic> _$PhoneModelToJson(PhoneModel instance) =>
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
