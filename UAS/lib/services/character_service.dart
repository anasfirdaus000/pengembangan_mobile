import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character.dart';

class PokemonService {
  static const String _baseUrl =
      'https://pokeapi.co/api/v2/pokemon';

  // GET LIST
  Future<List<Pokemon>> getPokemonList() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List results = data['results'];

      return results
          .map((e) => Pokemon.fromListJson(e))
          .toList();
    } else {
      throw Exception('Gagal mengambil list pokemon');
    }
  }

  // GET DETAIL
  Future<Pokemon> getPokemonDetail(String name) async {
    final response =
        await http.get(Uri.parse('$_baseUrl/$name'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Pokemon.fromDetailJson(data);
    } else {
      throw Exception('Gagal mengambil detail pokemon');
    }
  }
}
