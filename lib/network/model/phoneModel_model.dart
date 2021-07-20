import 'package:json_annotation/json_annotation.dart';

part 'phoneModel_model.g.dart';

@JsonSerializable()
class PhoneModelResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  PhoneModelResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory PhoneModelResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$PhoneModelResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PhoneModelResponseModelToJson(this);
}

@JsonSerializable()
class PhoneModel extends Object {
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

  PhoneModel(this.id, this.name, this.description, this.remarks, this.isActive,
      this.createdDate, this.createdBy, this.updatedDate, this.updatedBy);

  factory PhoneModel.fromJson(Map<String, dynamic> srcJson) =>
      _$PhoneModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PhoneModelToJson(this);
}
