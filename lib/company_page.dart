import 'package:creo/Scrollpage.dart';
import 'package:flutter/material.dart';

import 'Scrollpage2.dart';

void main() => runApp(MaterialApp(
      home: Mainpage(),
    ));

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  // List of asset image paths (replace with your actual image paths)
  List<String> assetImages = [
    'assets/splash/ticket.png',
    'assets/splash/star.png',
    'assets/splash/mobile.png',
    'assets/splash/karaoke.png',
    'assets/splash/ticket.png',
    'assets/splash/star.png',
    'assets/splash/mobile.png',
    'assets/splash/karaoke.png',
    'assets/splash/ticket.png',
    'assets/splash/star.png',
  ];

  // List of corresponding texts for each image (replace with your text content)
  List<String> imageTexts = [
    'Lottery',
    'Treasury',
    'Trivia',
    'Karaoke',
    'Lottery',
    'Treasury',
    'Trivia',
    'Karaoke',
    'Lottery',
    'Treasury',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 34,
            ),
            onPressed: () {},
          ),
          title: Center(
            child: Text(
              'CREO',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Text(
                'Sign In',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Horizontal Scroll View
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      assetImages.length, // Number of asset images in your list
                      (index) => Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    assetImages[
                                        index], // Load image from the asset path in the list
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 2), // Space between image and text
                            Text(
                              imageTexts[index], // Display corresponding text
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Scrollpage(),
                Scrollpage2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
