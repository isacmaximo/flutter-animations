import 'dart:async';

import 'package:app_animations/components/options_widget.dart';
import 'package:app_animations/models/game_store.dart';
import 'package:app_animations/modules/home/controllers/home_route_controller.dart';
import 'package:app_animations/shared/descriptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final HomeRouteController _routeController;

  HomeControllerBase(this._routeController);

  @observable
  ObservableList<GameStore> listGame = ObservableList<GameStore>.of([
    GameStore(
      name: 'Super Mario World',
      description: marioDescription,
      imagePath: 'assets/images/mario.jpg',
      favorite: false,
      gameplayLink: '',
      rating: 4.7,
      expand: false,
    ),
    GameStore(
      name: 'Donkey Kong Country',
      description: donkeyDescription,
      imagePath: 'assets/images/donkey.png',
      favorite: false,
      gameplayLink: '',
      rating: 4.5,
      expand: false,
    ),
    GameStore(
      name: 'The Legend of Zelda',
      description: zeldaDescription,
      imagePath: 'assets/images/zelda.png',
      favorite: false,
      gameplayLink: '',
      rating: 4.6,
      expand: false,
    ),
    GameStore(
      name: 'Chrono Trigger',
      description: chronoDescription,
      imagePath: 'assets/images/chrono.jpg',
      favorite: false,
      gameplayLink: '',
      rating: 4.7,
      expand: false,
    ),
    GameStore(
      name: 'Kirby Super Star',
      description: kirbyDescription,
      imagePath: 'assets/images/kirby.jpg',
      favorite: false,
      gameplayLink: '',
      rating: 4.4,
      expand: false,
    ),
  ]);

  @action
  void setOrRemoveGameFavorite(int index) {
    listGame[index].favorite = !listGame[index].favorite!;
  }

  @action
  void expandCardGame(int index) {
    listGame[index].expand = !listGame[index].expand;
  }

  @action
  void changeFavoriteValue(int index) {
    listGame[index].favorite = !listGame[index].favorite!;
  }

  //essa função só retorna o widget depois do delayed
  Future<Widget> loadOpacityOptions(int index) async {
    // Crie um Completer para aguardar o resultado da operação assíncrona
    Completer<Widget> completer = Completer();

    // Aguarde o Future.delayed e então resolva o Completer com o widget desejado
    await Future.delayed(const Duration(milliseconds: 300)).then(
      (value) {
        completer.complete(
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Observer(
                  builder: (_) => OptionsWidget(
                    favorite: listGame[index].favorite!,
                    onTapFavorite: () {
                      changeFavoriteValue(index);
                    },
                    onTapDetails: () {
                      _routeController
                          .goToDetails(listGame[index].description!);
                    },
                  ),
                ),
              );
            },
          ),
        );
      },
    );

    // Retorne o valor completo do Completer
    return completer.future;
  }
}
