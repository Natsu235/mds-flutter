import 'package:flutter/material.dart';
import 'package:tp_pokemon_tcg/page/home/widget/pokemon_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokémon TCG'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // Header Logo
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Search Bar
              Row(
                children: [
                  Expanded(
                    child: Container(height: 80.0),
                  ),
                ],
              ),
              // Pokémon List
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 420.0,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                          PokemonItem(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
