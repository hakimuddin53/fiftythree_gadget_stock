import 'package:json_annotation/json_annotation.dart';

part 'colour_model.g.dart';

@JsonSerializable()
class ColourResponseModel extends Object {
  @JsonKey(name: 'colour')
  List<Colour> colour;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  ColourResponseModel(
    this.colour,
    this.resultCode,
    this.resultDescription,
  );

  factory ColourResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$ColourResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ColourResponseModelToJson(this);
}

@JsonSerializable()
class Colour extends Object {
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

  Colour(this.id, this.name, this.description, this.remarks, this.isActive,
      this.createdDate, this.createdBy, this.updatedDate, this.updatedBy);

  factory Colour.fromJson(Map<String, dynamic> srcJson) =>
      _$ColourFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ColourToJson(this);
}
