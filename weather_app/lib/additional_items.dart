import 'package:flutter/material.dart';


class AdditionalInfoWidget extends StatelessWidget {
  final IconInfo icon;
  const AdditionalInfoWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
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
