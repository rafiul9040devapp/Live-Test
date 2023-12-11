import 'fruit.dart';

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