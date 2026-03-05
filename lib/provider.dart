import 'package:flutter/foundation.dart';

class NavProvider extends ChangeNotifier {
  void select() {
    notifyListeners();
  }
}
