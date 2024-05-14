// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Game {
  String? name;
  String? description;
  String? gameplayLink;
  String? imagePath;
  bool? favorite;
  bool? expand;
  double? rating;
  Game({
    this.name,
    this.description,
    this.gameplayLink,
    this.imagePath,
    this.favorite,
    this.expand,
    this.rating,
  });

  Game copyWith({
    String? name,
    String? description,
    String? gameplayLink,
    String? imagePath,
    bool? favorite,
    bool? expand,
    double? rating,
  }) {
    return Game(
      name: name ?? this.name,
      description: description ?? this.description,
      gameplayLink: gameplayLink ?? this.gameplayLink,
      imagePath: imagePath ?? this.imagePath,
      favorite: favorite ?? this.favorite,
      expand: expand ?? this.expand,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'gameplayLink': gameplayLink,
      'imagePath': imagePath,
      'favorite': favorite,
      'expand': expand,
      'rating': rating,
    };
  }

  factory Game.fromMap(Map<String, dynamic> map) {
    return Game(
      name: map['name'] != null ? map['name'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      gameplayLink:
          map['gameplayLink'] != null ? map['gameplayLink'] as String : null,
      imagePath: map['imagePath'] != null ? map['imagePath'] as String : null,
      favorite: map['favorite'] != null ? map['favorite'] as bool : null,
      expand: map['expand'] != null ? map['expand'] as bool : null,
      rating: map['rating'] != null ? map['rating'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Game.fromJson(String source) =>
      Game.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Game(name: $name, description: $description, gameplayLink: $gameplayLink, imagePath: $imagePath, favorite: $favorite, expand: $expand, rating: $rating)';
  }

  @override
  bool operator ==(covariant Game other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.description == description &&
        other.gameplayLink == gameplayLink &&
        other.imagePath == imagePath &&
        other.favorite == favorite &&
        other.expand == expand &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        gameplayLink.hashCode ^
        imagePath.hashCode ^
        favorite.hashCode ^
        expand.hashCode ^
        rating.hashCode;
  }
}
