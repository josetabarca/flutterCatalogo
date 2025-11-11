import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon_model.dart';

class PokeApiService {
  Future<Pokemon> fetchPokemon(String name) async {
    final url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$name');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Pokemon.fromJson(data);
    } else {
      throw Exception('Error al obtener datos del Pokémon');
    }
  }
}