import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Weather App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              
            ),
            
          
            ),
        ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                if (kDebugMode) {
                  print("Hello World");
                }
              }, 
              icon: const Icon(
                Icons.refresh
                ),
              ),

          ],
      ),
    );
  }
}