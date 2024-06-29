import 'package:flutter/material.dart';

class Scrollpage extends StatefulWidget {
  const Scrollpage({Key? key}) : super(key: key);

  @override
  State<Scrollpage> createState() => _ScrollpageState();
}

class _ScrollpageState extends State<Scrollpage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 200,
        child: PageView.builder(
          itemCount: 1, // You may adjust itemCount as needed
          itemBuilder: (context, position) {
            return _buildPageitem(position);
          },
        ),
      ),
    );
  }

  Widget _buildPageitem(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Do You Want To Receive Notification For \n News,Lottery and more?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 1),
          ),
          SizedBox(height: 20), // Space between text and buttons
          Text(
            'Enable Your Notification Permission In \n Settings',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.white, letterSpacing: 1),
          ),
          SizedBox(height: 20), // Space between text and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your button 1 action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                child: Text('No Thanks', style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your button 2 action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Enable', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
