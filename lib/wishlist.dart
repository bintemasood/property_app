import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 40, right: 40, bottom: 40, top: 10),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "WishList",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Image.asset("assets/images/backArrow.png",
                    )
        
                  ],
                ),
        
        //adding pics
        
        //ending pics
        
        
              ),
        Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/home.png",
                    fit: BoxFit.fill,
                  ),
                ),
        
        Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/home2.png",
                    fit: BoxFit.fill,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}