import 'package:flutter/foundation.dart';

class FavoriteItemprovider with ChangeNotifier {
  final List<int> _selecteditem = [];
  List<int> get selecteditem => _selecteditem;

  void additem(int value) {
    _selecteditem.add(value);

    notifyListeners();
  }
   void removeItem(int value) {
    _selecteditem.remove(value);

    notifyListeners();
  }

}
