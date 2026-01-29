import 'package:flutter/material.dart';
import '../services/character_service.dart';
import '../models/character.dart';
import '../widgets/character_card.dart';
import 'detail_page.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  final PokemonService service = PokemonService();

  bool isLoading = true;
  String errorMessage = '';
  List<Pokemon> pokemonList = [];

  @override
  void initState() {
    super.initState();
    fetchPokemon();
  }

  Future<void> fetchPokemon() async {
    try {
      pokemonList = await service.getPokemonList();
    } catch (e) {
      errorMessage = 'Gagal mengambil data Pokémon';
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (errorMessage.isNotEmpty) {
      return Scaffold(
        body: Center(child: Text(errorMessage)),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokémon List'),
      ),
      body: ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          return CharacterCard(
            pokemon: pokemonList[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailPage(
                    name: pokemonList[index].name,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
