class Types {
  String name;
  String image;

  Types({
    required this.name,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'image': this.image,
    };
  }

  factory Types.fromMap(Map<String, dynamic> map) {
    return Types(
      name: map['name'] as String,
      image: map['image'] as String,
    );
  }
}