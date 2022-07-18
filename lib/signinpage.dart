import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motiva8/signup_age.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
                  height: 200,
                ),
                Image.asset('assets/astroBoySit.png'),
                SizedBox(
                  height: 25,
                ),
                Image.asset('assets/Motiva8.png'),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Manage Your Motivation To ",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(91, 94, 117, 1.0), fontSize: 18),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "Achieve Your Goals",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(91, 94, 117, 1.0), fontSize: 18),
                ),
                SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpAge()),
                    );
                  },
                  child: Container(
                    width: 351,
                    height: 52,
                    child: Center(
                      child: Text(
                        "SIGNUP WITH GOOGLE",
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
                Text(
                  "By signing in you agree to our Terms of ",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(91, 94, 117, 1.0), fontSize: 16),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "Services And Privacy Policy",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(91, 94, 117, 1.0), fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
