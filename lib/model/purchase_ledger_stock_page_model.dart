class IsLockPageModel extends Object {
  final String name;

  IsLockPageModel(
    this.name,
  );
}

class ColourPageModel extends Object {
  final int id;
  final String name;
  final String desc;

  ColourPageModel(
    this.id,
    this.name,
    this.desc,
  );
}

class StockPageModel extends Object {
  final String description;

  StockPageModel(this.description);
}
