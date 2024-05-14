import 'package:flutter_modular/flutter_modular.dart';

class HomeRouteController {
  void goToDetails(String description) {
    Modular.to.pushNamed('./details', arguments: description);
  }
}
