import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:realestate/admin/pages/properties.dart';
import 'package:realestate/admin/widgets/drawer.dart';
class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      drawer: AdminDrawer(),
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.sort,size: 30,)),
        elevation: 5,
        backgroundColor: Colors.white,
        title: Text("Dashboard",style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: ListView(
        children: [
          // users and property
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38,vertical:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Properties()));
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/house.png",width: 60,height: 60,),
                      Text("Property",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003049),
                      ),),Text("19",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003049),
                      ),),

                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Properties()));
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/users.png",width: 60,height: 60,),
                      Text("Users",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003049),
                      ),),
                      Text("22",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003049),
                      ),),

                    ],
                  ),
                ),
              ],
            ),
          ),
          //recent rental
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent Rental",style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Color(0xff003049),
            ),),
          ),
          Flexible(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context,index){
            return  Container(
              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(-10, -10),
                      color: Colors.grey.withOpacity(.1),
                      spreadRadius: 1,
                      blurRadius: 10
                  ),
                  BoxShadow(
                      offset: Offset(10, 10),
                      color: Colors.grey.withOpacity(.1),
                      spreadRadius: 1,
                      blurRadius: 10
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("473698",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff003049),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text("Rented",style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("name",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                      Text("350\$",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Location",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                      Text("Date",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}
