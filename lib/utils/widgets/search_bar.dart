import 'package:flutter/material.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.hintText,
  }) : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: size.width - actionSize,
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.grey[100],
            hintStyle: TextStyle(color: Colors.grey[600]),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
