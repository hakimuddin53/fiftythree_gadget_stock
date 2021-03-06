class PurchaseTypePageModel extends Object {
  final int id;
  final String name;
  final String desc;

  PurchaseTypePageModel(
    this.id,
    this.name,
    this.desc,
  );
}

class PhoneModelPageModel extends Object {
  final int id;
  final String name;
  final String desc;

  PhoneModelPageModel(
    this.id,
    this.name,
    this.desc,
  );
}

class ConditionPageModel extends Object {
  final String name;

  ConditionPageModel(
    this.name,
  );
}

class DealerPageModel extends Object {
  final int id;
  final String name;
  final String desc;

  DealerPageModel(
    this.id,
    this.name,
    this.desc,
  );
}

class StockPageModel extends Object {
  final String imeiNumber;
  final String lockStatus;
  final String colour;
  final int colourId;

  StockPageModel(this.imeiNumber, this.lockStatus, this.colour, this.colourId);
}
