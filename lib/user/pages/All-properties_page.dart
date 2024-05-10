import 'package:flutter/material.dart';

import 'package:realestate/user/widgets/all_property.dart';
class AllPropertyPage extends StatefulWidget {
  const AllPropertyPage({super.key});

  @override
  State<AllPropertyPage> createState() => _AllPropertyPageState();
}

class _AllPropertyPageState extends State<AllPropertyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Property",
          style: TextStyle(
              fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
      ),
      body: AllProperty(),
    );
  }
}
