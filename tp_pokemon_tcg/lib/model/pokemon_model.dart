class Pokemon {
  String id;
  String name;
  String imageUrl;
  String nationalPokedexNumber;

  Pokemon(this.id, this.name, this.imageUrl, this.nationalPokedexNumber);

  Pokemon.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.imageUrl = json['imageUrl'];
    this.nationalPokedexNumber = json['nationalPokedexNumber'];
  }
}
