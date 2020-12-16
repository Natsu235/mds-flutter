import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tp_pokemon_tcg/model/pokemon_model.dart';

class PokemonAPI {
  final baseUrl = 'https://api.pokemontcg.io/v1/cards';

  Future<List<Pokemon>> getAllPokemon() async {
    var response = await http.get(baseUrl);

    List<Pokemon> pokemonList;

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResp = jsonDecode(response.body);
      jsonResp.forEach((key, value) {
        for (var data in value) {
          pokemonList.add(Pokemon.fromJson(data));
        }

        pokemonList.forEach((element) {
          print('Pokémon : ' + element.name);
        });
      });

      return pokemonList;
    } else {
      throw Exception('Failed to load Pokémon list.');
    }
  }
}
