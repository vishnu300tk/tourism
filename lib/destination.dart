import 'package:flutter/material.dart';

class DestinationDetailsScreen extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  const DestinationDetailsScreen({super.key, 
    required this.name,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            image,
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
