import 'package:flutter/material.dart';

class UniversityImg extends StatelessWidget {
  const UniversityImg({
    Key? key,
    required this.image,
    this.height,
    this.width,
  }) : super(key: key);
  final ImageProvider<Object> image;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(10),
        ),
      ),
      height:height??  size.height * 1 / 7,
      width:width?? size.width / 1.5,
      child: Image(
        image: image,
        fit: BoxFit.cover,
      ),
    );
  }
}
