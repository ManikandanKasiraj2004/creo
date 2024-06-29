import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
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
                "assets/splash/app-development.png",
                height: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                " Make Your Services  \nWith Creo",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w900, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Exceeding your expectations, consistently & Embracing \n kindness, one interaction at a time",
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
