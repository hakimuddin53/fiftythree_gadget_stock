import 'package:fiftythree_gadget_stock/network/model/purchaseledger_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dealer_model.g.dart';

@JsonSerializable()
class DealerResponseModel extends Object {
  @JsonKey(name: 'dealer')
  List<Dealer> dealer;

  @JsonKey(name: 'result_code')
  String resultCode;

  @JsonKey(name: 'result_description')
  String resultDescription;

  DealerResponseModel(
    this.dealer,
    this.resultCode,
    this.resultDescription,
  );

  factory DealerResponseModel.fromJson(Map<String, dynamic> srcJson) =>
      _$DealerResponseModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DealerResponseModelToJson(this);
}

@JsonSerializable()
class Dealer extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'purchaseLedgers')
  List<PurchaseLedger> purchaseLedgers;

  @JsonKey(name: 'remarks')
  String? remarks;

  @JsonKey(name: 'isActive')
  bool isActive;

  @JsonKey(name: 'createdDate')
  String createdDate;

  @JsonKey(name: 'createdBy')
  String createdBy;

  @JsonKey(name: 'updatedDate')
  String? updatedDate;

  @JsonKey(name: 'updatedBy')
  String? updatedBy;

  Dealer(
      this.id,
      this.name,
      this.description,
      this.purchaseLedgers,
      this.remarks,
      this.isActive,
      this.createdDate,
      this.createdBy,
      this.updatedDate,
      this.updatedBy);

  factory Dealer.fromJson(Map<String, dynamic> srcJson) =>
      _$DealerFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DealerToJson(this);
}
