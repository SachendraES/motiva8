import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motiva8/widgets/goal_toggle_widget.dart';

class SignUpGoal extends StatelessWidget {
  const SignUpGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(9, 12, 48, 1.0),
        body: SafeArea(
          minimum: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_sharp,
                      color: Color.fromRGBO(91, 94, 117, 1.0),
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 300,
                          height: 18,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(91, 94, 117, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 18,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 178, 0, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What is your goal with Motiva8?",
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                GoalToggle(),
                SizedBox(height: 180),
                Text(
                  "Let us get to know you!",
                  style: GoogleFonts.rubik(
                      color: Color.fromRGBO(91, 94, 117, 1.0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print("pressed");
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
