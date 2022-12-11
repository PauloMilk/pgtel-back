import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: const [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://cdn1.iconfinder.com/data/icons/user-pictures/100/female1-512.png',
                ),
              ),
              Text(
                "Ariane Alves Leite",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Text(
                "ariane@pgtel.com.br",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
