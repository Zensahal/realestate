import 'package:flutter/material.dart';
import 'package:realestate/user/pages/detail_page.dart';
class Property extends StatelessWidget {
  const Property({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 320,
        child: ListView.builder(
            itemCount: img.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage(names: properties[index], img: img[index], price: price[index], location: location[index], detail: detail[index],)));
              },
              child: Container(
                width: 310,
                height: 310,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(img[index]),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(properties[index],style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                        Image.asset("assets/favourites.png",width: 20,height: 20,),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/location.png",width: 20,height: 20,),
                        Text(location[index]+", "+city[index],style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(price[index],style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
