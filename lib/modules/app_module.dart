import 'package:app_animations/modules/app_route_controller.dart';
import 'package:app_animations/modules/home/home_module.dart';
import 'package:app_animations/modules/home/pages/splash_screen.dart';
import 'package:app_animations/shared/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(() => AppRouteController());
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => SplashScreen(),
      transition: TransitionType.leftToRight,
      duration: defaultTransition,
    );
    r.module(
      '/home/',
      module: HomeModule(),
      transition: TransitionType.leftToRight,
      duration: defaultTransition,
    );
  }
}
