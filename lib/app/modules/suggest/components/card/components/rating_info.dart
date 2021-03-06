import 'package:flutter/material.dart';

class RatingInfo extends StatelessWidget {
  const RatingInfo({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        Text(
          '$rate',
          style: TextStyle(
            fontSize: 16,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 30),
        Text(
          'Tốt ',
          style: TextStyle(
            fontSize: 14,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '- 100 đánh giá',
          style: TextStyle(
            fontSize: 12,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
