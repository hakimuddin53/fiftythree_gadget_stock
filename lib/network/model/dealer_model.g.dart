// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dealer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DealerResponseModel _$DealerResponseModelFromJson(Map<String, dynamic> json) {
  return DealerResponseModel(
    json['message'] as String,
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$DealerResponseModelToJson(
        DealerResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

Dealer _$DealerFromJson(Map<String, dynamic> json) {
  return Dealer(
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

Map<String, dynamic> _$DealerToJson(Dealer instance) => <String, dynamic>{
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
