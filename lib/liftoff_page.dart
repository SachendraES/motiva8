import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motiva8/bottom_navigation.dart';
import 'package:motiva8/reports_page.dart';
import 'package:motiva8/signup_age.dart';

class LiftoffPage extends StatelessWidget {
  const LiftoffPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(9, 12, 48, 1.0),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "And we have a",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(255, 178, 0, 1.0),
                      fontSize: 38,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "lift off!",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(255, 178, 0, 1.0),
                      fontSize: 38,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 100,
                ),
                Image.asset('assets/astroBoyRocket.png'),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "We have designed a journey map ",
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "Just for you.Let us show you around",
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNav()),
                    );
                  },
                  child: Container(
                    width: 351,
                    height: 52,
                    child: Center(
                      child: Text(
                        "CONTINUE",
                        style: GoogleFonts.rubik(
                            color: Color.fromRGBO(9, 12, 48, 1.0),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 178, 0, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
