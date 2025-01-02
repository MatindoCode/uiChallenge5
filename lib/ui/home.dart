import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:uichallenge/components/No.dart';
import 'package:uichallenge/components/age.dart';
import 'package:uichallenge/components/choice.dart';
import 'package:uichallenge/components/nav.dart';
import 'package:uichallenge/components/photos.dart';
import 'package:uichallenge/components/price.dart';
import 'package:uichallenge/components/star.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 25),
                child: Container(
                  height: screenHeight / 6,
                  child: Row(
                    children: [
                      Image.asset("assets/appicon.png",
                          width: screenWidth * 0.35,
                          height: screenHeight * 0.4,
                          fit: BoxFit.contain),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Drop.in",
                                  style: TextStyle(
                                      fontSize: 26, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 180,
                                  child: AutoSizeText(
                                    'Lets meditate together.',
                                    style: TextStyle(color: Colors.grey),
          
                                    minFontSize: 12,
                                    maxFontSize: 24,
                                    maxLines:
                                        2, // Optional: Limit the number of lines
                                    overflow: TextOverflow
                                        .ellipsis, // Optional: Show ellipsis if text overflows
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.055),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Price(text: "\$9.99"),
                                CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.more_horiz,
                                        color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth / 25, vertical: 40),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    StarRating(
                      rating: 5,
                    ),
                    Spacer(),
                    Choice(),
                    Spacer(),
                    No(),
                    Spacer(),
                    Age(),
                  ],
                ),
              ),
              const Myphotos(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10),
                child: const Text(" Guide a mother and her child as they embark on a journey through magical architechture, discoverting random shit and random stuff that would make them happy"
                
                , style: TextStyle( height: 1.5, fontSize: 24)),
              )



            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 49, 49, 49),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: NavG(),
          ),
        ));
  }
}
