import 'package:json_annotation/json_annotation.dart';

part 'colour_model.g.dart';

@JsonSerializable()
class ColourResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  ColourResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory ColourResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$ColourResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ColourResponseModelToJson(this);
}

@JsonSerializable()
class Colour extends Object {
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

  Colour(this.id, this.name, this.description, this.remarks, this.isActive,
      this.createdDate, this.createdBy, this.updatedDate, this.updatedBy);

  factory Colour.fromJson(Map<String, dynamic> srcJson) =>
      _$ColourFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ColourToJson(this);
}
