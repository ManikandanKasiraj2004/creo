import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
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
                "assets/splash/banner.png",
                height: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                " Start Your Journey  \nWith Creo",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w900, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "On behalf of the leadership team here at Creo , I’m thrilled to welcome you to our team.",
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
