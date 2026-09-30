import 'package:flutter/material.dart';
import 'pokemon.dart';
import 'detailpokemon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: 
      (context, index){
        return ListTile(
          onTap: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(pokemon: pokemonList[index],)
              )
            );
          },
          title: Text(pokemonList[index].name),
          subtitle: Text("Typing : ${pokemonList[index].types}"),
          leading: Image.network(pokemonList[index].image, width: 50, height: 50,
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
        );
      });
  }
}