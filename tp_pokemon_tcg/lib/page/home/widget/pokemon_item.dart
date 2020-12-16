import 'package:flutter/material.dart';

class PokemonItem extends StatefulWidget {
  @override
  _PokemonItemState createState() => _PokemonItemState();
}

class _PokemonItemState extends State<PokemonItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Pokémon Name'),
      leading: Container(
        height: 64.0,
        width: 64.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/decamark.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      trailing: Text('#000'),
      onTap: () {
        print('Pokémon clicked!');
      },
    );
  }
}
