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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: (){
                  if (kDebugMode) {
                    print("Hello World");
                  }
                }, 
                icon: const Icon(
                  Icons.refresh
                  ),
                ),
            ),
          ],
      ),
    );
  }
}