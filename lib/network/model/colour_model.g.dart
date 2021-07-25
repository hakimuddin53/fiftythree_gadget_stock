// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourResponseModel _$ColourResponseModelFromJson(Map<String, dynamic> json) {
  return ColourResponseModel(
    (json['colour'] as List<dynamic>)
        .map((e) => Colour.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$ColourResponseModelToJson(
        ColourResponseModel instance) =>
    <String, dynamic>{
      'colour': instance.colour,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

Colour _$ColourFromJson(Map<String, dynamic> json) {
  return Colour(
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

Map<String, dynamic> _$ColourToJson(Colour instance) => <String, dynamic>{
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
