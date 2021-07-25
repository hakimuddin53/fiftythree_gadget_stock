import 'package:json_annotation/json_annotation.dart';

part 'stockStatus_model.g.dart';

@JsonSerializable()
class StockStatusResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  StockStatusResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory StockStatusResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$StockStatusResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StockStatusResponseModelToJson(this);
}

@JsonSerializable()
class StockStatus extends Object {
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

  StockStatus(this.id, this.name, this.description, this.remarks, this.isActive,
      this.createdDate, this.createdBy, this.updatedDate, this.updatedBy);

  factory StockStatus.fromJson(Map<String, dynamic> srcJson) =>
      _$StockStatusFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StockStatusToJson(this);
}
