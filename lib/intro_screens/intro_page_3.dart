import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                "assets/splash/map.png",
                height: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                " Our Branches ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w900, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Bangalore , Madurai \n Our Branches Connecting Possibilities, One Byte at a Time ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
