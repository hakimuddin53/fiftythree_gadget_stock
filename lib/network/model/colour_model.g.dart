// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourResponseModel _$ColourResponseModelFromJson(Map<String, dynamic> json) {
  return ColourResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$ColourResponseModelToJson(
        ColourResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

Colour _$ColourFromJson(Map<String, dynamic> json) {
  return Colour(
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

Map<String, dynamic> _$ColourToJson(Colour instance) => <String, dynamic>{
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
