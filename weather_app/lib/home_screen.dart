import 'dart:convert';
import 'dart:ui';
// import 'package:flutter/foundation.dart';
import 'package:weather_app/secrets.dart';
import 'package:weather_app/weather_items.dart';
import 'package:weather_app/additional_items.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double temp = 0;

  

  Future<Map<String, dynamic>> getCurrentWeather() async {
    try {
      String city = 'London';
      final res = await http.get(
        Uri.parse('https://api.openweathermap.org/data/2.5/forecast?q=$city&APPID=$API')
        );

      final data = jsonDecode(res.body);
      if (data['cod']!='200') {
        throw 'An unexpected error occured';
      }

      return data;

        //data['list'][0]['main']['temp'];
        
    

      
    } catch (e) {
      throw "Failed to fetch weather data. Please check your internet connection";
    }

    
    
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
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
            FutureBuilder(
              future: getCurrentWeather(),
              builder: (context, snapshot) {
                // print(snapshot);
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.amberAccent,
                  );
                }

                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }

                final data = snapshot.data!;

                final currentTemp = data['list'][0]['main']['temp'];
                final currentConditionString = data['list'][0]['weather'][0]['main'];
                
        

                return SizedBox(
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
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "$currentTemp K",
                              style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              const SizedBox(height: 16),
                              const Icon(
                                Icons.cloud,
                                size: 66 
                                ,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  currentConditionString,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
              },
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
