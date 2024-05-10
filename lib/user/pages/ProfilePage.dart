import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  List names = [
    "Home",
    "Profile info",
    "Properties",
    "Setting",
    "about",
    "LogOut",
  ];
  List<Icon> icons = [
    Icon(
      Icons.home_filled,
      size: 40,
      color: Color(0xff003049),
    ),
    Icon(
      Icons.person_outline,
      size: 40,
      color: Color(0xff003049),
    ),
    Icon(
      Icons.save_rounded,
      size: 40,
      color: Color(0xff003049),
    ),
    Icon(
      Icons.settings,
      size: 40,
      color: Color(0xff003049),
    ),
    Icon(
      CupertinoIcons.exclamationmark_circle,
      size: 40,
      color: Color(0xff003049),
    ),
    Icon(
      Icons.logout,
      size: 40,
      color: Color(0xff003049),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 50,
        ),
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/profile.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mohamed Ali",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff003049),
                    ),
                  ),
                  Text(
                    "Renter",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003049),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 100,
          ),
          SizedBox(
            height: 450,
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: icons[index],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      names[index],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
