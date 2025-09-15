// class FoodItems {
//   String name;
//   String count;
//
//   FoodItems(this.name, this.count);
//
//   @override
//   String toString() {
//     return 'FoodItems{name: $name, count: $count}';
//   }
//
//
// }
//
// List<FoodItems> foodList = [
//   FoodItems("Pizza", "2"),
//   FoodItems("Mutton", "8"),
//   FoodItems("Fish", "1"),
//   FoodItems("Pineapple", "10"),
//   FoodItems("Fish Curry", "10"),
// ];

// List lis = ["pxa", "apple"];
// List count = ["5", "1"];
// List prix = [250, 52];

class FoodItem {
  String name;
  int count;
  int unitPrize;

  // int totalPrize;

  FoodItem({required this.name, required this.count, required this.unitPrize});

  int get totalPrize => unitPrize * count;

  // Override toString for better debugging
  @override
  String toString() {
    return 'FoodItem{name: $name, count: $count, unitPrize: $unitPrize, totalPrize: $totalPrize}';
  }
}

List<FoodItem> foodList = [
  FoodItem(name: "Pizza", count: 2, unitPrize: 250),
  FoodItem(name: "Apple", count: 1, unitPrize: 52),
  FoodItem(name: "Mutton", count: 8, unitPrize: 500),
  FoodItem(name: "Fish", count: 1, unitPrize: 300),
  FoodItem(name: "Pineapple", count: 10, unitPrize: 100),
  FoodItem(name: "Fish Curry", count: 10, unitPrize: 150),
];
