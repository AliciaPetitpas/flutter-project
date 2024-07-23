class Stats {
  int HP;
  int attack;
  int defense;
  int special_attack;
  int special_defense;
  int speed;

  Stats(
      {
        required this.HP,
        required this.attack,
        required this.defense,
        required this.special_attack,
        required this.special_defense,
        required this.speed
      });

  Map<String, dynamic> toMap() {
    return {
      'HP': this.HP,
      'attack': this.attack,
      'defense': this.defense,
      'special_attack': this.special_attack,
      'special_defense': this.special_defense,
      'speed': this.speed,
    };
  }

  factory Stats.fromMap(Map<String, dynamic> map) {
    return Stats(
      HP: map['HP'] as int,
      attack: map['attack'] as int,
      defense: map['defense'] as int,
      special_attack: map['special_attack'] as int,
      special_defense: map['special_defense'] as int,
      speed: map['speed'] as int,
    );
  }
}