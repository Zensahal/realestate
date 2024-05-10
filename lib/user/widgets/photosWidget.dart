import 'package:flutter/material.dart';
class PhotosWidget extends StatelessWidget {
  const PhotosWidget({super.key});


  @override
  Widget build(BuildContext context) {
    List images=[
      "assets/hh2.jpg",
      "assets/hh22.jpg",
      "assets/hh23.jpg",
      "assets/hh3.jpg",
      "assets/hh32.jpg",
      "assets/hh33.jpg",
    ];
    return SizedBox(
      height: 130,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(30),
          ),
        );
      }),
    );
  }
}
