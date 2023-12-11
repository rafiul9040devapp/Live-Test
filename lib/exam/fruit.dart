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

void main() {
  Fruit fruit1 = Fruit("Apple", "Red", 2.5);
  Fruit fruit2 = Fruit("Banana", "Yellow", 1.0);
  Fruit fruit3 = Fruit("Grapes", "Purple", 3.0);

  Map<int, Fruit> mapOfFruits = {
    1: fruit1,
    2: fruit2,
    3: fruit3,
  };

  List<Fruit> listOfFruits() =>
      mapOfFruits.entries.map((fruit) => fruit.value).toList();

  print("Original Fruit Details before Discount:");
  displayFruitDetails(listOfFruits());
  print("\n------------------------\n");
  applyPriceDiscount(listOfFruits(), 10);
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
