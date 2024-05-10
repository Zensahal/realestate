import 'package:flutter/material.dart';
import 'package:realestate/user/pages/detail_page.dart';
class PropertiesWidget extends StatelessWidget {
  PropertiesWidget({super.key});
  List img=[
    "assets/h1.jpg",
    "assets/h2.jpg",
    "assets/h3.jpg",
    "assets/h4.jpg",
    "assets/h5.jpg",
    "assets/h6.jpg",
    "assets/h7.jpg",
    "assets/h8.jpg",
    "assets/h9.jpg",
    "assets/h10.jpg",
    "assets/h11.jpg",
    "assets/h12.jpg",
    "assets/h13.jpg",
  ];
  List properties=[
    "Single-Family Home",
    "Townhouse",
    "Condominium",
    "Duplex",
    "Triplex",
    "Quadruplex",
    "Bungalow",
    "Cottage",
    "Ranch Style House",
    "Split-Level House",
    "Victorian House",
    "Colonial House",
    "Tudor House",
  ];
  List location=[
    "Buuhoodle ",
    "Afmadow ",
    "Hamar Weyne",
    "Hamar Jajab",
    "Hodan",
    "Abdulaziz",
    "Wardhigley",
    "Shibis",
    "Xaraf ",
    "Jilib ",
    "Las Anod ",
    "Yaqshid",
    "Dharkenley",
  ];
  List city=[
    "Bosaso",
    "Kismayo",
    "Mogadishu",
    "Mogadishu",
    "Mogadishu",
    "Mogadishu",
    "Mogadishu",
    "Mogadishu",
    "Berbera",
    "Kismayo",
    "Bosaso",
    "Mogadishu",
    "Mogadishu",
  ];
  List price=[
    "1,200\$",
    "2,200\$",
    "3,100\$",
    "10,100\$",
    "11,500\$",
    "13,200\$",
    "3,200\$",
    "5,600\$",
    "1,800\$",
    "2,900\$",
    "2,200\$",
    "4,400\$",
    "3,900\$",
  ];
  List detail=[
    "This cozy property boasts three bedrooms and two bathrooms, perfect for a small family.",
    "A spacious abode featuring four bedrooms and three bathrooms, ideal for hosting guests",
    "Experience comfort in this two-bedroom, one-bathroom retreat nestled in a serene ",
    "A luxurious estate offering five bedrooms and four bathrooms, designed for lavish living",
    "Enjoy the convenience of a three-bedroom, two-and-a-half-bathroom home with modern ",
    "This charming property features two bedrooms and one bathroom, ideal for a starter home.",
    "A contemporary residence with four bedrooms and three bathrooms, showcasing elegant design",
    "Unwind in this quaint cottage with two bedrooms and one bathroom, offering a peaceful retreat.",
    "Embrace spacious living in this six-bedroom, four-bathroom estate with stunning views.",
    "Perfect for entertaining, this home boasts five bedrooms and three bathrooms, along with expansive living areas",
    "Discover tranquility in this three-bedroom, two-bathroom haven surrounded by lush greenery.",
    "A stylish urban dwelling with two bedrooms and two bathrooms, offering convenience and comfort.",
    "This inviting property features four bedrooms and two bathrooms, ideal for family gatherings.",
    "Enjoy the ultimate relaxation in this three-bedroom, two-bathroom sanctuary complete with a private backyard.",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
          itemCount: img.length,
          itemBuilder: (context,index){
            return  InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage(
                    names: properties[index],
                    img: img[index],
                    price: price[index],
                    location: location[index],
                    detail: detail[index])));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                height: 130,
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
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 140,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(img[index],fit: BoxFit.cover,)),
                    ),
                    SizedBox(width: 3,height: 6,),
                    Column(
                      children: [
                        Container(
                          width: 220,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(properties[index],style: TextStyle(
                                fontSize: 18,
                              ),),
                              Text(price[index],style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.only(top: 12),
                          width: 220,
                          height: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(location[index],style: TextStyle(
                                fontSize: 16,
                              ),),
                              Row(
                                children: [
                                  Image.asset("assets/favourites.png",width: 20,height: 20,),
                                  SizedBox(width: 2,),
                                  Text("4.3",style: TextStyle(
                                    fontSize: 15,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
