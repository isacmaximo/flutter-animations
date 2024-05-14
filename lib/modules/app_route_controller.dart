import 'package:flutter_modular/flutter_modular.dart';

class AppRouteController {
  void goToHome() {
    Modular.to.pushReplacementNamed('/home/');
  }
}
