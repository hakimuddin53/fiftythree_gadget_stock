// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dealer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DealerResponseModel _$DealerResponseModelFromJson(Map<String, dynamic> json) {
  return DealerResponseModel(
    (json['dealer'] as List<dynamic>)
        .map((e) => Dealer.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['result_code'] as String,
    json['result_description'] as String,
  );
}

Map<String, dynamic> _$DealerResponseModelToJson(
        DealerResponseModel instance) =>
    <String, dynamic>{
      'dealer': instance.dealer,
      'result_code': instance.resultCode,
      'result_description': instance.resultDescription,
    };

Dealer _$DealerFromJson(Map<String, dynamic> json) {
  return Dealer(
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

Map<String, dynamic> _$DealerToJson(Dealer instance) => <String, dynamic>{
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
