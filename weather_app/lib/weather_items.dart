import 'package:flutter/material.dart';


class HourlyForecastWidget extends StatelessWidget {
  final String time;
  final IconData icon
  const HourlyForecastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                  elevation: 6,
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Column(
                      children: [
                        Text(
                          '9:00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Icon(
                          Icons.cloud,
                          size: 32,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '300.21',
                          style: TextStyle(
                            // fontSize: 16,
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                );
  }
}