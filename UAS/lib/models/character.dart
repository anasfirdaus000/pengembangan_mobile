class Pokemon {
  final String name;
  final String url;
  final int? height;
  final int? weight;
  final String? imageUrl;

  Pokemon({
    required this.name,
    required this.url,
    this.height,
    this.weight,
    this.imageUrl,
  });

  // Untuk LIST
  factory Pokemon.fromListJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      url: json['url'],
    );
  }

  // Untuk DETAIL
  factory Pokemon.fromDetailJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      url: '',
      height: json['height'],
      weight: json['weight'],
      imageUrl: json['sprites']['front_default'],
    );
  }
}
