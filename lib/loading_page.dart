import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motiva8/liftoff_page.dart';
import 'package:motiva8/widgets/astroboy_animation_widget.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LiftoffPage())));
  }

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
                AstroBoyAnimation(),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "LOADING... ",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(91, 94, 117, 1.0),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "It always seems impossible",
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "Until it's done",
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Nelson Mandela",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(91, 94, 117, 1.0), fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
