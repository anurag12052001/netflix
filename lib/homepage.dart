// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var Pgcontroller = PageController();

  List<String> images = [
    "assets/movie1.jpg",
    "assets/movie2.jpg",
    "assets/movie3.jpg",
    "assets/movie4.jpg",
    "assets/movie5.jpg",
    "assets/movie6.jpg",
    "assets/movie7.jpg",
  ];

  List<String> oldmovies = [
    "assets/old1.jpg",
    "assets/old2.jpg",
    "assets/old3.jpg",
    "assets/old4.jpg",
    "assets/old5.jpg",
    "assets/old6.jpg",
    "assets/old7.jpg",
    "assets/old8.jpg",
  ];
  List<String> Tamil = [
    "assets/tamil1.jpg",
    "assets/tamil2.jpg",
    "assets/tamil3.jpg",
    "assets/tamil4.jpg",
    "assets/tamil5.jpg",
  ];

  List<String> webseries = [
    "assets/series1.jpg",
    "assets/series2.jpg",
    "assets/series3.jpg",
    "assets/series4.jpg",
    "assets/series5.jpg",
  ];
  int pagenumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 70,
          backgroundColor: Colors.black,
          flexibleSpace: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                width: 0,
              ),
              Image(
                image: AssetImage("assets/logo.jpg"),
                alignment: Alignment.bottomRight,
                height: 60,
                width: 60,
              ),
              SizedBox(
                width: 40,
                height: 50,
              ),
              // Text("TVShows          Movies            MyList",
              Text("TVShows Movies MyList",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 20)),
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Popular on Netflix",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),

                // Container(
                //   color: Colors.black,
                //   child: SizedBox(
                //     height: 600,
                //     width: double.infinity,
                //     child: ListView.builder(
                //         itemCount: images.length,
                //         scrollDirection: Axis.horizontal,
                //         // reverse: false,   // it will stop sliding
                //         itemBuilder: (context, index) => Container(
                //               color: Colors.amber,
                //               height: 100,
                //               width: 300,
                //               margin: EdgeInsets.all(40),
                //               child: Image.asset(
                //                 images[index],
                //                 fit: BoxFit.fill,
                //               ),
                //             )),
                //   ),
                // ),

                CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index, index1) {
                      return Container(
                        color: Colors.amber,
                        height: (MediaQuery.of(context).size.height),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(40),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                        ),
                      );
                    },
                    options: CarouselOptions(
                        height: (MediaQuery.of(context).size.height) - 250,
                        autoPlay: true)),

                // old movies
                Container(
                  color: Colors.black,
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Old Movies",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: oldmovies.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            color: Colors.amber,
                            height: 100,
                            width: 150,
                            margin: EdgeInsets.all(5),
                            child: Image.asset(
                              oldmovies[index],
                              fit: BoxFit.fill,
                            ),
                          )),
                ),

                // tamil movies
                Container(
                  color: Colors.black,
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Tamil Movies",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: Tamil.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            color: Colors.amber,
                            height: 100,
                            width: 150,
                            margin: EdgeInsets.all(5),
                            child: Image.asset(
                              Tamil[index],
                              fit: BoxFit.fill,
                            ),
                          )),
                ),

                // series

                Container(
                  color: Colors.black,
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Series",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: webseries.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            color: Colors.amber,
                            height: 100,
                            width: 150,
                            margin: EdgeInsets.all(5),
                            child: Image.asset(
                              webseries[index],
                              fit: BoxFit.fill,
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// child: Column(
//   children: [
//     Container(
//       height: 300,
//       child: PageView.builder(
//           controller: Pgcontroller,
//           onPageChanged: (pageno) {
//             setState(() {
//               pagenumber = pageno;
//             });
//           },
//           itemCount: images.length,
//           itemBuilder: (context, index) {
//             return Container(
//               width: double.infinity,
//               height: 250,
//               child: Image.asset(images[index], fit: BoxFit.fill),
//             );
//           }),
//     ),

// ],
