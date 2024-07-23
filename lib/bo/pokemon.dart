import 'package:project/bo/stats.dart';
import 'package:project/bo/types.dart';

class Pokemon {
  int id;
  int pokedexId;
  String name;
  String image;
  String sprite;
  // Stats stats;
  // List<Types> types;
  int apiGeneration;

  Pokemon({
    required this.id,
    required this.pokedexId,
    required this.name,
    required this.image,
    required this.sprite,
    // required this.stats,
    // required this.types,
    required this.apiGeneration,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'pokedexId': this.pokedexId,
      'name': this.name,
      'image': this.image,
      'sprite': this.sprite,
      // 'stats': this.stats,
      // 'types': this.types,
      'apiGeneration': this.apiGeneration,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'] as int,
      pokedexId: map['pokedexId'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      sprite: map['sprite'] as String,
      // stats: map['stats'] as Stats,
      // types: map['types'] as List<Types>,
      apiGeneration: map['apiGeneration'] as int,
    );
  }
}