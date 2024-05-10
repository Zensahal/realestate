import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:realestate/user/widgets/photosWidget.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.names,
    required this.img,
    required this.price,
    required this.location, required this.detail});
  final String names;
  final String img;
  final String price;
  final String location;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          SizedBox(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  AnotherCarousel(
                    images: [
                      AssetImage(img),
                      AssetImage("assets/hh1.jpg"),
                      AssetImage("assets/hh12.jpg"),
                      AssetImage("assets/hh123.jpg"),
                    ],
                    dotSize: 5,
                    indicatorBgPadding: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                          decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(.66),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_back,size: 25,color: Colors.white,),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(.66),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.favorite,size: 25,color: Colors.white,),
                      ),
                    ],
                  ),
                ],
              ),
          ),
          SizedBox(
            width: double.infinity,
            height: 520,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(names,style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff003049),
                        fontWeight: FontWeight.bold,
                      ),),
                      Text(price,style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff003049),
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(location,style: TextStyle(
                        color: Color(0xff003049),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),),
                      Row(
                        children: [
                          Image.asset("assets/favourites.png",width: 20,height: 20,),
                          SizedBox(width: 5,),
                          Text("3.5",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Photos",style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003049),
                  ),),
                ),
                PhotosWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10),
                  child: Text("Property Details",style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003049),
                  ),),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(detail,style: TextStyle(
                    fontSize: 14,
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        width: 170,
                        height: 60,
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Color(0xff003049).withOpacity(.7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Message",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        width: 170,
                        height: 60,
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Color(0xff003049).withOpacity(.45),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
