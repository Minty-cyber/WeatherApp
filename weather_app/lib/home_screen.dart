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
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top card
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Text(
                      "300° F",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      
                    
                  ],
                ),
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
      ),
    );
  }
}