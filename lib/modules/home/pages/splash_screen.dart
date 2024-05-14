import 'package:app_animations/modules/app_route_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  final _routeController = Modular.get<AppRouteController>();
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  awaitSplashAndGoToHome() {
    Future.delayed(const Duration(milliseconds: 3500), () {
      widget._routeController.goToHome();
    });
  }

  @override
  void initState() {
    awaitSplashAndGoToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/game.json'),
      ),
    );
  }
}
