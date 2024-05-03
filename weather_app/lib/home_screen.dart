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
            GestureDetector(
              onTap: (){
                print("Refresh");
              } ,
              child: const Icon(Icons.refresh)
              ),
          ],
      ),
    );
  }
}