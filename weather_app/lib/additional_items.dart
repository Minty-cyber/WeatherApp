import 'package:flutter/material.dart';


class AdditionalInfoWidget extends StatelessWidget {
  final IconInfo icon;
  final TextLabel label;
  final Value value;

  const AdditionalInfoWidget({
    super.key,
    required this.icon,
    required this.label,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
          ),
          const SizedBox(height: 8,),
          Text(
            label,
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
