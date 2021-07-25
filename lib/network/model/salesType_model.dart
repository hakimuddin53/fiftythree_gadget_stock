import 'package:json_annotation/json_annotation.dart';

part 'salesType_model.g.dart';

@JsonSerializable()
class SalesTypeResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  SalesTypeResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory SalesTypeResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$SalesTypeResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SalesTypeResponseModelToJson(this);
}

@JsonSerializable()
class SalesType extends Object {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'remarks')
  String remarks;

  @JsonKey(name: 'isActive')
  bool isActive;

  @JsonKey(name: 'createdDate')
  String createdDate;

  @JsonKey(name: 'createdBy')
  String createdBy;

  @JsonKey(name: 'updatedDate')
  String updatedDate;

  @JsonKey(name: 'updatedBy')
  String updatedBy;

  SalesType(this.id, this.name, this.description, this.remarks, this.isActive,
      this.createdDate, this.createdBy, this.updatedDate, this.updatedBy);

  factory SalesType.fromJson(Map<String, dynamic> srcJson) =>
      _$SalesTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SalesTypeToJson(this);
}
