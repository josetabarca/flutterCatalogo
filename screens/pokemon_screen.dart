import 'package:flutter/material.dart';
import '../services/pokeapi_service.dart';
import '../models/pokemon_model.dart';

class PokemonScreen extends StatefulWidget {
  @override
  _PokemonScreenState createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  final PokeApiService apiService = PokeApiService();
  final TextEditingController _controller = TextEditingController();
  Pokemon? pokemon;
  bool isLoading = false;
  String? error;

  void searchPokemon() async {
    setState(() {
      isLoading = true;
      error = null;
    });
    try {
      final result = await apiService.fetchPokemon(_controller.text.toLowerCase());
      setState(() {
        pokemon = result;
      });
    } catch (e) {
      setState(() {
        error = 'No se encontró el Pokémon';
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buscar Pokémon')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Nombre del Pokémon',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: searchPokemon,
                ),
              ),
            ),
            SizedBox(height: 60),
            if (isLoading) CircularProgressIndicator(),
            if (error != null) Text(error!, style: TextStyle(color: Colors.red)),
            if (pokemon != null)
              Column(
                children: [
                  Image.network(pokemon!.imageUrl),
                  Text('Nombre: ${pokemon!.name}'),
                  Text('Tipos: ${pokemon!.types.join(', ')}'),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
