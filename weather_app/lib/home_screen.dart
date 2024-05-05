import 'dart:ui';
import 'package:weather_app/weather_items.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Top card
            SizedBox(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                elevation: 16,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            "300° F",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 16),
                            Icon(
                              Icons.cloud,
                              size: 66 
                              ,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Rain',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Weather Forecast',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
              
                ),
              ),
            ),
            const SizedBox(height: 16,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                HourlyForecastWidget(),
                HourlyForecastWidget(),
                HourlyForecastWidget(),
                HourlyForecastWidget(),
                HourlyForecastWidget(),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            //Information tab
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Additional Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
              
                ),
              ),
            ),
            const SizedBox(height: 16,),
            const Row(
              children: [
                AdditionalInfoWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AdditionalInfoWidget extends StatelessWidget {
  const AdditionalInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.water_drop,
          size: 32,
          ),
          SizedBox(height: 8,),
          Text(
            'Humidity',
            style: TextStyle(
              // fontSize: 20,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            '321.23',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
    
      ],
    );
  }
}
