

import 'package:flutter/material.dart';
import 'package:tourism_app/destination.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple ,
      appBar: AppBar(
        
        title: const Text('Explore Destinations',
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold),),
       actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () { 
             
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          DestinationCard(
            name: 'PARIS',
            image: 'https://th.bing.com/th/id/OIP.CRzSG_455zhqIXXaA2eP2AHaJ-?pid=ImgDet&w=192&h=258&c=7&dpr=1.5',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DestinationDetailsScreen(
                    name: 'PARIS',
                    description: '7th arrondissement, Paris, Francec:',
                    image: 
                 'https://th.bing.com/th/id/OIP.CRzSG_455zhqIXXaA2eP2AHaJ-?pid=ImgDet&w=192&h=258&c=7&dpr=1.5',
                  ),
                ),
              );
            },
          ),
          DestinationCard(
            name: 'THAJMAHAL',
            image: 'https://th.bing.com/th/id/ORA4.32F17E0F787BB455FE4B4560EF383C54_BAC550AB58146B36?w=200&h=150&o=5&dpr=1.5&pid=Alab',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DestinationDetailsScreen(
                    name: 'THAJMAHAL ',
                    description: '''Tajganj, Agra, Uttar Pradesh 282001
                    ph:01552266931''',
                   image: 
                 'https://th.bing.com/th/id/OIP.C8Ro8fD8ofkwrlk3NIAaegHaEo?w=289&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
                  ),
                ),
              );
            },
          ),
          DestinationCard(
            name: 'DUBAI',
            image: 'https://th.bing.com/th/id/OIP.ZZAlN95g94Ks4PDMTDAo8AHaEK?w=282&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DestinationDetailsScreen(
                    name: 'BURJKHALEEFA ',
                    description: '''Burj Khalifa & Dubai Mall, Dubai, UAE, 00000 Dubai
                           +971 50 000 0000''',
                    image: 
                 'https://th.bing.com/th/id/OIP.BjLR4ZeVNJx2hqnMjghuAwHaE8?w=252&h=189&c=7&r=0&o=5&dpr=1.5&pid=1.7',
                  ),
                ),
              );
            },
          ),
          DestinationCard(
            name: 'GOA',
            image: 'https://www.tripsavvy.com/thmb/8eoduV4QoEzXdx3siv4rS8prXLg=/2121x1414/filters:fill(auto,1)/GettyImages-606353257-5be1ac59c9e77c00519e8ae0.jpg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DestinationDetailsScreen(
                    name: 'Aguada Fort ',
                    description: '''Fort Aguada Rd,Aguada Fort Area,Candolim Goa  403515 
                      ph:5468461261 ''',image: 
                 'https://goa-casitas.com/wp-content/uploads/2019/09/Aguada-Fort-768x432.jpg',
                  
                  ),
                ),
              );
            },
          ),
          
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback onTap;

  const DestinationCard({super.key, required this.name, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              image,
              height: 500,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

