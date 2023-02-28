import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List img = [
    "assets/images/tshirt.jpg",
    "assets/images/combo.jpg",
    "assets/images/shoes.png",
    "assets/images/hoodie.jpg",
    "assets/images/blazer.jpg",
    "assets/images/boy tshirt.jpg",
    "assets/images/earing.jpg",
    "assets/images/shirt.jpg",
    "assets/images/w-jeans.jpg",
    "assets/images/watch.jpg",
  ];

  List name = [
    "T-shirt",
    "Combo",
    "Shoes",
    "Hoodies",
    "Blazer",
    "Boy T-shirt",
    "Earings",
    "Shirt",
    "Women jeans",
    "Watchs",
  ];

  List star = [
    "3.5",
    "4.7",
    "4.8",
    "3.5",
    "3.2",
    "3.9",
    "4.2",
    "4.5",
    "4.4",
    "4.6",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("FASHION GALLARY"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return product(img[index],name[index],star[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget product(String img,String name,String star) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Image.asset("$img", fit: BoxFit.fill),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 35,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.green),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$star",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.star_border),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(5),
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(19),
                bottomLeft: Radius.circular(18),
              ),
              color: Colors.black26,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "$name",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
