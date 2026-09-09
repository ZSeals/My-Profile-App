import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> hobbies = [
      'Creating 3D Models',
      'Playing Video Games',
      'Web Design',
      'Making/Learning 3D Animation',
      'Watching Anime',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        title: const Text('My Hobbies'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(14),
        itemCount: hobbies.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple.shade100,
                child: Text('${index + 1}'),
              ),
              title: Text(hobbies[index]),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${hobbies[index]} selected'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}