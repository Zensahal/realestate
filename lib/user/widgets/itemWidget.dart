import 'package:flutter/material.dart';
import 'package:realestate/user/pages/detail_page.dart';
class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});
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
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: .75,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(img.length, (index) {
        return Container(
            padding: EdgeInsets.only(
              top: 10,
              left: 12,
              right: 12,
            ),
            margin: EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 7,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage(names: properties[index], img: img[index], price: price[index], location: location[index], detail: detail[index],)));

                  },
                  child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(img[index],width: 230,height: 120,)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    properties[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003049),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Image.asset("assets/location.png",width: 10,height: 10,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(location[index]+", "+city[index],
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price[index],
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff003049),
                          fontWeight: FontWeight.bold,
                        ),),
                      Image.asset("assets/favourites.png",width: 20,height: 20,),
                    ],
                  ),
                ),

              ],
            )
        );
      }),
    );
  }
}
