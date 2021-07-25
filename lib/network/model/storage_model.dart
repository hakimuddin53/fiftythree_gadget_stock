import 'package:json_annotation/json_annotation.dart';

part 'storage_model.g.dart';

@JsonSerializable()
class StorageResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  StorageResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory StorageResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$StorageResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StorageResponseModelToJson(this);
}

@JsonSerializable()
class Storage extends Object {
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

  Storage(this.id, this.name, this.description, this.remarks, this.isActive,
      this.createdDate, this.createdBy, this.updatedDate, this.updatedBy);

  factory Storage.fromJson(Map<String, dynamic> srcJson) =>
      _$StorageFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StorageToJson(this);
}
