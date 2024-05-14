import 'package:mobx/mobx.dart';

part 'game_store.g.dart';

class GameStore = GameStoreBase with _$GameStore;

abstract class GameStoreBase with Store {
  @observable
  String? name;

  @observable
  String? description;

  @observable
  String? gameplayLink;

  @observable
  String? imagePath;

  @observable
  bool? favorite;

  @observable
  bool expand;

  @observable
  double? rating;

  GameStoreBase({
    this.name,
    this.description,
    this.gameplayLink,
    this.imagePath,
    this.favorite,
    required this.expand,
    this.rating,
  });
}
