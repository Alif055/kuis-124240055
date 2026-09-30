// import 'package:flutter/material.dart';
// import 'pokemon.dart';

// class DetailPage extends StatelessWidget {
//   final Pokemon pokemon;
//   const DetailPage({super.key, required this.pokemon});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(pokemon.name),
//       ),



//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(8),
//         child: Image.network(pokemon.image, fit: BoxFit.cover,), 
        
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'pokemon.dart';

class DetailPage extends StatelessWidget {
  final Pokemon pokemon;
  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 179, 0),
        foregroundColor: Colors.white,
        title: Text(
          pokemon.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.network(
                pokemon.image,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            Text('Nama Pokemon : ${pokemon.name}',),
            const SizedBox(height: 24),
            const Text('Detail pokemon:',
            ),
            const Text('Pokemon Types :'),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: pokemon.types.map((activity) {
                return Container(
                  child: Text(
                    activity,
                  ),
                );
              }).toList(),
            ),
            Text('______________________',),
            const SizedBox(height: 8),
            Text('Pokemon ID : ${pokemon.id}',),
            const SizedBox(height: 8),
            Text('Height : ${pokemon.height}',),
            const SizedBox(height: 8),
            Text('Weight : ${pokemon.weight}',),
            const SizedBox(height: 8),
            Text('Ability : ${pokemon.ability}',),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}