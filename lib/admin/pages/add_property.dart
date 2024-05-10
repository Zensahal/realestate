import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:realestate/admin/widgets/my_text_widget.dart';
class AddProperty extends StatefulWidget {
  const AddProperty({super.key});

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Property",style: TextStyle(
          fontSize: 22,fontWeight: FontWeight.w500,
          color: Color(0xff003049),
        ),),
      ),
      body: ListView(
        children: [
          Spacer(),
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
            child: Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xff003049),
                  width: 5,
                ),
              ),
              child: Center(child: Image.asset("assets/gallery.png",width: 70,height: 70,)),
            ),
          ),
          MyTextWidget(hintText: "Name"),
          SizedBox(height: 15,),
          MyTextWidget(hintText: "Location"),
          SizedBox(height: 15,),
          MyTextWidget(hintText: "Price"),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Image.asset("assets/gallery.png",width: 50,height: 50,),
                Icon(Icons.add,size: 40,),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  Color(0xff003049),
              ),
              child: Center(child: Text("Add",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),)),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
