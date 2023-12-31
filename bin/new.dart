void main() {
  // Create a Dart list named fruits with at least three fruits, represented as maps.
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Orange', 'color': 'Orange', 'price': 1.8},
  ];

  print('\nOriginal Fruit Details before Discount:\n');
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10); // Applying a 10% discount


  print('\nFruit details after applying 10% discount:\n');
  displayFruitDetails(fruits);
}


void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, '
        'Price: \$${fruit['price']}');
  }
}


void applyPriceDiscount(List<Map<String, dynamic>> fruits,
    double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice = originalPrice -
        (originalPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}
