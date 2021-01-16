import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharedState with ChangeNotifier {
  bool _isLightblue = true;

  bool get getLightBlue => _isLightblue;

  set setLightBlue(bool isLB) {
    _isLightblue = isLB;
    notifyListeners(); // memberitahukan ke widget consumers
  }

  Color get getColorLB => (_isLightblue) ? Colors.lightBlue : Colors.amber;
}
