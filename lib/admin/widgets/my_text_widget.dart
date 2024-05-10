import 'package:flutter/material.dart';
class MyTextWidget extends StatelessWidget {
  final String hintText;
  const MyTextWidget({super.key, required this.hintText,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        decoration: InputDecoration(

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xff003049),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff003049),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText:hintText,
          hintStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
