class Fruit {
  final String? _name;
  final String? _color;
  double? _price;

  Fruit(this._name, this._color, this._price);

  String get name => _name?.toUpperCase() ?? "N/A";

  String get color => _color?.toUpperCase() ?? "N/A";

  double get price => _price ?? 0.0;

  set price(double value) {
    _price = value;
  }
}

void displayFruitDetails(List<Fruit>? fruits) {
  if (fruits != null && fruits.isNotEmpty) {
    for (var fruit in fruits) {
      print(
          "Name: ${fruit.name}, Color: ${fruit.color}, Price: \$${fruit.price.toStringAsFixed(2)}");
    }
  }
}

void applyPriceDiscount(List<Fruit>? fruits, int discount) {
  print("Fruit Details After Applying $discount% Discount:");
  if (fruits != null && fruits.isNotEmpty) {
    for (var fruit in fruits) {
      double percentage = (fruit.price) * (discount / 100);
      double discountedPrice = (fruit.price) - percentage;
      fruit.price = discountedPrice;
    }
  }
  displayFruitDetails(fruits);
}
