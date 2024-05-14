// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$listGameAtom =
      Atom(name: 'HomeControllerBase.listGame', context: context);

  @override
  ObservableList<GameStore> get listGame {
    _$listGameAtom.reportRead();
    return super.listGame;
  }

  @override
  set listGame(ObservableList<GameStore> value) {
    _$listGameAtom.reportWrite(value, super.listGame, () {
      super.listGame = value;
    });
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void setOrRemoveGameFavorite(int index) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setOrRemoveGameFavorite');
    try {
      return super.setOrRemoveGameFavorite(index);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void expandCardGame(int index) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.expandCardGame');
    try {
      return super.expandCardGame(index);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFavoriteValue(int index) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeFavoriteValue');
    try {
      return super.changeFavoriteValue(index);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listGame: ${listGame}
    ''';
  }
}
