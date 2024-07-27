import 'package:property_app/detail.dart';
import 'package:property_app/wishlist.dart';
import 'package:flutter/material.dart';

class Property extends StatefulWidget {
  const Property({super.key});

  @override
  State<Property> createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Image.asset("assets/images/title.png"),
        //   actions: [Image.asset("assets/images/back.png")],

        // ),
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 40, right: 40, bottom: 40, top: 10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/title.png"),
                  Image.asset("assets/images/back.png")
                ],
              ),
            ),
            Text(
              "Discover Best",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Suitable Property",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, right: 20, left: 20),
                          backgroundColor: Color.fromARGB(255, 30, 45, 52),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        "House",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detail()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, right: 20, left: 20),
                          backgroundColor: Color.fromARGB(255, 191, 209, 217),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        "Apartment",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 30, 45, 52),
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WishList()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, right: 20, left: 20),
                          backgroundColor: Color.fromARGB(255, 191, 209, 217),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        "Flat",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 30, 45, 52),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Best for you",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 30, 45, 52),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 30),
              //width: double.infinity,
              width:400,
              height: 300,
              child: Image.asset(
                "assets/images/home.png",
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Nearby your location",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 30, 45, 52),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/ranch.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}