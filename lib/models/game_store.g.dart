// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameStore on GameStoreBase, Store {
  late final _$nameAtom = Atom(name: 'GameStoreBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: 'GameStoreBase.description', context: context);

  @override
  String? get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String? value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$gameplayLinkAtom =
      Atom(name: 'GameStoreBase.gameplayLink', context: context);

  @override
  String? get gameplayLink {
    _$gameplayLinkAtom.reportRead();
    return super.gameplayLink;
  }

  @override
  set gameplayLink(String? value) {
    _$gameplayLinkAtom.reportWrite(value, super.gameplayLink, () {
      super.gameplayLink = value;
    });
  }

  late final _$imagePathAtom =
      Atom(name: 'GameStoreBase.imagePath', context: context);

  @override
  String? get imagePath {
    _$imagePathAtom.reportRead();
    return super.imagePath;
  }

  @override
  set imagePath(String? value) {
    _$imagePathAtom.reportWrite(value, super.imagePath, () {
      super.imagePath = value;
    });
  }

  late final _$favoriteAtom =
      Atom(name: 'GameStoreBase.favorite', context: context);

  @override
  bool? get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(bool? value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  late final _$expandAtom =
      Atom(name: 'GameStoreBase.expand', context: context);

  @override
  bool get expand {
    _$expandAtom.reportRead();
    return super.expand;
  }

  @override
  set expand(bool value) {
    _$expandAtom.reportWrite(value, super.expand, () {
      super.expand = value;
    });
  }

  late final _$ratingAtom =
      Atom(name: 'GameStoreBase.rating', context: context);

  @override
  double? get rating {
    _$ratingAtom.reportRead();
    return super.rating;
  }

  @override
  set rating(double? value) {
    _$ratingAtom.reportWrite(value, super.rating, () {
      super.rating = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
description: ${description},
gameplayLink: ${gameplayLink},
imagePath: ${imagePath},
favorite: ${favorite},
expand: ${expand},
rating: ${rating}
    ''';
  }
}
