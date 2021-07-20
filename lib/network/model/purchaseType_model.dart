import 'package:json_annotation/json_annotation.dart';

part 'purchaseType_model.g.dart';

@JsonSerializable()
class PurchaseTypeResponseModel extends Object {
  @JsonKey(name: 'purchaseType')
  List<PurchaseType> purchaseType;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  PurchaseTypeResponseModel(
    this.purchaseType,
    this.resultCode,
    this.resultDescription,
  );

  factory PurchaseTypeResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$PurchaseTypeResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PurchaseTypeResponseModelToJson(this);
}

@JsonSerializable()
class PurchaseType extends Object {
  @JsonKey(name: 'Id')
  String id;

  @JsonKey(name: 'Name')
  String name;

  @JsonKey(name: 'Description')
  String description;

  @JsonKey(name: 'Remarks')
  String remarks;

  @JsonKey(name: 'isActive')
  bool isActive;

  @JsonKey(name: 'createdDate')
  String createdDate;

  @JsonKey(name: 'createdBy')
  String createdBy;

  @JsonKey(name: 'UpdatedDate')
  String updatedDate;

  @JsonKey(name: 'UpdatedBy')
  String updatedBy;

  PurchaseType(
      this.id,
      this.name,
      this.description,
      this.remarks,
      this.isActive,
      this.createdDate,
      this.createdBy,
      this.updatedDate,
      this.updatedBy);

  factory PurchaseType.fromJson(Map<String, dynamic> srcJson) =>
      _$PurchaseTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PurchaseTypeToJson(this);
}
