import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AdminDrawer extends StatelessWidget {
  AdminDrawer({super.key});
  List names=[
    "Properties",
    "Rented",
    "Users",
    "LogOut",
  ];
  List<Icon> icons=[
    Icon(Icons.other_houses_outlined,size: 40,
      color: Colors.white,),
    Icon(Icons.bedroom_parent_outlined,size: 40,
      color: Colors.white,),
    Icon(Icons.people_alt,size: 40,
      color: Colors.white,),
    Icon(Icons.logout,size: 40,
      color: Colors.white,),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff003049).withOpacity(.7),
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 50,
        ),
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: Icon(Icons.person,size: 50,),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nemo mahmud",style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),
                  Text("Admin",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ],
              ),
            ],
          ),
          Divider(
            height: 100,
          ),
          SizedBox(
            height:300,
            child: ListView.builder(itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: icons[index],
                    ),
                    SizedBox(width: 20,),
                    Text(names[index],style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              );
            }),
          ),
          Align(
              alignment:Alignment.bottomCenter,
              child: Text("😊😊😊😊",style: TextStyle(fontSize: 52),)),
        ],
      ),
    );
  }
}
