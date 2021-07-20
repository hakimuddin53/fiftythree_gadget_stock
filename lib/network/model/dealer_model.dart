import 'package:json_annotation/json_annotation.dart';

part 'dealer_model.g.dart';

@JsonSerializable()
class DealerResponseModel extends Object {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  DealerResponseModel(
    this.message,
    this.resultCode,
    this.resultDescription,
  );

  factory DealerResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$DealerResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DealerResponseModelToJson(this);
}

@JsonSerializable()
class Dealer extends Object {
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

  Dealer(this.id, this.name, this.description, this.remarks, this.isActive,
      this.createdDate, this.createdBy, this.updatedDate, this.updatedBy);

  factory Dealer.fromJson(Map<String, dynamic> srcJson) =>
      _$DealerFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DealerToJson(this);
}
