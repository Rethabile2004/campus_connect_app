// models/market.dart
class Market {
  final String id;
   String itemName;
   String description;
   double price;
   String seller;
   DateTime postedDate;

  Market({
    required this.id,
    required this.itemName,
    required this.description,
    required this.price,
    required this.seller,
    required this.postedDate,
  });
}
