import 'package:flutter/material.dart';
import 'package:kuismobile/login.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


// 9. Boleh menangis tapi jangan sampai ganggu teman sebelahnya.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.pushAndRemoveUntil(
            context, 
            MaterialPageRoute(builder: (context) => LoginPage()), 
            (route) => false,
            );
        },
       child: Image.network('https://archives.bulbagarden.net/media/upload/1/1f/Sword_Shield_Victor.png')),
    );
    //Saya bersumpah mengerjakan soal kuis ini dengan cara yang jujur dan 
    //tidak curang dengan cara apapun
  }
}