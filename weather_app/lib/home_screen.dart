import 'dart:ui';
import 'package:weather_app/weather_items.dart';
import 'package:weather_app/additional_items.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  Future getCurrentWeather() async {
    
  }

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
                color: Colors.amber,
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
                HourlyForecastWidget(
                  time: '09:00',
                  icon: Icons.cloud,
                  temperature: '321.00', 
                ),
                HourlyForecastWidget(
                  time: '09:00',
                  icon: Icons.cloud,
                  temperature: '321.00', 
                ),
                HourlyForecastWidget(
                  time: '03:00',
                  icon: Icons.sunny,
                  temperature: '300.00', 
                ),
                HourlyForecastWidget(
                  time: '12:00',
                  icon: Icons.wind_power,
                  temperature: '231.00', 
                ),
                HourlyForecastWidget(
                  time: '06:00',
                  icon: Icons.sunny,
                  temperature: '390.00', 
                ),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoWidget(
                  icon: Icons.water_drop,
                  label: 'Hunidity',
                  value: '91',
                ),
                AdditionalInfoWidget(
                  icon: Icons.beach_access_outlined,
                  label: 'Pressure',
                  value: '21',
                ),
                AdditionalInfoWidget(
                  icon: Icons.air_sharp,
                  label: 'Wind Speed',
                  value: '32.1',
                ),
                
                
            
              ],
            )
          ],
        ),
      ),
    );
  }
}
