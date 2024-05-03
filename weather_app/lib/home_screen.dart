import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            
          ),
          
        
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                // if (kDebugMode) {
                //   print("Hello World");
                // }
              }, 
              icon: const Icon(
                Icons.refresh
                ),
              ),

          ],
      ),
      body: const Column(
        children: [
          // Top card
          Card(
            child: Column(
              children: [
                Text(
                  "300° F"
                  ),
                
              ],
            ),
          ),
          SizedBox(height: 20),
          // forecast cards
          Placeholder(
            fallbackHeight: 150,
          ),
          SizedBox(height: 20),
          //Information tab
          Placeholder(
            fallbackHeight: 150,
          )
        ],
      ),
    );
  }
}