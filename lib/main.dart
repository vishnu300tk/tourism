import 'package:flutter/material.dart';
import 'package:tourism_app/home.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FisrtPage()
      
    );
  }
}
class FisrtPage extends StatelessWidget {
  const FisrtPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text(
          'EXPLORE',
        
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             IconButton(
                icon: const Icon(Icons.travel_explore),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
            Container(
              height: 460, 
              width: 380,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://th.bing.com/th?id=OIP.0v-WEGjMmVEZaStsSILZ0AHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
                  ),
                  fit: BoxFit.cover, 
                ),
              ),
              
            ),
            const SizedBox(
              height: 100,
              width: 100,),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                const Text('home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
