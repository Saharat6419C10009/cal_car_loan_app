// ignore_for_file: unused_import, prefer_const_constructors

import 'package:cal_car_loan_app/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: IntroductionScreen(
        scrollPhysics: ScrollPhysics(),
        globalBackgroundColor: Colors.deepOrange[50],
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Renuault Triber",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "View the latest Triber images. Triber car has 616 images of its interior, exterior and 360-degree views. Also, Renault Triber is available in 10 different colours.",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            image: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/car1.jpg",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Toyota Frtuner",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "Instead of having to buy an entire share, invest any amount you want.",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            image: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/car2.jpg",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Hyundai Venue",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "View the latest Venue images. Venue car has 229 images of its interior and exterior. Also, Hyundai Venue is available in 7 different colours.",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            image: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/car3.jpg",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Maruti Suzuki Fronx",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "View the latest Fronx images. Fronx car has 139 images of its interior and exterior. Also, Maruti Suzuki Fronx is available in 9 different colours.",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            image: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/car4.jpg",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Mahindra Thar",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "View the latest Thar images. Thar car has 606 images of its interior, exterior and 360-degree views. Also, Mahindra Thar is available in 6 different colours.",
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            image: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/car5.jpg",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: GoogleFonts.kanit(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            color: Colors.deepOrange,
          ),
        ),
        onSkip: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          );
        },
        dotsDecorator: DotsDecorator(
          size: Size(
            MediaQuery.of(context).size.width * 0.025,
            MediaQuery.of(context).size.width * 0.025,
          ),
          color: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.width * 0.025,
          ),
          activeColor: Colors.deepOrange,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.deepOrange,
        ),
        nextFlex: 0,
        done: Text(
          "Getting Stared",
          style: GoogleFonts.kanit(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            color: Colors.deepOrange,
          ),
        ),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          );
        },
      ),
    );
  }
}
