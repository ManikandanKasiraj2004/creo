import 'package:flutter/material.dart';

class Scrollpage2 extends StatefulWidget {
  const Scrollpage2({Key? key}) : super(key: key);

  @override
  State<Scrollpage2> createState() => _ScrollpageState();
}

class _ScrollpageState extends State<Scrollpage2> {
  @override
  Widget build(BuildContext context) {
    // Example asset image paths for demonstration
    List<String> assetPaths = [
      'assets/splash/image.png',
      'assets/splash/image.png',
      'assets/splash/image.png',
      'assets/splash/image.png',
      'assets/splash/image.png',
      'assets/splash/image.png',
      'assets/splash/image.png',
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:
              List.generate(5, (index) => _buildPageItem(index, assetPaths)),
        ),
      ),
    );
  }

  Widget _buildPageItem(int index, List<String> assetPaths) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Container(
        width: 300,
        height: 350, // Adjust width as needed
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    8, 8, 8, 0), // Adjust top padding here
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15), bottom: Radius.circular(10)),
                  child: Image.asset(
                    assetPaths[index % assetPaths.length],
                    // Use modulo to cycle through images
                    height: 200,
                    width: 300, // Adjust width as needed
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'March 28',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                    Text(
                      'CREO Australia Is\nBack',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
