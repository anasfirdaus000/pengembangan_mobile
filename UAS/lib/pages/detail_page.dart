import 'package:flutter/material.dart';
import '../services/character_service.dart';
import '../models/character.dart';

class DetailPage extends StatefulWidget {
  final String name;

  const DetailPage({super.key, required this.name});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final PokemonService service = PokemonService();

  bool isLoading = true;
  String errorMessage = '';
  Pokemon? pokemon;

  @override
  void initState() {
    super.initState();
    fetchDetail();
  }

  Future<void> fetchDetail() async {
    try {
      pokemon = await service.getPokemonDetail(widget.name);
    } catch (e) {
      errorMessage = 'Gagal mengambil detail Pokémon';
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
        title: Text(pokemon!.name.toUpperCase()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              pokemon!.imageUrl!,
              height: 150,
            ),
            const SizedBox(height: 20),
            Text(
              'Height: ${pokemon!.height}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Weight: ${pokemon!.weight}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
