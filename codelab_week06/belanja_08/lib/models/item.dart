// lib/models/item.dart
class Item {
  final String name;
  final int price;

  const Item({required this.name, required this.price});

  factory Item.fromJson(Map<String, dynamic> json) =>
      Item(name: json['name'] as String, price: json['price'] as int);

  Map<String, dynamic> toJson() => {'name': name, 'price': price};

  @override
  String toString() => 'Item(name: $name, price: $price)';
}
