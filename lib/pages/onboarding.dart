import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:e_commerce/pages/homepage.dart";

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Image.asset('lib/assets/images/logo.webp', width: MediaQuery.of(context).size.width * 0.3),
              SizedBox(height: 20),
              Text(
                "Welcome to WeBBiz",
                style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 20),
              Text(
                "Shop Now | Shop More",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
              ),
              SizedBox(height: 30),
              SvgPicture.asset(
                "lib/assets/images/onboarding_image.svg",
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 120,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
          elevation: 5,
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text("Get Started!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}