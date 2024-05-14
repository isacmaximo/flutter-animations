import 'package:app_animations/modules/home/controllers/home_controller.dart';
import 'package:app_animations/modules/home/pages/details_page.dart';
import 'package:app_animations/modules/home/pages/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/constants.dart';
import 'controllers/home_route_controller.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(() => HomeController(i()));
    i.addLazySingleton(() => HomeRouteController());
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => HomeScreen(),
      transition: TransitionType.leftToRight,
      duration: defaultTransition,
    );
    r.child(
      '/details',
      child: (context) => DetailsPage(drescription: r.args.data),
      transition: TransitionType.leftToRight,
      duration: defaultTransition,
    );
  }
}
