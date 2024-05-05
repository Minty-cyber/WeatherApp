import 'package:flutter/material.dart';


class AdditionalInfoWidget extends StatelessWidget {
  final 
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
