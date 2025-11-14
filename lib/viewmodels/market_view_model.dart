import 'package:flutter/widgets.dart';
import 'package:githubproject13/models/market.dart';

class MarketViewModel with ChangeNotifier {
  Market item = Market(
    id: 'market001',
    itemName: 'Scientific Calculator',
    description: 'Casio fx-82ES • Hardly used.',
    price: 150.00,
    seller: 'Eric',
    postedDate: DateTime.now(),
  );

  String get id => item.id;
  String get itemName => item.itemName;
  String get description => item.description;
  double get price => item.price;
  String get seller => item.seller;
  DateTime get postedDate => item.postedDate;

  void setItemName(String value) {
    item.itemName = value;
    notifyListeners();
  }

  void setDescription(String value) {
    item.description = value;
    notifyListeners();
  }

  void setPrice(double value) {
    item.price = value;
    notifyListeners();
  }

  void setSeller(String value) {
    item.seller = value;
    notifyListeners();
  }
}
